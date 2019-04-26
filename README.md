# eeprom-programmer
An Arduino Nano sketch and schematic for an Atmel 28cx programmer. This is part of my [ROL](https://github.com/yoppeh/rol) 
project.  I specifically designed this for an 8kx8 eeprom (AT28C64B-15PU). If you're using a different size, you'll have to adjust everything 
for the extra/fewer address lines, of course.

The Arduino Nano sketch implements a serial interface to the programmer. It accepts one-letter commands:
- (e)rase - erases the entire chip.
- (f)ill - fills the chip with a repeating pattern from 0 to 255.
- (h)elp - lists all available commands and what they do.
- (l)ock - turns on the software write-protect mechanism of the chip.
- (r)ead - produces a dump of the entire contents of the chip.
- (u)nlock - turns off the software write-protect mechanism of the chip.
- (x)modem - does an x-modem transfer of data to the chip.

[serial](../assets/serial-startup-screenshot.png?raw=true)

Any standard terminal program can be used to talk to the programmer. I use the following:
- [serial](http://www.decisivetactics.com/products/serial/) for the Mac
- [teraterm](https://ttssh2.osdn.jp/index.html.en) for Windows
- [minicom](https://linux.die.net/man/1/minicom) for Linux

The programmer uses standard x-modem, as provided by any respectable terminal program—and certainly all of the
above listed terminal programs, to put binary files onto the eeprom. No other software is required. The programmer
will verify every 64 bytes as they are written (the size of an internal eeprom page).

Although the eeprom chips are supposed to come from the factory unlocked, I've heard stories of some chips being
purchased off ebay that arrive locked. Try doing an unlock on a chip if you have problems writing to it.

I developed this circuit and code on a breadboard:
![breadboard image](../assets/breadboard.png?raw=true)

