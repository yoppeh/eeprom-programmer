/*******************************************************************************
 * eeprom-programmer.ino
 * 
 * Arduino Nano code for the at28c64b-15pu programmer. Note that this code is 
 * specific to the Nano (really, the ATmega328P). If you use this on another 
 * device, either make sure the port mappings are the same or you will need to
 * rewrite most of the code to use the correct mappings.
 *
 * I haven't looked at other EEPROMs, so I don't know how easy/difficult it 
 * would be to adapt this code to one. I'm not even sure if the pinouts for the
 * address lines or page sizes for the block write operations are the same
 * for different sizes of this same chip.
 *
 * The clock speed of the Nano (16MHz) is also assumed for getting the number
 * of nops to use for delays: 1 nop = 1 clock cycle = 1 / speed in MHz. So,
 * in the case of the Nano, 1 nop = 1 / 16000000 = 62.5ns.
 * 
 * Serial port settings:
 *  57600, 8n1, no flow control
 *
 * If you want to use other than 57600, change the SERIAL_BAUD constant below.
 *  
 * Terminal settings:
 *  turn off local echo
 *  Newline receive: LF
 *  Newline transmit: LF
 */


/* These are used in the x-modem protocol */
#define CHAR_SOH                0x01
#define CHAR_EOT                0x04
#define CHAR_ACK                0x06
#define CHAR_NAK                0x15
#define CHAR_ETB                0x17
#define CHAR_CAN                0x18
#define CHAR_C                  0x43

#define XMODEM_RETRIES          10
#define XMODEM_DELAY            2000
#define XMODEM_PACKET_MAX       128

/* Serial commands accepted by the programmer */
#define CMD_ERASE               'e'
#define CMD_FILL                'f'
#define CMD_HELP                'h'
#define CMD_LOCK                'l'
#define CMD_READ                'r'
#define CMD_SIZE                's'
#define CMD_UNLOCK              'u'
#define CMD_VERSION             'v'
#define CMD_XMODEM              'x'

/* Software version
 */
#define VERSION_MAJ             1
#define VERSION_MIN             2
#define VERSION_BLD             0

/* Change this to match whatever baud rate you want to use for the serial 
 * connection. 
 */
#define SERIAL_BAUD             57600

/* Set this to the size, in bytes of the EEPROM. In the case of the at28c64b,
 * it's 8k. 
 */
#define DEFAULT_EEPROM_SIZE     8192
#define PAGE_SIZE               64

/* Milliseconds to wait for a write to complete. */
#define WRITE_DELAY             25


/* Pin assignments
 *
 * These pin assigments correspond to these port mappings on the Atmega328P
 * (and Atmega168):
 *
 * x4HC595 shift registers
 *     PORTC, bit 4 = serial data pin (SER)
 *     PORTC, bit 3 = serial clock pin (SRCLK)
 *     PORTC, bit 2 = serial output enable (/OE)
 *     PORTC, bit 1 = serial read clock (RCLK)
 *     PORTC, bit 0 = reset all (/SRCLR)
 *
 * at28c64b eeprom
 *     PORTB, bit 4 = eeprom output enable (/OE)
 *     PORTB, bit 3 = eeprom chip enable (/CE)
 *     PORTB, bit 2 = eeprom write enable (/WE)
 *     PORTB, bit 1 = I/O7
 *     PORTB, bit 0 = I/O6
 *     PORTD, bit 7 = I/O5
 *     PORTD, bit 6 = I/O4  
 *     PORTD, bit 5 = I/O3
 *     PORTD, bit 4 = I/O2
 *     PORTD, bit 3 = I/O1
 *     PORTD, bit 2 = I/O0
 */
const int srSerialData = A4;
const int srSerialClock = A3;
const int srNotOutputEnable = A2;
const int srReadClock = A1;
const int srNotResetAll = A0;
const int eeNotWriteEnable = 10;
const int eeNotChipEnable = 11;
const int eeNotOutputEnable = 12;
const int eeD0 = 2;
const int eeD1 = 3;
const int eeD2 = 4;
const int eeD3 = 5;
const int eeD4 = 6;
const int eeD5 = 7;
const int eeD6 = 8;
const int eeD7 = 9;

unsigned int eeprom_size = DEFAULT_EEPROM_SIZE;


/* Clear the outputs of all shift registers to 0 by toggling the /srclr line.
 * /SRCLR needs to be low for 120ns, worst case. That's 3 nops, counting a
 * nop as 60ns.
 */
void sr_clear(void)
{
    PORTC = B00000100;
    __asm__ __volatile__ ("nop\n\t");
    __asm__ __volatile__ ("nop\n\t");
    __asm__ __volatile__ ("nop\n\t");
    PORTC = B00000101;
}


/* Setup the shift registers and shift in an address bit. Assumes that the bit
 * in question has already been shifted into bit 4: so, in the same position as
 * the "1" here: 00010000.
 */
void __attribute__((always_inline)) sr_shift_bit(byte bit)
{
    bit &= B00010000;
    // clear clock and data lines
    PORTC = B00000101 | bit;
    __asm__ __volatile__ ("nop\n\t");
    PORTC = B00001101 | bit;
    __asm__ __volatile__ ("nop\n\t");
}


/* Shifts out a given address on the 74HC595s.
 *
 * This is all about speed: no loops, no digitalRead()/Write(), always inline.
 * It's expected that the proper directions for the PORT bits used here are
 * already setup properly. Namely, PORTC bits 3 and 4 should be setup for
 * output.
 *
 * The observant programmer may notice we shift 16 bits onto the address lines.
 * This isn't a problem, even though we only have 13 address lines (on the
 * targetted 8k x 8 chip, chips with more memory, of course, will have more
 * address lines). The upper three bits simply aren't connected to anything and
 * the order in which the bits go out the shift registers guarantees that the
 * lower bits are always in the right place, no matter how many bits are 
 * shifted out. If this ends up being used with a larger EEPROM, then this
 * function at least won't have to be modified.
 */
void __attribute__((always_inline)) sr_address(word address)
{ 
    // disable output
    PORTC |= B00000100;

    // shift the address into the shift registers
    sr_shift_bit(address >> 11);
    sr_shift_bit(address >> 10);
    sr_shift_bit(address >> 9);
    sr_shift_bit(address >> 8);
    sr_shift_bit(address >> 7);
    sr_shift_bit(address >> 6);
    sr_shift_bit(address >> 5);
    sr_shift_bit(address >> 4);
    sr_shift_bit(address >> 3);
    sr_shift_bit(address >> 2);
    sr_shift_bit(address >> 1);
    sr_shift_bit(address);
    sr_shift_bit(address << 1);
    sr_shift_bit(address << 2);
    sr_shift_bit(address << 3);
    sr_shift_bit(address << 4);

    // make sure the clock and data lines are clear
    PORTC = B00000101;
    
    // put the address on the output pins by setting output enable low
    // and setting the read clock high
    PORTC = B00000011;
}


/* Puts a data value onto the data bus. The lower six bits of the data bus go
 * to the upper 6 bits of PORTD. PORTB's lower two bits hold the the upper two
 * bits of data. Again, this is about speed: The function is inline and uses
 * direct PORT writes. It's expected that all data pins are setup as OUTPUT
 * prior to this function being invoked.
 */
void __attribute__((always_inline)) write_data(byte data)
{
    PORTD = ((PORTD & B00000011) | (data << 2));
    PORTB = ((PORTB & B11111100) | (data >> 6));
}


/* Reads the data value in the EEPROM at the address currently on the address
 * pins. Assumes that the I/O lines are already setup as INPUTs and that the
 * /OE line is set properly.
 */
byte __attribute__((always_inline)) read_data(void)
{
    return ((PIND >> 2) | (PINB << 6));
}


/* Set all I/O (data) pins to output 
 */
void io_set_output(void)
{
    // all data pins are outputs
    DDRD |= B11111100;
    DDRB |= B00000011;
}


/* Set all I/O (data) pins to input 
 */
void io_set_input(void)
{
    // all data pins are inputs
    DDRD &= B00000011;
    DDRB &= B11111100;
}


/* Executes the appropriate write sequence to enable the software locking
 * mechanism of the chip. After this function executes, the chip will not
 * recognize writes unless unlock_chip() is called.
 */
int lock_chip(void)
{
    // Setup a known state. Enable chip.
    digitalWrite(eeNotChipEnable, LOW);
    digitalWrite(eeNotOutputEnable, HIGH);
    digitalWrite(eeNotWriteEnable, HIGH);

    // Set data lines to outputs
    io_set_output();

    // aah to address 1555h
    sr_address(0x1555);
    write_data(0xaa);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // 55h to address 0aaah
    sr_address(0x0aaa);
    write_data(0x55);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // a0h to address 1555h
    sr_address(0x1555);
    write_data(0xa0);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    delay(WRITE_DELAY);

    return 1;
}


/* Disables the software write protect mechanism.
 */
int unlock_chip(void)
{
    // Setup a known state. Enable chip.
    digitalWrite(eeNotChipEnable, LOW);
    digitalWrite(eeNotOutputEnable, HIGH);
    digitalWrite(eeNotWriteEnable, HIGH);

    // Set data lines to outputs
    io_set_output();

    // aah to address 1555h
    sr_address(0x1555);
    write_data(0xaa);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // 55h to address 0aaah
    sr_address(0x0aaa);
    write_data(0x55);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // 80h to address 1555h
    sr_address(0x1555);
    write_data(0x80);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // aah to address 1555h
    sr_address(0x1555);
    write_data(0xaa);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // 55h to address 0aaah
    sr_address(0x0aaa);
    write_data(0x55);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    // 20h to address 1555h
    sr_address(0x1555);
    write_data(0x20);
    digitalWrite(eeNotWriteEnable, LOW);
    digitalWrite(eeNotWriteEnable, HIGH);

    delay(WRITE_DELAY);

    return 1;
}


/* Writes a single input byte at a specified address.
 */
int write_byte(word address, byte data) 
{
    // set data lines as outputs
    io_set_output();

    // setup initial chip state
    digitalWrite(eeNotChipEnable, LOW);
    digitalWrite(eeNotOutputEnable, HIGH);
    digitalWrite(eeNotWriteEnable, HIGH);
    
    // set the address pins from the shift registers
    sr_address(address);

    // put the data on the EEPROM's i/o pins
    write_data(data);
    
    // setup the we-controlled write state
    digitalWrite(eeNotWriteEnable, LOW);
    
    // end the write state
    digitalWrite(eeNotWriteEnable, HIGH);

    delay(WRITE_DELAY);
    
    // byte was successfully written
    return 1;
}


/* Write a page of a given length (64 bytes max) at a given address.
 */
int write_page(word address, byte *data, byte len)
{
    // all data pins are outputs
    io_set_output();

    // setup initial state for control lines
    digitalWrite(eeNotChipEnable, LOW);
    digitalWrite(eeNotOutputEnable, HIGH);
    digitalWrite(eeNotWriteEnable, HIGH);

    while (len--) {
        // put address into shift registers
        sr_address(address++);
        // put data byte on EEPROM pins
        write_data(*data++);
        // bring write enable low
        digitalWrite(eeNotWriteEnable, LOW);
        // bring write enable high
        digitalWrite(eeNotWriteEnable, HIGH);
    }

    // turn off write state
    digitalWrite(eeNotWriteEnable, HIGH);
    digitalWrite(eeNotOutputEnable, LOW);

    // wait for updates to be committed to chip
    delay(WRITE_DELAY);
    
    return 1;
}


/* Write an xmodem packet 1 EEPROM page at a time. 
 */
void write_packet(word address, byte *data, word len)
{
    word i;
    
    for (i = 0; i < len; i += PAGE_SIZE, data += PAGE_SIZE) {
        write_page(address + i, data, PAGE_SIZE);
    }
}


/* Very that the received xmodem packet matches what was
 * written to the EEPROM.
 */
int verify_packet(word address, byte *data, word len)
{
    word i;

    for (i = 0; i < len; i++, address++, data++) {
        if (read_byte(address) != *data) {
            return 0;
        }
    }
    return 1;
}


/* Erase the EEPROM by writing all 1s to it. We do it this way, since the
 * hardware isn't there to do a hardware erase. That would require putting
 * a 12 volt line in the circuit, and... why bother...
 */
int erase_eeprom(void)
{
    byte fill[] = {
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    };
    word i;
    for (i = 0; i < eeprom_size; i += PAGE_SIZE) {
        if (i % 1024 == 0) {
            Serial.print(".");
        }
        if (!write_page(i, fill, PAGE_SIZE)) {
            return 0;
        }
    }
    return 1;
}


/* Returns the byte at the given address in the EEPROM.
 */
byte read_byte(word address)
{
    byte data;
    
    digitalWrite(eeNotOutputEnable, HIGH);
    digitalWrite(eeNotWriteEnable, HIGH);
    digitalWrite(eeNotChipEnable, LOW);
    
    // all data pins are inputs
    io_set_input();
   
    sr_address(address);
    
    digitalWrite(eeNotOutputEnable, LOW);
    
    data = read_data();

    digitalWrite(eeNotOutputEnable, HIGH);

    return data;
}


/* Writes a pattern to the EEPROM. The pattern is address = address & 0xff. So,
 * essentially, every address is set to the value of its lower 8 bits. I guess
 * that's the long way to say, it repeats from 0 to 255 until the end of memory.
 */
int write_pattern(void)
{
    byte fill[PAGE_SIZE];
    word i, j;
    for (i = 0; i < eeprom_size; i += PAGE_SIZE) {
        for (j = 0; j < PAGE_SIZE; j++) {
            fill[j] = i + j;
        }
        if (i % 1024 == 0) {
            Serial.print(".");
        }
        if (!write_page(i, fill, PAGE_SIZE)) {
            return 0;
        }
    }
    return 1;
}


/* Reads the entire EEPROM. Prints the data out in the format: 
 * aaaa  xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx xx   ................
 * Where aaaa is the address in hex, xx is 16 bytes of data in hex and 
 * ............... is the ascii representation for each data byte, if it is 
 * printable.
 */
void read_eeprom(void)
{
    char s[6];
    word i, j;
    byte d;
    for (i = 0; i < eeprom_size; i += 16) {
        sprintf(s, "%04x ", i);
        Serial.print(s);
        for (j = 0; j < 16; j++) {
            sprintf(s, " %02x", read_byte(i + j));
            Serial.print(s);
        }
        Serial.print("  ");
        for (j = 0; j < 16; j++) {
            d = read_byte(i + j);
            sprintf(s, "%c", isprint(d) ? d : '.');
            Serial.print(s);
        }
        Serial.println("");
    }
}


/* Display terminal prompt
 */
void show_prompt(void)
{
    Serial.print("> ");
}


/* Display serial command help.
 */
void cmd_help(void)
{
    Serial.println("commands:");
    Serial.print(CMD_ERASE); Serial.println(" - erase the eeprom");
    Serial.print(CMD_FILL); Serial.println(" - fill eeprom with incrementing bytes");
    Serial.print(CMD_HELP); Serial.println(" - help (this) text");
    Serial.print(CMD_LOCK); Serial.println(" - lock the eeprom against writes");
    Serial.print(CMD_READ); Serial.println(" - read and dump eeprom contents");
    Serial.print(CMD_SIZE); Serial.print(" - set the size of the eeprom (currently "); Serial.print(eeprom_size / 1024); Serial.println("k x 8)");
    Serial.print(CMD_VERSION); Serial.println(" - print software version info");
    Serial.print(CMD_UNLOCK); Serial.println(" - unlock eeprom writes");
    Serial.print(CMD_XMODEM); Serial.println(" - xmodem transfer binary file to eeprom");
}

 
/* Initial board setup.
 */
void setup() 
{
    pinMode(srSerialData, OUTPUT);
    pinMode(srSerialClock, OUTPUT);
    pinMode(srNotOutputEnable, OUTPUT);
    pinMode(srReadClock, OUTPUT);
    pinMode(srNotResetAll, OUTPUT);
    pinMode(eeNotWriteEnable, OUTPUT);
    pinMode(eeNotChipEnable, OUTPUT);
    pinMode(eeNotOutputEnable, OUTPUT);
  
    pinMode(LED_BUILTIN, OUTPUT);
    
    pinMode(eeD0, OUTPUT);
    pinMode(eeD1, OUTPUT);
    pinMode(eeD2, OUTPUT);
    pinMode(eeD3, OUTPUT);
    pinMode(eeD4, OUTPUT);
    pinMode(eeD5, OUTPUT);
    pinMode(eeD6, OUTPUT);
    pinMode(eeD7, OUTPUT);
  
    sr_clear();

    digitalWrite(srSerialData, LOW);
    digitalWrite(srSerialClock, LOW);
    digitalWrite(srNotOutputEnable, HIGH);
    digitalWrite(srReadClock, LOW);
    
    digitalWrite(eeNotWriteEnable, HIGH);
    digitalWrite(eeNotChipEnable, LOW);
    digitalWrite(eeNotOutputEnable, HIGH);
    
    Serial.begin(SERIAL_BAUD);
    cmd_help();
    show_prompt();
}


/* Sends the xmodem abort sequence out the serial port.
 */
void abort_xmodem(char *s)
{
    int i;

    for (i = 0; i < 8; i++) {
        Serial.write(CHAR_CAN);
        Serial.flush();
        delay(1000);
    }
    Serial.print("transfer aborted: ");
    Serial.println(s);
    while (Serial.available()) {
        Serial.read();
    }
}


/* Read the next available byte from the serial port.
 */
int read_serial(void)
{
    while (!Serial.available());
    return Serial.read();
}


/* Erase the EEPROM.
 */
void cmd_erase(void)
{
    Serial.print("erasing eeprom ");
    if (!erase_eeprom()) {
        Serial.println(" error");
        return;
    } else {
        Serial.println(" ok");
    }
}


/* Fill the EEPROM with a sequence.
 */
void cmd_fill(void)
{    
    Serial.print("filling eeprom ");
    if (!write_pattern()) {
        Serial.println(" error");
        return;
    } else {
        Serial.println(" ok");
    }
}


/* Lock the chip against writes.
 */
void cmd_lock(void)
{
    Serial.print("locking chip ... ");
    if (lock_chip()) {
        Serial.println("ok");
    } else {
        Serial.println("error");
    }
}


/* Read the entire EEPROM.
 */
void cmd_read(void)
{
    Serial.println("reading eeprom:");
    read_eeprom();
    Serial.println("all addresses read");
}


/* Display size command help 
*/
void cmd_size_help(void)
{
    Serial.println("select new eeprom size:");
    Serial.println("1 - 8k x 8");
    Serial.println("2 - 32k x 8");
    Serial.println("any other key to cancel");
}


/* Set the EEPROM size.
 */
 void cmd_size(void)
 {
    int ch;
    cmd_size_help();
    show_prompt();
    ch = read_serial();
    if (ch == '1') {
        eeprom_size = 8192;
    } else if (ch == '2') {
        eeprom_size = 32768;
    } else {
        Serial.println("");
        return;
    }
    Serial.print("eeprom size set to "); Serial.print(eeprom_size / 1024); Serial.println("k x 8");

 }

 
/* Print software info.
 */
void cmd_version(void)
{
    char version[12];
    Serial.println("software version info:");
    sprintf(version, "%02i\.%02i.%02i", VERSION_MAJ, VERSION_MIN, VERSION_BLD);
    Serial.print("version: ");
    Serial.println(version);
}


/* Disable software write protection.
 */
void cmd_unlock(void)
{
    Serial.print("unlocking chip ... ");
    if (unlock_chip()) {
        Serial.println("ok");
    } else {
        Serial.println("error");
    }
}


/* Begin xmodem transfer to the EEPROM.
 */
void cmd_xmodem(void)
{
    word addr = 0;
    int retry;
    int ch;
    byte pkt_len;
    byte prev_pkt_num = 0;
    byte pkt_num = 1;
    byte remote_pkt_num;
    byte remote_not_pkt_num;
    byte remote_chk;
    byte chk;
    byte error_count = 0;
    static byte packet[XMODEM_PACKET_MAX];
    
    Serial.println("Starting xmodem");
    Serial.println("Start transfer now or press 'z' to abort");
    Serial.println((char *)packet);

    while (1) {
        Serial.write(CHAR_NAK);
        Serial.flush();
        if (Serial.available()) {
            ch = Serial.read();
            if (ch == CHAR_SOH) {
                break;
            } else if (tolower(ch) == 'z') {
                Serial.println("Aborted by user");
                return;
            }
        }
        delay(XMODEM_DELAY);
    }
    
    while (1) {
        // packet number
        remote_pkt_num = read_serial();
        // complement packet number
        remote_not_pkt_num = read_serial();
        // packet
        pkt_len = 0;
        chk = 0;
        while (pkt_len < XMODEM_PACKET_MAX) {
            ch = read_serial();
            packet[pkt_len++] = ch;
            chk += (byte)ch;
        }
        remote_chk = read_serial();
        // make sure data < EEPROM size
        if (addr == eeprom_size) {
            abort_xmodem("image is too large for eeprom");
            return;
        }
        // check complement error
        if (remote_not_pkt_num + remote_pkt_num != 255) {
            Serial.write(CHAR_NAK);
            Serial.flush();
            error_count++;
            goto skip;
        }
        // check duplicate packet
        if (remote_pkt_num == prev_pkt_num) {
            Serial.write(CHAR_ACK);
            Serial.flush();
            error_count = 0;
            goto skip;
        // check out of sequence
        } else if (remote_pkt_num != pkt_num) {
            abort_xmodem("out of sequence");
            return;
        }
        // checksum test
        if (remote_chk != chk) {
            Serial.write(CHAR_NAK);
            Serial.flush();
            error_count++;
            goto skip;
        }
        // no errors, send an ACK and write the pages to the EEPROM 
        write_packet(addr, packet, XMODEM_PACKET_MAX);
        if (!verify_packet(addr, packet, XMODEM_PACKET_MAX)) {
            abort_xmodem("verify failed writing packet, aborting");
            return;
        }
        addr += XMODEM_PACKET_MAX;
        prev_pkt_num = pkt_num;
        pkt_num = remote_pkt_num + 1;
        error_count = 0;
        Serial.write(CHAR_ACK);
        Serial.flush();
skip:   if (error_count == XMODEM_RETRIES) {
            abort_xmodem("too many xmodem errors, aborting");
            return;
        }
        // SOH
        while (1) {
            ch = read_serial();
            if (ch == CHAR_EOT) {
                Serial.write(CHAR_NAK);
                Serial.flush();
                delay(1000);
                ch = read_serial();
                if (ch == CHAR_EOT) {
                    Serial.write(CHAR_ACK);
                    Serial.flush();
                    delay(1000);
                    while (Serial.available()) {
                        Serial.read();
                    }
                    Serial.println("transfer complete");
                    return;
                }
            } else if (ch == CHAR_SOH) {
                break;
            }
        }
    }
}


/* Unknown command.
 */
void cmd_unknown(char cmd)
{
    Serial.print("unknown command: '"); 
    Serial.print(cmd); 
    Serial.println("'");
    Serial.println("use 'h' for help");
}


/* Process the specified command.
 */
void process_cmd(char cmd)
{
    cmd = tolower(cmd);
    Serial.println(cmd);
    
    switch (cmd) {
        case CMD_ERASE:
            cmd_erase();
            break;
        case CMD_FILL:
            cmd_fill();
            break;
        case CMD_HELP:
            cmd_help();
            break;
        case CMD_LOCK:
            cmd_lock();
            break;
        case CMD_READ:
            cmd_read();
            break;
        case CMD_SIZE:
            cmd_size();
            break;
        case CMD_UNLOCK:
            cmd_unlock();
            break;
        case CMD_VERSION:
            cmd_version();
            break;
        case CMD_XMODEM:
            cmd_xmodem();
            break;
        default:
            cmd_unknown(cmd);
            break;
    }
}


/* Process commands from the serial port, output results.
 */
 
void loop() 
{
    process_cmd(read_serial());
    show_prompt();            
}
