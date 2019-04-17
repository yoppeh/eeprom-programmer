EESchema Schematic File Version 4
LIBS:at28c64b-15pu-programmer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC595 U3
U 1 1 5B5F3DF5
P 3000 2550
F 0 "U3" H 3000 3328 50  0000 C CNN
F 1 "74HC595" H 3000 3237 50  0000 C CNN
F 2 "" H 3000 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3000 2550 50  0001 C CNN
	1    3000 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U4
U 1 1 5B5F3E3C
P 3000 4650
F 0 "U4" H 3000 5428 50  0000 C CNN
F 1 "74HC595" H 3000 5337 50  0000 C CNN
F 2 "" H 3000 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3000 4650 50  0001 C CNN
	1    3000 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5B651775
P 3150 1700
F 0 "C2" H 3265 1746 50  0000 L CNN
F 1 ".1uF" H 3265 1655 50  0000 L CNN
F 2 "" H 3188 1550 50  0001 C CNN
F 3 "~" H 3150 1700 50  0001 C CNN
	1    3150 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5B68FEA7
P 5250 2250
F 0 "C4" H 5365 2296 50  0000 L CNN
F 1 ".1uF" H 5365 2205 50  0000 L CNN
F 2 "" H 5288 2100 50  0001 C CNN
F 3 "~" H 5250 2250 50  0001 C CNN
	1    5250 2250
	0    1    1    0   
$EndComp
Entry Wire Line
	8200 4000 8300 4100
Entry Wire Line
	8200 3900 8300 4000
Entry Wire Line
	8200 3800 8300 3900
Entry Wire Line
	8200 3700 8300 3800
Entry Wire Line
	8200 3600 8300 3700
Entry Wire Line
	8200 3500 8300 3600
Entry Wire Line
	8200 3400 8300 3500
Entry Wire Line
	8200 3300 8300 3400
Entry Wire Line
	7050 2250 7150 2150
Entry Wire Line
	7050 2350 7150 2250
Entry Wire Line
	7050 2450 7150 2350
Entry Wire Line
	7050 2550 7150 2450
Entry Wire Line
	7050 2650 7150 2550
Entry Wire Line
	7050 2750 7150 2650
Entry Wire Line
	7050 2850 7150 2750
Entry Wire Line
	3700 2850 3800 2750
Entry Wire Line
	3700 2750 3800 2650
Entry Wire Line
	3700 2650 3800 2550
Entry Wire Line
	3700 2550 3800 2450
Entry Wire Line
	3700 2450 3800 2350
Entry Wire Line
	3700 2350 3800 2250
Entry Wire Line
	3700 2150 3800 2050
Entry Wire Line
	3700 2250 3800 2150
Entry Wire Line
	3700 4650 3800 4550
Entry Wire Line
	3700 4550 3800 4450
Entry Wire Line
	3700 4450 3800 4350
Entry Wire Line
	3700 4350 3800 4250
Entry Wire Line
	3700 4250 3800 4150
Entry Wire Line
	5050 3650 5150 3750
Entry Wire Line
	5050 3550 5150 3650
Entry Wire Line
	5050 3450 5150 3550
Entry Wire Line
	5050 3350 5150 3450
Entry Wire Line
	5050 3250 5150 3350
Entry Wire Line
	5050 3150 5150 3250
Entry Wire Line
	5050 3050 5150 3150
Entry Wire Line
	5050 2950 5150 3050
Entry Wire Line
	5050 2850 5150 2950
Entry Wire Line
	5050 2750 5150 2850
Entry Wire Line
	5050 3750 5150 3850
Entry Wire Line
	5050 3850 5150 3950
Entry Wire Line
	5050 3950 5150 4050
Wire Wire Line
	3400 4950 3400 4850
Wire Wire Line
	3400 4950 3400 5150
Connection ~ 3400 4950
Connection ~ 3400 5150
Wire Wire Line
	3400 4750 3400 4850
Connection ~ 3400 4850
NoConn ~ 5400 4250
NoConn ~ 5400 4350
Wire Wire Line
	3400 5350 3000 5350
Wire Wire Line
	3400 5150 3400 5350
Wire Wire Line
	5400 2450 5050 2450
Wire Wire Line
	5050 2550 5400 2550
Wire Wire Line
	5400 1950 5400 2250
Wire Wire Line
	5050 2650 5400 2650
Text GLabel 5050 2450 0    50   Input ~ 0
eeNotOutputEnable
Text GLabel 5050 2550 0    50   Input ~ 0
eeNotChipEnable
Text GLabel 5050 2650 0    50   Input ~ 0
eeNotWriteEnable
Wire Wire Line
	2600 2150 2400 2150
Text GLabel 2400 2150 0    50   Input ~ 0
srSerialData
Text GLabel 2400 2350 0    50   Input ~ 0
srSerialClock
Text GLabel 2400 4450 0    50   Input ~ 0
srSerialClock
Text GLabel 2400 2450 0    50   Input ~ 0
srNotResetAll
Wire Wire Line
	2600 4550 2400 4550
Text GLabel 2400 4550 0    50   Input ~ 0
srNotResetAll
Wire Wire Line
	2600 2650 2400 2650
Text GLabel 2400 2650 0    50   Input ~ 0
srReadClock
Wire Wire Line
	2600 4750 2400 4750
Text GLabel 2400 4750 0    50   Input ~ 0
srReadClock
Wire Wire Line
	2600 2750 2400 2750
Text GLabel 2400 2750 0    50   Input ~ 0
srNotOutputEnable
Wire Wire Line
	2600 4850 2400 4850
Text GLabel 2400 4850 0    50   Input ~ 0
srNotOutputEnable
Wire Wire Line
	2400 2350 2600 2350
Wire Wire Line
	2400 4450 2600 4450
Wire Wire Line
	2600 2450 2400 2450
Wire Wire Line
	3000 1700 3000 1950
$Comp
L Device:C C3
U 1 1 5B63E470
P 3150 3800
F 0 "C3" H 3265 3846 50  0000 L CNN
F 1 ".1uF" H 3265 3755 50  0000 L CNN
F 2 "" H 3188 3650 50  0001 C CNN
F 3 "~" H 3150 3800 50  0001 C CNN
	1    3150 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 3800 3000 4050
$Comp
L at28c64b-15pu-programmer-rescue:AT28C64B-15PU-eeprom U2
U 1 1 5B6092DD
P 6100 3250
F 0 "U2" H 6100 4620 50  0000 C CNN
F 1 "AT28C64B-15PU" H 6100 4529 50  0000 C CNN
F 2 "DIP254P1524X482-28" H 6100 3250 50  0001 L BNN
F 3 "AT28C64B Series 64 KB _8 K x 8_ 5.5 V High-Performance Parallel EEPROM - DIP-28" H 6100 3250 50  0001 L BNN
F 4 "3.65 USD" H 6100 3250 50  0001 L BNN "Field4"
F 5 "Microchip" H 6100 3250 50  0001 L BNN "Field5"
F 6 "DIP-28 Microchip" H 6100 3250 50  0001 L BNN "Field6"
F 7 "Good" H 6100 3250 50  0001 L BNN "Field7"
F 8 "AT28C64B-15PU" H 6100 3250 50  0001 L BNN "Field8"
	1    6100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1700 3000 1550
Connection ~ 3000 1700
Wire Wire Line
	3000 3800 3000 3650
Connection ~ 3000 3800
Text GLabel 3000 1550 0    50   Input ~ 0
Arduino5V
Text GLabel 3000 3650 0    50   Input ~ 0
Arduino5V
Text GLabel 5400 1950 0    50   Input ~ 0
Arduino5V
Text GLabel 10200 2400 2    50   Output ~ 0
Arduino5V
Text GLabel 8550 2400 0    50   Output ~ 0
srSerialData
Text GLabel 8550 2500 0    50   Output ~ 0
srSerialClock
Text Notes 7350 7500 0    50   ~ 0
Atmel AT28C64B-15PU Programming Circuit
Text Notes 8134 7644 0    50   ~ 0
2019-04-04
Text Notes 10600 7650 0    50   ~ 0
1.0.0
Wire Wire Line
	2600 4250 2450 4250
Wire Wire Line
	2450 4250 2450 3550
Wire Wire Line
	2450 3550 3400 3550
Wire Wire Line
	3400 3050 3400 3550
NoConn ~ 9950 3600
NoConn ~ 9950 2100
NoConn ~ 8550 3200
NoConn ~ 8550 3300
NoConn ~ 8550 2100
NoConn ~ 8550 2200
NoConn ~ 8550 2300
NoConn ~ 9950 4500
Text GLabel 8550 2600 0    50   Output ~ 0
srNotOutputEnable
Text GLabel 8550 2700 0    50   Output ~ 0
srReadClock
Text GLabel 8550 2800 0    50   Output ~ 0
srNotResetAll
Text GLabel 8550 4200 0    50   Output ~ 0
eeNotWriteEnable
Text GLabel 8550 4300 0    50   Output ~ 0
eeNotChipEnable
Text GLabel 8550 4400 0    50   Output ~ 0
eeNotOutputEnable
$Comp
L Device:C C8
U 1 1 5B6E0247
P 10100 2700
F 0 "C8" H 10215 2746 50  0000 L CNN
F 1 ".1uF" H 10215 2655 50  0000 L CNN
F 2 "" H 10138 2550 50  0001 C CNN
F 3 "~" H 10100 2700 50  0001 C CNN
	1    10100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5B63DD59
P 3300 1700
F 0 "#PWR0101" H 3300 1450 50  0001 C CNN
F 1 "GND" V 3305 1572 50  0000 R CNN
F 2 "" H 3300 1700 50  0001 C CNN
F 3 "" H 3300 1700 50  0001 C CNN
	1    3300 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5B659BEB
P 3300 3800
F 0 "#PWR0102" H 3300 3550 50  0001 C CNN
F 1 "GND" V 3305 3672 50  0000 R CNN
F 2 "" H 3300 3800 50  0001 C CNN
F 3 "" H 3300 3800 50  0001 C CNN
	1    3300 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5B65F289
P 3000 5350
F 0 "#PWR0103" H 3000 5100 50  0001 C CNN
F 1 "GND" H 3005 5177 50  0000 C CNN
F 2 "" H 3000 5350 50  0001 C CNN
F 3 "" H 3000 5350 50  0001 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5B66B2ED
P 3000 3250
F 0 "#PWR0104" H 3000 3000 50  0001 C CNN
F 1 "GND" H 3005 3077 50  0000 C CNN
F 2 "" H 3000 3250 50  0001 C CNN
F 3 "" H 3000 3250 50  0001 C CNN
	1    3000 3250
	1    0    0    -1  
$EndComp
Connection ~ 3000 5350
$Comp
L power:GND #PWR0105
U 1 1 5B69C0D9
P 5400 4550
F 0 "#PWR0105" H 5400 4300 50  0001 C CNN
F 1 "GND" V 5405 4422 50  0000 R CNN
F 2 "" H 5400 4550 50  0001 C CNN
F 3 "" H 5400 4550 50  0001 C CNN
	1    5400 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5B6B7446
P 9950 4400
F 0 "#PWR0106" H 9950 4150 50  0001 C CNN
F 1 "GND" V 9955 4272 50  0000 R CNN
F 2 "" H 9950 4400 50  0001 C CNN
F 3 "" H 9950 4400 50  0001 C CNN
	1    9950 4400
	0    -1   -1   0   
$EndComp
Text Label 6800 2250 0    50   ~ 0
data0
Text Label 6800 2350 0    50   ~ 0
data1
Text Label 6800 2450 0    50   ~ 0
data2
Text Label 6800 2550 0    50   ~ 0
data3
Text Label 6800 2650 0    50   ~ 0
data4
Text Label 6800 2750 0    50   ~ 0
data5
Text Label 6800 2850 0    50   ~ 0
data6
Text Label 6800 2950 0    50   ~ 0
data7
Text Label 8300 3400 0    50   ~ 0
data0
Text Label 8300 3500 0    50   ~ 0
data1
Text Label 8300 3600 0    50   ~ 0
data2
Text Label 8300 3700 0    50   ~ 0
data3
Text Label 8300 3800 0    50   ~ 0
data4
Text Label 8300 3900 0    50   ~ 0
data5
Text Label 8300 4000 0    50   ~ 0
data6
Text Label 8300 4100 0    50   ~ 0
data7
Text Label 3400 2150 0    50   ~ 0
addr0
Text Label 3400 2250 0    50   ~ 0
addr1
Text Label 3400 2350 0    50   ~ 0
addr2
Text Label 3400 2450 0    50   ~ 0
addr3
Text Label 3400 2550 0    50   ~ 0
addr4
Text Label 3400 2650 0    50   ~ 0
addr5
Text Label 3400 2750 0    50   ~ 0
addr6
Text Label 3400 2850 0    50   ~ 0
addr7
Text Label 3400 4250 0    50   ~ 0
addr8
Text Label 3400 4350 0    50   ~ 0
addr9
Text Label 3400 4450 0    50   ~ 0
addr10
Text Label 3400 4550 0    50   ~ 0
addr11
Text Label 3400 4650 0    50   ~ 0
addr12
Text Label 5150 2850 0    50   ~ 0
addr0
Text Label 5150 2950 0    50   ~ 0
addr1
Text Label 5150 3050 0    50   ~ 0
addr2
Text Label 5150 3150 0    50   ~ 0
addr3
Text Label 5150 3250 0    50   ~ 0
addr4
Text Label 5150 3350 0    50   ~ 0
addr5
Text Label 5150 3450 0    50   ~ 0
addr6
Text Label 5150 3550 0    50   ~ 0
addr7
Text Label 5150 3650 0    50   ~ 0
addr8
Text Label 5150 3750 0    50   ~ 0
addr9
Text Label 5150 3850 0    50   ~ 0
addr10
Text Label 5150 3950 0    50   ~ 0
addr11
Text Label 5150 4050 0    50   ~ 0
addr12
$Comp
L at28c64b-15pu-programmer-rescue:A000005-Arduino U1
U 1 1 5B609753
P 9250 3200
F 0 "U1" H 9250 4567 50  0000 C CNN
F 1 "ARDUINO NANO" H 9250 4476 50  0000 C CNN
F 2 "ARDUINO_A000005" H 9250 3200 50  0001 L BNN
F 3 "Arduino" H 9250 3200 50  0001 L BNN
F 4 "None" H 9250 3200 50  0001 L BNN "Field4"
F 5 "1050-1001-ND" H 9250 3200 50  0001 L BNN "Field5"
F 6 "MICRO, ARDUINO NANO 3.0, MINI-B USB, ATmega328, 0.1DIP, ICSP HDR" H 9250 3200 50  0001 L BNN "Field6"
F 7 "A000005" H 9250 3200 50  0001 L BNN "Field7"
F 8 "https://www.digikey.com/product-detail/en/arduino/A000005/1050-1001-ND/2638989?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 9250 3200 50  0001 L BNN "Field8"
	1    9250 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	7050 2950 7150 2850
$Comp
L power:GND #PWR0107
U 1 1 5B691171
P 5100 2250
F 0 "#PWR0107" H 5100 2000 50  0001 C CNN
F 1 "GND" V 5105 2122 50  0000 R CNN
F 2 "" H 5100 2250 50  0001 C CNN
F 3 "" H 5100 2250 50  0001 C CNN
	1    5100 2250
	0    1    1    0   
$EndComp
Wire Bus Line
	8200 3300 7150 3300
Wire Wire Line
	6800 2250 7050 2250
Wire Wire Line
	6800 2350 7050 2350
Wire Wire Line
	6800 2450 7050 2450
Wire Wire Line
	6800 2550 7050 2550
Wire Wire Line
	6800 2650 7050 2650
Wire Wire Line
	6800 2750 7050 2750
Wire Wire Line
	6800 2850 7050 2850
Wire Wire Line
	6800 2950 7050 2950
Wire Wire Line
	8300 3400 8550 3400
Wire Wire Line
	8300 3500 8550 3500
Wire Wire Line
	8300 3600 8550 3600
Wire Wire Line
	8300 3700 8550 3700
Wire Wire Line
	8300 3800 8550 3800
Wire Wire Line
	8300 3900 8550 3900
Wire Wire Line
	8300 4000 8550 4000
Wire Wire Line
	8300 4100 8550 4100
Wire Wire Line
	5150 2850 5400 2850
Wire Wire Line
	5150 2950 5400 2950
Wire Wire Line
	5150 3050 5400 3050
Wire Wire Line
	5150 3150 5400 3150
Wire Wire Line
	5150 3250 5400 3250
Wire Wire Line
	5150 3350 5400 3350
Wire Wire Line
	5150 3450 5400 3450
Wire Wire Line
	5150 3550 5400 3550
Wire Wire Line
	5150 3650 5400 3650
Wire Wire Line
	5150 3750 5400 3750
Wire Wire Line
	5150 3850 5400 3850
Wire Wire Line
	5150 3950 5400 3950
Wire Wire Line
	5150 4050 5400 4050
Wire Wire Line
	3400 4650 3700 4650
Wire Wire Line
	3400 4550 3700 4550
Wire Wire Line
	3400 4450 3700 4450
Wire Wire Line
	3400 4350 3700 4350
Wire Wire Line
	3400 4250 3700 4250
Wire Wire Line
	3400 2850 3700 2850
Wire Wire Line
	3400 2750 3700 2750
Wire Wire Line
	3400 2650 3700 2650
Wire Wire Line
	3400 2550 3700 2550
Wire Wire Line
	3400 2450 3700 2450
Wire Wire Line
	3400 2350 3700 2350
Wire Wire Line
	3400 2250 3700 2250
Wire Wire Line
	3400 2150 3700 2150
Wire Bus Line
	5050 3300 3800 3300
Connection ~ 5050 3300
Connection ~ 3800 3300
NoConn ~ 8550 2900
NoConn ~ 8550 3000
NoConn ~ 8550 3100
NoConn ~ 8550 4500
Text Notes 7388 7237 0    50   ~ 0
1
Text Notes 7288 7237 0    50   ~ 0
1
Wire Wire Line
	9950 2400 10100 2400
Wire Wire Line
	10100 2550 10100 2400
Connection ~ 10100 2400
Wire Wire Line
	10100 2400 10200 2400
Wire Wire Line
	10100 2850 10100 3050
$Comp
L power:GND #PWR0108
U 1 1 5CB57A20
P 10100 3050
F 0 "#PWR0108" H 10100 2800 50  0001 C CNN
F 1 "GND" H 10105 2877 50  0000 C CNN
F 2 "" H 10100 3050 50  0001 C CNN
F 3 "" H 10100 3050 50  0001 C CNN
	1    10100 3050
	1    0    0    -1  
$EndComp
Wire Bus Line
	8200 3300 8200 4000
Wire Bus Line
	3800 3300 3800 4550
Wire Bus Line
	5050 2750 5050 3300
Wire Bus Line
	5050 3300 5050 3950
Wire Bus Line
	3800 2050 3800 3300
Wire Bus Line
	7150 2150 7150 3300
$EndSCHEMATC
