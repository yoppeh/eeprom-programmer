EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "AT28C EEPROM Programmer"
Date "2019-04-20"
Rev "a"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5500 1750 0    50   Input ~ 0
Arduino5V
Text GLabel 5500 3950 0    50   Input ~ 0
Arduino5V
Text GLabel 3400 2300 1    50   Output ~ 0
Arduino5V
Wire Wire Line
	5100 4550 4950 4550
Wire Wire Line
	4950 4550 4950 3750
Wire Wire Line
	4950 3750 5900 3750
Text GLabel 2700 4100 0    50   Output ~ 0
eeNotWriteEnable
Text GLabel 2700 4200 0    50   Output ~ 0
eeNotChipEnable
Text GLabel 2700 4300 0    50   Output ~ 0
eeNotOutputEnable
$Comp
L eeprom-programmer:74HC595 U1
U 1 1 5CB78989
P 5500 2750
F 0 "U1" H 5500 3531 50  0000 C CNN
F 1 "74HC595" H 5500 3440 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5500 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5500 2750 50  0001 C CNN
	1    5500 2750
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:74HC595 U2
U 1 1 5CB788C3
P 5500 4950
F 0 "U2" H 5500 5731 50  0000 C CNN
F 1 "74HC595" H 5500 5640 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5500 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5500 4950 50  0001 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0101
U 1 1 5CB823EE
P 5500 3450
F 0 "#PWR0101" H 5500 3200 50  0001 C CNN
F 1 "GND" H 5505 3277 50  0000 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0102
U 1 1 5CB8BC43
P 5900 5450
F 0 "#PWR0102" H 5900 5200 50  0001 C CNN
F 1 "GND" V 5905 5322 50  0000 R CNN
F 2 "" H 5900 5450 50  0001 C CNN
F 3 "" H 5900 5450 50  0001 C CNN
	1    5900 5450
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0103
U 1 1 5CB90901
P 5900 5250
F 0 "#PWR0103" H 5900 5000 50  0001 C CNN
F 1 "GND" V 5905 5122 50  0000 R CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0104
U 1 1 5CB92E73
P 5900 5150
F 0 "#PWR0104" H 5900 4900 50  0001 C CNN
F 1 "GND" V 5905 5022 50  0000 R CNN
F 2 "" H 5900 5150 50  0001 C CNN
F 3 "" H 5900 5150 50  0001 C CNN
	1    5900 5150
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0105
U 1 1 5CB9A445
P 5800 4100
F 0 "#PWR0105" H 5800 3850 50  0001 C CNN
F 1 "GND" V 5805 3972 50  0000 R CNN
F 2 "" H 5800 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0106
U 1 1 5CB9F008
P 5800 1900
F 0 "#PWR0106" H 5800 1650 50  0001 C CNN
F 1 "GND" V 5805 1772 50  0000 R CNN
F 2 "" H 5800 1900 50  0001 C CNN
F 3 "" H 5800 1900 50  0001 C CNN
	1    5800 1900
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C2
U 1 1 5CBA60B6
P 5650 1900
F 0 "C2" V 5902 1900 50  0000 C CNN
F 1 ".1uF" V 5811 1900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5688 1750 50  0001 C CNN
F 3 "~" H 5650 1900 50  0001 C CNN
	1    5650 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1750 5500 1900
Wire Wire Line
	5500 3950 5500 4100
Connection ~ 5500 1900
Wire Wire Line
	5500 1900 5500 2150
$Comp
L eeprom-programmer:C C3
U 1 1 5CBAF261
P 5650 4100
F 0 "C3" V 5902 4100 50  0000 C CNN
F 1 ".1uF" V 5811 4100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5688 3950 50  0001 C CNN
F 3 "~" H 5650 4100 50  0001 C CNN
	1    5650 4100
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C4
U 1 1 5CB78612
P 8000 2450
F 0 "C4" V 8252 2450 50  0000 C CNN
F 1 ".1uF" V 8161 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8038 2300 50  0001 C CNN
F 3 "~" H 8000 2450 50  0001 C CNN
	1    8000 2450
	0    1    1    0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0107
U 1 1 5CB7C1B8
P 8150 2450
F 0 "#PWR0107" H 8150 2200 50  0001 C CNN
F 1 "GND" V 8155 2322 50  0000 R CNN
F 2 "" H 8150 2450 50  0001 C CNN
F 3 "" H 8150 2450 50  0001 C CNN
	1    8150 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 3300 2700
NoConn ~ 3700 4300
NoConn ~ 3700 4400
NoConn ~ 2700 4400
NoConn ~ 2700 3100
NoConn ~ 2700 3200
NoConn ~ 3700 3100
NoConn ~ 3700 3200
NoConn ~ 3100 2700
NoConn ~ 3200 4700
$Comp
L eeprom-programmer:Arduino_Nano_v3.x A1
U 1 1 5CB9F09B
P 3200 3700
F 0 "A1" H 3200 2611 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3200 2520 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3350 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3200 2700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
NoConn ~ 3700 3500
NoConn ~ 3700 4200
Connection ~ 5500 4100
Wire Wire Line
	5500 4100 5500 4350
Wire Wire Line
	7850 2300 7850 2450
Connection ~ 7850 2450
Wire Wire Line
	7850 2450 7850 2700
Text GLabel 7850 2300 0    50   Input ~ 0
Arduino5V
$Comp
L eeprom-programmer:GND #PWR0110
U 1 1 5CB7A404
P 7850 4600
F 0 "#PWR0110" H 7850 4350 50  0001 C CNN
F 1 "GND" H 7855 4427 50  0000 C CNN
F 2 "" H 7850 4600 50  0001 C CNN
F 3 "" H 7850 4600 50  0001 C CNN
	1    7850 4600
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0111
U 1 1 5CB95418
P 5900 5050
F 0 "#PWR0111" H 5900 4800 50  0001 C CNN
F 1 "GND" V 5905 4922 50  0000 R CNN
F 2 "" H 5900 5050 50  0001 C CNN
F 3 "" H 5900 5050 50  0001 C CNN
	1    5900 5050
	0    -1   -1   0   
$EndComp
Text Label 5900 2350 0    50   ~ 0
addr00
Text Label 5900 2450 0    50   ~ 0
addr01
Text Label 5900 2550 0    50   ~ 0
addr02
Text Label 5900 2650 0    50   ~ 0
addr03
Text Label 5900 2750 0    50   ~ 0
addr04
Text Label 5900 2850 0    50   ~ 0
addr05
Text Label 5900 2950 0    50   ~ 0
addr06
Text Label 5900 3050 0    50   ~ 0
addr07
Wire Wire Line
	6200 2350 5900 2350
Wire Wire Line
	6200 2450 5900 2450
Wire Wire Line
	6200 2550 5900 2550
Wire Wire Line
	6200 2650 5900 2650
Wire Wire Line
	6200 2750 5900 2750
Wire Wire Line
	6200 2850 5900 2850
Wire Wire Line
	6200 2950 5900 2950
Wire Wire Line
	6200 3050 5900 3050
Wire Wire Line
	5900 4550 6200 4550
Wire Wire Line
	6200 4750 5900 4750
Wire Wire Line
	6200 4850 5900 4850
Wire Wire Line
	6200 4950 5900 4950
Text Label 5900 4550 0    50   ~ 0
addr08
Text Label 6200 4750 2    50   ~ 0
addr10
Wire Wire Line
	6200 4650 5900 4650
Text Label 6200 4650 2    50   ~ 0
addr09
Text Label 6200 4850 2    50   ~ 0
addr11
Text Label 6200 4950 2    50   ~ 0
addr12
Text Label 8400 3000 0    50   ~ 0
addr00
Text Label 8400 3100 0    50   ~ 0
addr01
Text Label 8400 3200 0    50   ~ 0
addr02
Text Label 8400 3300 0    50   ~ 0
addr03
Text Label 8400 3400 0    50   ~ 0
addr04
Text Label 8400 3500 0    50   ~ 0
addr05
Text Label 8400 3600 0    50   ~ 0
addr06
Text Label 8400 3700 0    50   ~ 0
addr07
Wire Wire Line
	8700 3000 8400 3000
Wire Wire Line
	8700 3100 8400 3100
Wire Wire Line
	8700 3200 8400 3200
Wire Wire Line
	8700 3300 8400 3300
Wire Wire Line
	8700 3400 8400 3400
Text Label 8400 3800 0    50   ~ 0
addr08
Text Label 8700 4000 2    50   ~ 0
addr10
Text Label 8700 3900 2    50   ~ 0
addr09
Text Label 8700 4100 2    50   ~ 0
addr11
Text Label 8700 4200 2    50   ~ 0
addr12
Wire Wire Line
	5900 3250 5900 3750
Wire Wire Line
	8400 3500 8700 3500
Wire Wire Line
	8400 3600 8700 3600
Wire Wire Line
	8400 3700 8700 3700
Wire Wire Line
	8400 3800 8700 3800
Wire Wire Line
	8400 4000 8700 4000
Wire Wire Line
	8400 4100 8700 4100
Wire Wire Line
	8400 4200 8700 4200
Wire Wire Line
	8400 3900 8700 3900
NoConn ~ 7300 4250
NoConn ~ 7300 4350
Entry Bus Bus
	6900 2900 7000 3000
Entry Bus Bus
	6900 3000 7000 3100
Entry Bus Bus
	6900 3100 7000 3200
Entry Bus Bus
	6900 3200 7000 3300
Entry Bus Bus
	6900 3300 7000 3400
Entry Bus Bus
	6900 3400 7000 3500
Entry Bus Bus
	6900 3500 7000 3600
Entry Bus Bus
	6900 3600 7000 3700
Entry Bus Bus
	2300 3800 2400 3900
Entry Bus Bus
	2300 3900 2400 4000
Wire Wire Line
	7300 3400 7000 3400
Wire Wire Line
	7300 3500 7000 3500
Wire Wire Line
	7300 3600 7000 3600
Wire Wire Line
	7300 3700 7000 3700
Text Label 7300 3400 2    50   ~ 0
data4
Text Label 7300 3500 2    50   ~ 0
data5
Text Label 7300 3600 2    50   ~ 0
data6
Text Label 7300 3700 2    50   ~ 0
data7
Entry Bus Bus
	2300 3200 2400 3300
Entry Bus Bus
	2300 3300 2400 3400
Entry Bus Bus
	2300 3400 2400 3500
Entry Bus Bus
	2300 3500 2400 3600
Entry Bus Bus
	2300 3700 2400 3800
Entry Bus Bus
	2300 3600 2400 3700
Wire Wire Line
	2700 3800 2400 3800
Text Label 2700 3800 2    50   ~ 0
data5
Wire Wire Line
	2700 3700 2400 3700
Wire Wire Line
	2700 3600 2400 3600
Wire Wire Line
	2700 3500 2400 3500
Wire Wire Line
	2700 3400 2400 3400
Wire Wire Line
	2700 3300 2400 3300
Text Label 2700 3300 2    50   ~ 0
data0
Text Label 2700 3400 2    50   ~ 0
data1
Text Label 2700 3500 2    50   ~ 0
data2
Text Label 2700 3600 2    50   ~ 0
data3
Text Label 2700 3700 2    50   ~ 0
data4
Wire Wire Line
	2700 3900 2400 3900
Wire Wire Line
	2700 4000 2400 4000
Text Label 2700 3900 2    50   ~ 0
data6
Text Label 2700 4000 2    50   ~ 0
data7
$Comp
L eeprom-programmer:AT28C64B-15PU IC1
U 1 1 5CB76AFF
P 7300 3000
F 0 "IC1" H 7850 3265 50  0000 C CNN
F 1 "AT28C64B-15PU" H 7850 3174 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 8250 3100 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/AT28C64B-15PU.pdf" H 8250 3000 50  0001 L CNN
F 4 "AT28C64B-15PU, Parallel EEPROM Memory 64kbit, Parallel, 150ns 4.5  5.5 V, 28-Pin PDIP" H 8250 2900 50  0001 L CNN "Description"
F 5 "4.826" H 8250 2800 50  0001 L CNN "Height"
F 6 "556-AT28C64B15PU" H 8250 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=556-AT28C64B15PU" H 8250 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 8250 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "AT28C64B-15PU" H 8250 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    7300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3000 7000 3000
Wire Wire Line
	7300 3100 7000 3100
Wire Wire Line
	7300 3200 7000 3200
Wire Wire Line
	7300 3300 7000 3300
Text Label 7300 3000 2    50   ~ 0
data0
Text Label 7300 3100 2    50   ~ 0
data1
Text Label 7300 3200 2    50   ~ 0
data2
Text Label 7300 3300 2    50   ~ 0
data3
Entry Bus Bus
	6200 2350 6300 2450
Entry Bus Bus
	6200 2450 6300 2550
Entry Bus Bus
	6200 2550 6300 2650
Entry Bus Bus
	6200 2650 6300 2750
Entry Bus Bus
	6200 2750 6300 2850
Entry Bus Bus
	6200 2850 6300 2950
Entry Bus Bus
	6200 2950 6300 3050
Entry Bus Bus
	6200 3050 6300 3150
Entry Bus Bus
	6200 4550 6300 4650
Entry Bus Bus
	6200 4650 6300 4750
Entry Bus Bus
	6200 4750 6300 4850
Entry Bus Bus
	6200 4850 6300 4950
Entry Bus Bus
	6200 4950 6300 5050
Entry Bus Bus
	8700 3000 8800 3100
Entry Bus Bus
	8700 3100 8800 3200
Entry Bus Bus
	8700 3200 8800 3300
Entry Bus Bus
	8700 3300 8800 3400
Entry Bus Bus
	8700 3400 8800 3500
Entry Bus Bus
	8700 3500 8800 3600
Entry Bus Bus
	8700 3600 8800 3700
Entry Bus Bus
	8700 3700 8800 3800
Entry Bus Bus
	8700 3800 8800 3900
Entry Bus Bus
	8700 3900 8800 4000
Entry Bus Bus
	8700 4000 8800 4100
Entry Bus Bus
	8700 4100 8800 4200
Entry Bus Bus
	8700 4200 8800 4300
Wire Bus Line
	8800 5050 6300 5050
Text GLabel 7300 3950 0    50   Input ~ 0
eeNotWriteEnable
Text GLabel 7300 3850 0    50   Input ~ 0
eeNotChipEnable
Text GLabel 7300 4050 0    50   Input ~ 0
eeNotOutputEnable
Wire Bus Line
	2300 1550 6900 1550
$Comp
L eeprom-programmer:GND #PWR0112
U 1 1 5CB89790
P 5500 5650
F 0 "#PWR0112" H 5500 5400 50  0001 C CNN
F 1 "GND" H 5505 5477 50  0000 C CNN
F 2 "" H 5500 5650 50  0001 C CNN
F 3 "" H 5500 5650 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
Text GLabel 5100 2350 0    50   Input ~ 0
srSerialData
Text GLabel 3700 4100 2    50   Output ~ 0
srSerialData
Text GLabel 5100 4750 0    50   Input ~ 0
srSerialClock
Text GLabel 5100 2550 0    50   Input ~ 0
srSerialClock
Text GLabel 3700 4000 2    50   Output ~ 0
srSerialClock
Text GLabel 3700 3900 2    50   Output ~ 0
srNotOutputEnable
Text GLabel 5100 2950 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 5100 5150 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 3700 3800 2    50   Output ~ 0
srReadClock
Text GLabel 5100 5050 0    50   Input ~ 0
srReadClock
Text GLabel 5100 2850 0    50   Input ~ 0
srReadClock
Text GLabel 5100 4850 0    50   Input ~ 0
srNotResetAll
Text GLabel 5100 2650 0    50   Input ~ 0
srNotResetAll
Text GLabel 3700 3700 2    50   Output ~ 0
srNotResetAll
Wire Wire Line
	3300 4700 3300 5100
$Comp
L eeprom-programmer:GND #PWR0108
U 1 1 5CB8A3C0
P 3300 5100
F 0 "#PWR0108" H 3300 4850 50  0001 C CNN
F 1 "GND" V 3305 4972 50  0000 R CNN
F 2 "" H 3300 5100 50  0001 C CNN
F 3 "" H 3300 5100 50  0001 C CNN
	1    3300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CBB9FE9
P 3700 2500
F 0 "#PWR0109" H 3700 2250 50  0001 C CNN
F 1 "GND" V 3705 2372 50  0000 R CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	0    -1   -1   0   
$EndComp
Connection ~ 3400 2500
Wire Wire Line
	3400 2300 3400 2500
$Comp
L eeprom-programmer:C C1
U 1 1 5CB9E54E
P 3550 2500
F 0 "C1" V 3802 2500 50  0000 C CNN
F 1 ".1uF" V 3711 2500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3588 2350 50  0001 C CNN
F 3 "~" H 3550 2500 50  0001 C CNN
	1    3550 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2500 3400 2700
Wire Bus Line
	2300 1550 2300 3900
Wire Bus Line
	6900 1550 6900 3600
Wire Bus Line
	6300 2450 6300 5050
Wire Bus Line
	8800 3100 8800 5050
$EndSCHEMATC
