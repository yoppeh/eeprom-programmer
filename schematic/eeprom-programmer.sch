EESchema Schematic File Version 4
LIBS:eeprom-programmer-cache
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
Text GLabel 5550 2050 0    50   Input ~ 0
Arduino5V
Text GLabel 5550 4150 0    50   Input ~ 0
Arduino5V
Text GLabel 3450 2600 1    50   Output ~ 0
Arduino5V
Text Notes 7350 7500 0    50   ~ 0
Atmel AT28C64B-15PU Programming Circuit
Text Notes 8134 7644 0    50   ~ 0
2019-04-04
Text Notes 10600 7650 0    50   ~ 0
1.0.0
Wire Wire Line
	5150 4750 5000 4750
Wire Wire Line
	5000 4750 5000 4050
Wire Wire Line
	5000 4050 5950 4050
Text GLabel 2750 4400 0    50   Output ~ 0
eeNotWriteEnable
Text GLabel 2750 4500 0    50   Output ~ 0
eeNotChipEnable
Text GLabel 2750 4600 0    50   Output ~ 0
eeNotOutputEnable
$Comp
L eeprom-programmer:74HC595 U1
U 1 1 5CB78989
P 5550 3050
F 0 "U1" H 5550 3831 50  0000 C CNN
F 1 "74HC595" H 5550 3740 50  0000 C CNN
F 2 "" H 5550 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5550 3050 50  0001 C CNN
	1    5550 3050
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:74HC595 U2
U 1 1 5CB788C3
P 5550 5150
F 0 "U2" H 5550 5931 50  0000 C CNN
F 1 "74HC595" H 5550 5840 50  0000 C CNN
F 2 "" H 5550 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5550 5150 50  0001 C CNN
	1    5550 5150
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB823EE
P 5550 3750
F 0 "#PWR?" H 5550 3500 50  0001 C CNN
F 1 "GND" H 5555 3577 50  0000 C CNN
F 2 "" H 5550 3750 50  0001 C CNN
F 3 "" H 5550 3750 50  0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB8BC43
P 5950 5650
F 0 "#PWR?" H 5950 5400 50  0001 C CNN
F 1 "GND" V 5955 5522 50  0000 R CNN
F 2 "" H 5950 5650 50  0001 C CNN
F 3 "" H 5950 5650 50  0001 C CNN
	1    5950 5650
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB90901
P 5950 5450
F 0 "#PWR?" H 5950 5200 50  0001 C CNN
F 1 "GND" V 5955 5322 50  0000 R CNN
F 2 "" H 5950 5450 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB92E73
P 5950 5350
F 0 "#PWR?" H 5950 5100 50  0001 C CNN
F 1 "GND" V 5955 5222 50  0000 R CNN
F 2 "" H 5950 5350 50  0001 C CNN
F 3 "" H 5950 5350 50  0001 C CNN
	1    5950 5350
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB9A445
P 5850 4300
F 0 "#PWR?" H 5850 4050 50  0001 C CNN
F 1 "GND" V 5855 4172 50  0000 R CNN
F 2 "" H 5850 4300 50  0001 C CNN
F 3 "" H 5850 4300 50  0001 C CNN
	1    5850 4300
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB9F008
P 5850 2200
F 0 "#PWR?" H 5850 1950 50  0001 C CNN
F 1 "GND" V 5855 2072 50  0000 R CNN
F 2 "" H 5850 2200 50  0001 C CNN
F 3 "" H 5850 2200 50  0001 C CNN
	1    5850 2200
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C2
U 1 1 5CBA60B6
P 5700 2200
F 0 "C2" V 5952 2200 50  0000 C CNN
F 1 ".1uF" V 5861 2200 50  0000 C CNN
F 2 "" H 5738 2050 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2050 5550 2200
Wire Wire Line
	5550 4150 5550 4300
Connection ~ 5550 2200
Wire Wire Line
	5550 2200 5550 2450
$Comp
L eeprom-programmer:C C3
U 1 1 5CBAF261
P 5700 4300
F 0 "C3" V 5952 4300 50  0000 C CNN
F 1 ".1uF" V 5861 4300 50  0000 C CNN
F 2 "" H 5738 4150 50  0001 C CNN
F 3 "~" H 5700 4300 50  0001 C CNN
	1    5700 4300
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C4
U 1 1 5CB78612
P 8250 2750
F 0 "C4" V 8502 2750 50  0000 C CNN
F 1 ".1uF" V 8411 2750 50  0000 C CNN
F 2 "" H 8288 2600 50  0001 C CNN
F 3 "~" H 8250 2750 50  0001 C CNN
	1    8250 2750
	0    1    1    0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB7C1B8
P 8400 2750
F 0 "#PWR?" H 8400 2500 50  0001 C CNN
F 1 "GND" V 8405 2622 50  0000 R CNN
F 2 "" H 8400 2750 50  0001 C CNN
F 3 "" H 8400 2750 50  0001 C CNN
	1    8400 2750
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB8A3C0
P 3350 5400
F 0 "#PWR?" H 3350 5150 50  0001 C CNN
F 1 "GND" V 3355 5272 50  0000 R CNN
F 2 "" H 3350 5400 50  0001 C CNN
F 3 "" H 3350 5400 50  0001 C CNN
	1    3350 5400
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB91407
P 3750 2800
F 0 "#PWR?" H 3750 2550 50  0001 C CNN
F 1 "GND" V 3755 2672 50  0000 R CNN
F 2 "" H 3750 2800 50  0001 C CNN
F 3 "" H 3750 2800 50  0001 C CNN
	1    3750 2800
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C1
U 1 1 5CB9E54E
P 3600 2800
F 0 "C1" V 3852 2800 50  0000 C CNN
F 1 ".1uF" V 3761 2800 50  0000 C CNN
F 2 "" H 3638 2650 50  0001 C CNN
F 3 "~" H 3600 2800 50  0001 C CNN
	1    3600 2800
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 3000
Wire Wire Line
	3450 2600 3450 2800
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3450 3000
Wire Wire Line
	3350 5000 3350 5400
NoConn ~ 3750 4600
NoConn ~ 3750 4700
NoConn ~ 2750 4700
NoConn ~ 2750 3400
NoConn ~ 2750 3500
NoConn ~ 3750 3400
NoConn ~ 3750 3500
NoConn ~ 3150 3000
NoConn ~ 3250 5000
$Comp
L eeprom-programmer:Arduino_Nano_v3.x A1
U 1 1 5CB9F09B
P 3250 4000
F 0 "A1" H 3250 2911 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3250 2820 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3400 3050 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3250 3000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
NoConn ~ 3750 3800
NoConn ~ 3750 4500
Connection ~ 5550 4300
Wire Wire Line
	5550 4300 5550 4550
Wire Wire Line
	8100 2600 8100 2750
Connection ~ 8100 2750
Wire Wire Line
	8100 2750 8100 3000
Text GLabel 8100 2600 0    50   Input ~ 0
Arduino5V
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB7A404
P 8100 4900
F 0 "#PWR?" H 8100 4650 50  0001 C CNN
F 1 "GND" H 8105 4727 50  0000 C CNN
F 2 "" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0001 C CNN
	1    8100 4900
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB95418
P 5950 5250
F 0 "#PWR?" H 5950 5000 50  0001 C CNN
F 1 "GND" V 5955 5122 50  0000 R CNN
F 2 "" H 5950 5250 50  0001 C CNN
F 3 "" H 5950 5250 50  0001 C CNN
	1    5950 5250
	0    -1   -1   0   
$EndComp
Text Label 5950 2650 0    50   ~ 0
addr00
Text Label 5950 2750 0    50   ~ 0
addr01
Text Label 5950 2850 0    50   ~ 0
addr02
Text Label 5950 2950 0    50   ~ 0
addr03
Text Label 5950 3050 0    50   ~ 0
addr04
Text Label 5950 3150 0    50   ~ 0
addr05
Text Label 5950 3250 0    50   ~ 0
addr06
Text Label 5950 3350 0    50   ~ 0
addr07
Wire Wire Line
	6250 2650 5950 2650
Wire Wire Line
	6250 2750 5950 2750
Wire Wire Line
	6250 2850 5950 2850
Wire Wire Line
	6250 2950 5950 2950
Wire Wire Line
	6250 3050 5950 3050
Wire Wire Line
	6250 3150 5950 3150
Wire Wire Line
	6250 3250 5950 3250
Wire Wire Line
	6250 3350 5950 3350
Wire Wire Line
	5950 4750 6250 4750
Wire Wire Line
	6250 4950 5950 4950
Wire Wire Line
	6250 5050 5950 5050
Wire Wire Line
	6250 5150 5950 5150
Text Label 5950 4750 0    50   ~ 0
addr08
Text Label 6250 4950 2    50   ~ 0
addr10
Wire Wire Line
	6250 4850 5950 4850
Text Label 6250 4850 2    50   ~ 0
addr09
Text Label 6250 5050 2    50   ~ 0
addr11
Text Label 6250 5150 2    50   ~ 0
addr12
Text Label 8650 3300 0    50   ~ 0
addr00
Text Label 8650 3400 0    50   ~ 0
addr01
Text Label 8650 3500 0    50   ~ 0
addr02
Text Label 8650 3600 0    50   ~ 0
addr03
Text Label 8650 3700 0    50   ~ 0
addr04
Text Label 8650 3800 0    50   ~ 0
addr05
Text Label 8650 3900 0    50   ~ 0
addr06
Text Label 8650 4000 0    50   ~ 0
addr07
Wire Wire Line
	8950 3300 8650 3300
Wire Wire Line
	8950 3400 8650 3400
Wire Wire Line
	8950 3500 8650 3500
Wire Wire Line
	8950 3600 8650 3600
Wire Wire Line
	8950 3700 8650 3700
Text Label 8650 4100 0    50   ~ 0
addr08
Text Label 8950 4300 2    50   ~ 0
addr10
Text Label 8950 4200 2    50   ~ 0
addr09
Text Label 8950 4400 2    50   ~ 0
addr11
Text Label 8950 4500 2    50   ~ 0
addr12
Wire Wire Line
	5950 3550 5950 4050
Wire Wire Line
	8650 3800 8950 3800
Wire Wire Line
	8650 3900 8950 3900
Wire Wire Line
	8650 4000 8950 4000
Wire Wire Line
	8650 4100 8950 4100
Wire Wire Line
	8650 4300 8950 4300
Wire Wire Line
	8650 4400 8950 4400
Wire Wire Line
	8650 4500 8950 4500
Wire Wire Line
	8650 4200 8950 4200
NoConn ~ 7550 4550
NoConn ~ 7550 4650
Entry Bus Bus
	7150 3200 7250 3300
Entry Bus Bus
	7150 3300 7250 3400
Entry Bus Bus
	7150 3400 7250 3500
Entry Bus Bus
	7150 3500 7250 3600
Entry Bus Bus
	7150 3600 7250 3700
Entry Bus Bus
	7150 3700 7250 3800
Entry Bus Bus
	7150 3800 7250 3900
Entry Bus Bus
	7150 3900 7250 4000
Entry Bus Bus
	2350 4100 2450 4200
Entry Bus Bus
	2350 4200 2450 4300
Wire Wire Line
	7550 3700 7250 3700
Wire Wire Line
	7550 3800 7250 3800
Wire Wire Line
	7550 3900 7250 3900
Wire Wire Line
	7550 4000 7250 4000
Text Label 7550 3700 2    50   ~ 0
data4
Text Label 7550 3800 2    50   ~ 0
data5
Text Label 7550 3900 2    50   ~ 0
data6
Text Label 7550 4000 2    50   ~ 0
data7
Entry Bus Bus
	2350 3500 2450 3600
Entry Bus Bus
	2350 3600 2450 3700
Entry Bus Bus
	2350 3700 2450 3800
Entry Bus Bus
	2350 3800 2450 3900
Entry Bus Bus
	2350 4000 2450 4100
Entry Bus Bus
	2350 3900 2450 4000
Wire Wire Line
	2750 4100 2450 4100
Text Label 2750 4100 2    50   ~ 0
data5
Wire Wire Line
	2750 4000 2450 4000
Wire Wire Line
	2750 3900 2450 3900
Wire Wire Line
	2750 3800 2450 3800
Wire Wire Line
	2750 3700 2450 3700
Wire Wire Line
	2750 3600 2450 3600
Text Label 2750 3600 2    50   ~ 0
data0
Text Label 2750 3700 2    50   ~ 0
data1
Text Label 2750 3800 2    50   ~ 0
data2
Text Label 2750 3900 2    50   ~ 0
data3
Text Label 2750 4000 2    50   ~ 0
data4
Wire Wire Line
	2750 4200 2450 4200
Wire Wire Line
	2750 4300 2450 4300
Text Label 2750 4200 2    50   ~ 0
data6
Text Label 2750 4300 2    50   ~ 0
data7
$Comp
L eeprom-programmer:AT28C64B-15PU IC1
U 1 1 5CB76AFF
P 7550 3300
F 0 "IC1" H 8100 3565 50  0000 C CNN
F 1 "AT28C64B-15PU" H 8100 3474 50  0000 C CNN
F 2 "DIP1556W56P254L3702H483Q28N" H 8500 3400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/AT28C64B-15PU.pdf" H 8500 3300 50  0001 L CNN
F 4 "AT28C64B-15PU, Parallel EEPROM Memory 64kbit, Parallel, 150ns 4.5  5.5 V, 28-Pin PDIP" H 8500 3200 50  0001 L CNN "Description"
F 5 "4.826" H 8500 3100 50  0001 L CNN "Height"
F 6 "556-AT28C64B15PU" H 8500 3000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=556-AT28C64B15PU" H 8500 2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 8500 2800 50  0001 L CNN "Manufacturer_Name"
F 9 "AT28C64B-15PU" H 8500 2700 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3300 7250 3300
Wire Wire Line
	7550 3400 7250 3400
Wire Wire Line
	7550 3500 7250 3500
Wire Wire Line
	7550 3600 7250 3600
Text Label 7550 3300 2    50   ~ 0
data0
Text Label 7550 3400 2    50   ~ 0
data1
Text Label 7550 3500 2    50   ~ 0
data2
Text Label 7550 3600 2    50   ~ 0
data3
Entry Bus Bus
	6250 2650 6350 2750
Entry Bus Bus
	6250 2750 6350 2850
Entry Bus Bus
	6250 2850 6350 2950
Entry Bus Bus
	6250 2950 6350 3050
Entry Bus Bus
	6250 3050 6350 3150
Entry Bus Bus
	6250 3150 6350 3250
Entry Bus Bus
	6250 3250 6350 3350
Entry Bus Bus
	6250 3350 6350 3450
Entry Bus Bus
	6250 4750 6350 4850
Entry Bus Bus
	6250 4850 6350 4950
Entry Bus Bus
	6250 4950 6350 5050
Entry Bus Bus
	6250 5050 6350 5150
Entry Bus Bus
	6250 5150 6350 5250
Entry Bus Bus
	8950 3300 9050 3400
Entry Bus Bus
	8950 3400 9050 3500
Entry Bus Bus
	8950 3500 9050 3600
Entry Bus Bus
	8950 3600 9050 3700
Entry Bus Bus
	8950 3700 9050 3800
Entry Bus Bus
	8950 3800 9050 3900
Entry Bus Bus
	8950 3900 9050 4000
Entry Bus Bus
	8950 4000 9050 4100
Entry Bus Bus
	8950 4100 9050 4200
Entry Bus Bus
	8950 4200 9050 4300
Entry Bus Bus
	8950 4300 9050 4400
Entry Bus Bus
	8950 4400 9050 4500
Entry Bus Bus
	8950 4500 9050 4600
Wire Bus Line
	9050 5250 6350 5250
Text GLabel 7550 4250 0    50   Input ~ 0
eeNotWriteEnable
Text GLabel 7550 4150 0    50   Input ~ 0
eeNotChipEnable
Text GLabel 7550 4350 0    50   Input ~ 0
eeNotOutputEnable
Wire Bus Line
	2350 1850 7150 1850
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB89790
P 5550 5850
F 0 "#PWR?" H 5550 5600 50  0001 C CNN
F 1 "GND" H 5555 5677 50  0000 C CNN
F 2 "" H 5550 5850 50  0001 C CNN
F 3 "" H 5550 5850 50  0001 C CNN
	1    5550 5850
	1    0    0    -1  
$EndComp
Text GLabel 5150 2650 0    50   Input ~ 0
srSerialData
Text GLabel 3750 4400 2    50   Output ~ 0
srSerialData
Text GLabel 5150 4950 0    50   Input ~ 0
srSerialClock
Text GLabel 5150 2850 0    50   Input ~ 0
srSerialClock
Text GLabel 3750 4300 2    50   Output ~ 0
srSerialClock
Text GLabel 3750 4200 2    50   Output ~ 0
srNotOutputEnable
Text GLabel 5150 3250 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 5150 5350 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 3750 4100 2    50   Output ~ 0
srReadClock
Text GLabel 5150 5250 0    50   Input ~ 0
srReadClock
Text GLabel 5150 3150 0    50   Input ~ 0
srReadClock
Text GLabel 5150 5050 0    50   Input ~ 0
srNotResetAll
Text GLabel 5150 2950 0    50   Input ~ 0
srNotResetAll
Wire Bus Line
	9050 3400 9050 5250
Wire Bus Line
	6350 2750 6350 5250
Wire Bus Line
	2350 1850 2350 4200
Wire Bus Line
	7150 1850 7150 3900
Text GLabel 3750 4000 2    50   Output ~ 0
srNotResetAll
$EndSCHEMATC
