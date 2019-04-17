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
Text GLabel 9150 3900 2    50   Input ~ 0
eeNotOutputEnable
Text GLabel 9150 4100 2    50   Input ~ 0
eeNotChipEnable
Text GLabel 9150 3400 2    50   Input ~ 0
eeNotWriteEnable
Text GLabel 2000 2600 0    50   Input ~ 0
srSerialData
Text GLabel 2000 2800 0    50   Input ~ 0
srSerialClock
Text GLabel 2000 4900 0    50   Input ~ 0
srSerialClock
Text GLabel 2000 2900 0    50   Input ~ 0
srNotResetAll
Text GLabel 2000 5000 0    50   Input ~ 0
srNotResetAll
Text GLabel 2000 3100 0    50   Input ~ 0
srReadClock
Text GLabel 2000 5200 0    50   Input ~ 0
srReadClock
Text GLabel 2000 3200 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 2000 5300 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 2400 2000 0    50   Input ~ 0
Arduino5V
Text GLabel 2400 4100 0    50   Input ~ 0
Arduino5V
Text GLabel 9150 2900 0    50   Input ~ 0
Arduino5V
Text GLabel 5750 2550 1    50   Output ~ 0
Arduino5V
Text GLabel 6050 4350 2    50   Output ~ 0
srSerialData
Text GLabel 6050 4250 2    50   Output ~ 0
srSerialClock
Text Notes 7350 7500 0    50   ~ 0
Atmel AT28C64B-15PU Programming Circuit
Text Notes 8134 7644 0    50   ~ 0
2019-04-04
Text Notes 10600 7650 0    50   ~ 0
1.0.0
Wire Wire Line
	2000 4700 1850 4700
Wire Wire Line
	1850 4700 1850 4000
Wire Wire Line
	1850 4000 2800 4000
Wire Wire Line
	2800 3500 2800 4000
Text GLabel 6050 4150 2    50   Output ~ 0
srNotOutputEnable
Text GLabel 6050 4050 2    50   Output ~ 0
srReadClock
Text GLabel 6050 3950 2    50   Output ~ 0
srNotResetAll
Text GLabel 5050 4350 0    50   Output ~ 0
eeNotWriteEnable
Text GLabel 5050 4450 0    50   Output ~ 0
eeNotChipEnable
Text GLabel 5050 4550 0    50   Output ~ 0
eeNotOutputEnable
$Comp
L eeprom-programmer:74HC595 U1
U 1 1 5CB78989
P 2400 3000
F 0 "U1" H 2400 3781 50  0000 C CNN
F 1 "74HC595" H 2400 3690 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:74HC595 U2
U 1 1 5CB788C3
P 2400 5100
F 0 "U2" H 2400 5881 50  0000 C CNN
F 1 "74HC595" H 2400 5790 50  0000 C CNN
F 2 "" H 2400 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2400 5100 50  0001 C CNN
	1    2400 5100
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB823EE
P 2400 3700
F 0 "#PWR?" H 2400 3450 50  0001 C CNN
F 1 "GND" H 2405 3527 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB89790
P 2400 5800
F 0 "#PWR?" H 2400 5550 50  0001 C CNN
F 1 "GND" H 2405 5627 50  0000 C CNN
F 2 "" H 2400 5800 50  0001 C CNN
F 3 "" H 2400 5800 50  0001 C CNN
	1    2400 5800
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB8BC43
P 2800 5600
F 0 "#PWR?" H 2800 5350 50  0001 C CNN
F 1 "GND" V 2805 5472 50  0000 R CNN
F 2 "" H 2800 5600 50  0001 C CNN
F 3 "" H 2800 5600 50  0001 C CNN
	1    2800 5600
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB90901
P 2800 5400
F 0 "#PWR?" H 2800 5150 50  0001 C CNN
F 1 "GND" V 2805 5272 50  0000 R CNN
F 2 "" H 2800 5400 50  0001 C CNN
F 3 "" H 2800 5400 50  0001 C CNN
	1    2800 5400
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB92E73
P 2800 5300
F 0 "#PWR?" H 2800 5050 50  0001 C CNN
F 1 "GND" V 2805 5172 50  0000 R CNN
F 2 "" H 2800 5300 50  0001 C CNN
F 3 "" H 2800 5300 50  0001 C CNN
	1    2800 5300
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB95418
P 2800 5200
F 0 "#PWR?" H 2800 4950 50  0001 C CNN
F 1 "GND" V 2805 5072 50  0000 R CNN
F 2 "" H 2800 5200 50  0001 C CNN
F 3 "" H 2800 5200 50  0001 C CNN
	1    2800 5200
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB9A445
P 2700 4250
F 0 "#PWR?" H 2700 4000 50  0001 C CNN
F 1 "GND" V 2705 4122 50  0000 R CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB9F008
P 2700 2150
F 0 "#PWR?" H 2700 1900 50  0001 C CNN
F 1 "GND" V 2705 2022 50  0000 R CNN
F 2 "" H 2700 2150 50  0001 C CNN
F 3 "" H 2700 2150 50  0001 C CNN
	1    2700 2150
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C1
U 1 1 5CBA60B6
P 2550 2150
F 0 "C1" V 2802 2150 50  0000 C CNN
F 1 ".1uF" V 2711 2150 50  0000 C CNN
F 2 "" H 2588 2000 50  0001 C CNN
F 3 "~" H 2550 2150 50  0001 C CNN
	1    2550 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2000 2400 2150
Wire Wire Line
	2400 4100 2400 4250
Connection ~ 2400 2150
Wire Wire Line
	2400 2150 2400 2400
$Comp
L eeprom-programmer:C C2
U 1 1 5CBAF261
P 2550 4250
F 0 "C2" V 2802 4250 50  0000 C CNN
F 1 ".1uF" V 2711 4250 50  0000 C CNN
F 2 "" H 2588 4100 50  0001 C CNN
F 3 "~" H 2550 4250 50  0001 C CNN
	1    2550 4250
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C3
U 1 1 5CB78612
P 9300 3050
F 0 "C3" V 9552 3050 50  0000 C CNN
F 1 ".1uF" V 9461 3050 50  0000 C CNN
F 2 "" H 9338 2900 50  0001 C CNN
F 3 "~" H 9300 3050 50  0001 C CNN
	1    9300 3050
	0    1    1    0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB7C1B8
P 9450 3050
F 0 "#PWR?" H 9450 2800 50  0001 C CNN
F 1 "GND" V 9455 2922 50  0000 R CNN
F 2 "" H 9450 3050 50  0001 C CNN
F 3 "" H 9450 3050 50  0001 C CNN
	1    9450 3050
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB7E6BD
P 8050 4600
F 0 "#PWR?" H 8050 4350 50  0001 C CNN
F 1 "GND" V 8055 4472 50  0000 R CNN
F 2 "" H 8050 4600 50  0001 C CNN
F 3 "" H 8050 4600 50  0001 C CNN
	1    8050 4600
	0    1    1    0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB8A3C0
P 5650 5350
F 0 "#PWR?" H 5650 5100 50  0001 C CNN
F 1 "GND" V 5655 5222 50  0000 R CNN
F 2 "" H 5650 5350 50  0001 C CNN
F 3 "" H 5650 5350 50  0001 C CNN
	1    5650 5350
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR?
U 1 1 5CB91407
P 6050 2750
F 0 "#PWR?" H 6050 2500 50  0001 C CNN
F 1 "GND" V 6055 2622 50  0000 R CNN
F 2 "" H 6050 2750 50  0001 C CNN
F 3 "" H 6050 2750 50  0001 C CNN
	1    6050 2750
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C4
U 1 1 5CB9E54E
P 5900 2750
F 0 "C4" V 6152 2750 50  0000 C CNN
F 1 ".1uF" V 6061 2750 50  0000 C CNN
F 2 "" H 5938 2600 50  0001 C CNN
F 3 "~" H 5900 2750 50  0001 C CNN
	1    5900 2750
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 2950
Wire Wire Line
	5750 2550 5750 2750
Connection ~ 5750 2750
Wire Wire Line
	5750 2750 5750 2950
Wire Wire Line
	5650 4950 5650 5350
NoConn ~ 6050 4550
NoConn ~ 6050 4650
NoConn ~ 5050 4650
NoConn ~ 5050 3350
NoConn ~ 5050 3450
NoConn ~ 6050 3350
NoConn ~ 6050 3450
NoConn ~ 5450 2950
NoConn ~ 5550 4950
Wire Wire Line
	9150 2900 9150 3050
Connection ~ 9150 3050
Wire Wire Line
	9150 3050 9150 3300
$Comp
L eeprom-programmer:Arduino_Nano_v3.x A1
U 1 1 5CB9F09B
P 5550 3950
F 0 "A1" H 5550 2861 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5550 2770 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5700 3000 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5550 2950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
NoConn ~ 6050 3750
NoConn ~ 6050 4450
$Comp
L eeprom-programmer:AT28C64B-15PU IC1
U 1 1 5CB76AFF
P 8050 3300
F 0 "IC1" H 8600 3565 50  0000 C CNN
F 1 "AT28C64B-15PU" H 8600 3474 50  0000 C CNN
F 2 "DIP1556W56P254L3702H483Q28N" H 9000 3400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/AT28C64B-15PU.pdf" H 9000 3300 50  0001 L CNN
F 4 "AT28C64B-15PU, Parallel EEPROM Memory 64kbit, Parallel, 150ns 4.5  5.5 V, 28-Pin PDIP" H 9000 3200 50  0001 L CNN "Description"
F 5 "4.826" H 9000 3100 50  0001 L CNN "Height"
F 6 "556-AT28C64B15PU" H 9000 3000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=556-AT28C64B15PU" H 9000 2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 9000 2800 50  0001 L CNN "Manufacturer_Name"
F 9 "AT28C64B-15PU" H 9000 2700 50  0001 L CNN "Manufacturer_Part_Number"
	1    8050 3300
	1    0    0    -1  
$EndComp
Text GLabel 2800 2600 2    50   Output ~ 0
address0
Text GLabel 2800 2700 2    50   Output ~ 0
address1
Text GLabel 2800 2800 2    50   Output ~ 0
address2
Text GLabel 2800 2900 2    50   Output ~ 0
address3
Text GLabel 2800 3000 2    50   Output ~ 0
address4
Text GLabel 2800 3100 2    50   Output ~ 0
address5
Text GLabel 2800 3200 2    50   Output ~ 0
address6
Text GLabel 2800 3300 2    50   Output ~ 0
address7
Text GLabel 2800 4700 2    50   Output ~ 0
address8
Text GLabel 2800 4800 2    50   Output ~ 0
address9
Text GLabel 2800 4900 2    50   Output ~ 0
address10
Text GLabel 2800 5000 2    50   Output ~ 0
address11
Text GLabel 2800 5100 2    50   Output ~ 0
address12
Text GLabel 8050 4200 0    50   Input ~ 0
address0
Text GLabel 8050 4100 0    50   Input ~ 0
address1
Text GLabel 8050 4000 0    50   Input ~ 0
address2
Text GLabel 8050 3900 0    50   Input ~ 0
address3
Text GLabel 8050 3800 0    50   Input ~ 0
address4
Text GLabel 8050 3700 0    50   Input ~ 0
address5
Text GLabel 8050 3600 0    50   Input ~ 0
address6
Text GLabel 8050 3500 0    50   Input ~ 0
address7
Text GLabel 9150 3600 2    50   Input ~ 0
address8
Text GLabel 9150 3700 2    50   Input ~ 0
address9
Text GLabel 9150 4000 2    50   Input ~ 0
address10
Text GLabel 9150 3800 2    50   Input ~ 0
address11
Text GLabel 8050 3400 0    50   Input ~ 0
address12
NoConn ~ 8050 3300
Connection ~ 2400 4250
Wire Wire Line
	2400 4250 2400 4500
NoConn ~ 9150 3500
Text GLabel 5050 3550 0    50   BiDi ~ 0
data0
Text GLabel 5050 3650 0    50   BiDi ~ 0
data1
Text GLabel 5050 3750 0    50   BiDi ~ 0
data2
Text GLabel 5050 3850 0    50   BiDi ~ 0
data3
Text GLabel 5050 3950 0    50   BiDi ~ 0
data4
Text GLabel 5050 4050 0    50   BiDi ~ 0
data5
Text GLabel 5050 4150 0    50   BiDi ~ 0
data6
Text GLabel 5050 4250 0    50   BiDi ~ 0
data7
Text GLabel 8050 4300 0    50   BiDi ~ 0
data0
Text GLabel 8050 4400 0    50   BiDi ~ 0
data1
Text GLabel 8050 4500 0    50   BiDi ~ 0
data2
Text GLabel 9150 4600 2    50   BiDi ~ 0
data3
Text GLabel 9150 4500 2    50   BiDi ~ 0
data4
Text GLabel 9150 4400 2    50   BiDi ~ 0
data5
Text GLabel 9150 4300 2    50   BiDi ~ 0
data6
Text GLabel 9150 4200 2    50   BiDi ~ 0
data7
$EndSCHEMATC
