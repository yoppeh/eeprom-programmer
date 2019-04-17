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
Text GLabel 5900 1750 0    50   Input ~ 0
Arduino5V
Text GLabel 5900 3950 0    50   Input ~ 0
Arduino5V
Text GLabel 3800 2300 1    50   Output ~ 0
Arduino5V
Text Notes 7350 7500 0    50   ~ 0
Atmel AT28C64B-15PU Programming Circuit
Text Notes 8134 7644 0    50   ~ 0
2019-04-04
Text Notes 10600 7650 0    50   ~ 0
1.0.0
Wire Wire Line
	5500 4550 5350 4550
Wire Wire Line
	5350 4550 5350 3750
Wire Wire Line
	5350 3750 6300 3750
Text GLabel 3100 4100 0    50   Output ~ 0
eeNotWriteEnable
Text GLabel 3100 4200 0    50   Output ~ 0
eeNotChipEnable
Text GLabel 3100 4300 0    50   Output ~ 0
eeNotOutputEnable
$Comp
L eeprom-programmer:74HC595 U1
U 1 1 5CB78989
P 5900 2750
F 0 "U1" H 5900 3531 50  0000 C CNN
F 1 "74HC595" H 5900 3440 50  0000 C CNN
F 2 "" H 5900 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:74HC595 U2
U 1 1 5CB788C3
P 5900 4950
F 0 "U2" H 5900 5731 50  0000 C CNN
F 1 "74HC595" H 5900 5640 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0101
U 1 1 5CB823EE
P 5900 3450
F 0 "#PWR0101" H 5900 3200 50  0001 C CNN
F 1 "GND" H 5905 3277 50  0000 C CNN
F 2 "" H 5900 3450 50  0001 C CNN
F 3 "" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0102
U 1 1 5CB8BC43
P 6300 5450
F 0 "#PWR0102" H 6300 5200 50  0001 C CNN
F 1 "GND" V 6305 5322 50  0000 R CNN
F 2 "" H 6300 5450 50  0001 C CNN
F 3 "" H 6300 5450 50  0001 C CNN
	1    6300 5450
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0103
U 1 1 5CB90901
P 6300 5250
F 0 "#PWR0103" H 6300 5000 50  0001 C CNN
F 1 "GND" V 6305 5122 50  0000 R CNN
F 2 "" H 6300 5250 50  0001 C CNN
F 3 "" H 6300 5250 50  0001 C CNN
	1    6300 5250
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0104
U 1 1 5CB92E73
P 6300 5150
F 0 "#PWR0104" H 6300 4900 50  0001 C CNN
F 1 "GND" V 6305 5022 50  0000 R CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0105
U 1 1 5CB9A445
P 6200 4100
F 0 "#PWR0105" H 6200 3850 50  0001 C CNN
F 1 "GND" V 6205 3972 50  0000 R CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0106
U 1 1 5CB9F008
P 6200 1900
F 0 "#PWR0106" H 6200 1650 50  0001 C CNN
F 1 "GND" V 6205 1772 50  0000 R CNN
F 2 "" H 6200 1900 50  0001 C CNN
F 3 "" H 6200 1900 50  0001 C CNN
	1    6200 1900
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C2
U 1 1 5CBA60B6
P 6050 1900
F 0 "C2" V 6302 1900 50  0000 C CNN
F 1 ".1uF" V 6211 1900 50  0000 C CNN
F 2 "" H 6088 1750 50  0001 C CNN
F 3 "~" H 6050 1900 50  0001 C CNN
	1    6050 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 1750 5900 1900
Wire Wire Line
	5900 3950 5900 4100
Connection ~ 5900 1900
Wire Wire Line
	5900 1900 5900 2150
$Comp
L eeprom-programmer:C C3
U 1 1 5CBAF261
P 6050 4100
F 0 "C3" V 6302 4100 50  0000 C CNN
F 1 ".1uF" V 6211 4100 50  0000 C CNN
F 2 "" H 6088 3950 50  0001 C CNN
F 3 "~" H 6050 4100 50  0001 C CNN
	1    6050 4100
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C4
U 1 1 5CB78612
P 8400 2450
F 0 "C4" V 8652 2450 50  0000 C CNN
F 1 ".1uF" V 8561 2450 50  0000 C CNN
F 2 "" H 8438 2300 50  0001 C CNN
F 3 "~" H 8400 2450 50  0001 C CNN
	1    8400 2450
	0    1    1    0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0107
U 1 1 5CB7C1B8
P 8550 2450
F 0 "#PWR0107" H 8550 2200 50  0001 C CNN
F 1 "GND" V 8555 2322 50  0000 R CNN
F 2 "" H 8550 2450 50  0001 C CNN
F 3 "" H 8550 2450 50  0001 C CNN
	1    8550 2450
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:GND #PWR0109
U 1 1 5CB91407
P 4100 2500
F 0 "#PWR0109" H 4100 2250 50  0001 C CNN
F 1 "GND" V 4105 2372 50  0000 R CNN
F 2 "" H 4100 2500 50  0001 C CNN
F 3 "" H 4100 2500 50  0001 C CNN
	1    4100 2500
	0    -1   -1   0   
$EndComp
$Comp
L eeprom-programmer:C C1
U 1 1 5CB9E54E
P 3950 2500
F 0 "C1" V 4202 2500 50  0000 C CNN
F 1 ".1uF" V 4111 2500 50  0000 C CNN
F 2 "" H 3988 2350 50  0001 C CNN
F 3 "~" H 3950 2500 50  0001 C CNN
	1    3950 2500
	0    -1   -1   0   
$EndComp
NoConn ~ 3700 2700
Wire Wire Line
	3800 2300 3800 2500
Connection ~ 3800 2500
Wire Wire Line
	3800 2500 3800 2700
NoConn ~ 4100 4300
NoConn ~ 4100 4400
NoConn ~ 3100 4400
NoConn ~ 3100 3100
NoConn ~ 3100 3200
NoConn ~ 4100 3100
NoConn ~ 4100 3200
NoConn ~ 3500 2700
NoConn ~ 3600 4700
$Comp
L eeprom-programmer:Arduino_Nano_v3.x A1
U 1 1 5CB9F09B
P 3600 3700
F 0 "A1" H 3600 2611 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3600 2520 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3750 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3600 2700 50  0001 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3500
NoConn ~ 4100 4200
Connection ~ 5900 4100
Wire Wire Line
	5900 4100 5900 4350
Wire Wire Line
	8250 2300 8250 2450
Connection ~ 8250 2450
Wire Wire Line
	8250 2450 8250 2700
Text GLabel 8250 2300 0    50   Input ~ 0
Arduino5V
$Comp
L eeprom-programmer:GND #PWR0110
U 1 1 5CB7A404
P 8250 4600
F 0 "#PWR0110" H 8250 4350 50  0001 C CNN
F 1 "GND" H 8255 4427 50  0000 C CNN
F 2 "" H 8250 4600 50  0001 C CNN
F 3 "" H 8250 4600 50  0001 C CNN
	1    8250 4600
	1    0    0    -1  
$EndComp
$Comp
L eeprom-programmer:GND #PWR0111
U 1 1 5CB95418
P 6300 5050
F 0 "#PWR0111" H 6300 4800 50  0001 C CNN
F 1 "GND" V 6305 4922 50  0000 R CNN
F 2 "" H 6300 5050 50  0001 C CNN
F 3 "" H 6300 5050 50  0001 C CNN
	1    6300 5050
	0    -1   -1   0   
$EndComp
Text Label 6300 2350 0    50   ~ 0
addr00
Text Label 6300 2450 0    50   ~ 0
addr01
Text Label 6300 2550 0    50   ~ 0
addr02
Text Label 6300 2650 0    50   ~ 0
addr03
Text Label 6300 2750 0    50   ~ 0
addr04
Text Label 6300 2850 0    50   ~ 0
addr05
Text Label 6300 2950 0    50   ~ 0
addr06
Text Label 6300 3050 0    50   ~ 0
addr07
Wire Wire Line
	6600 2350 6300 2350
Wire Wire Line
	6600 2450 6300 2450
Wire Wire Line
	6600 2550 6300 2550
Wire Wire Line
	6600 2650 6300 2650
Wire Wire Line
	6600 2750 6300 2750
Wire Wire Line
	6600 2850 6300 2850
Wire Wire Line
	6600 2950 6300 2950
Wire Wire Line
	6600 3050 6300 3050
Wire Wire Line
	6300 4550 6600 4550
Wire Wire Line
	6600 4750 6300 4750
Wire Wire Line
	6600 4850 6300 4850
Wire Wire Line
	6600 4950 6300 4950
Text Label 6300 4550 0    50   ~ 0
addr08
Text Label 6600 4750 2    50   ~ 0
addr10
Wire Wire Line
	6600 4650 6300 4650
Text Label 6600 4650 2    50   ~ 0
addr09
Text Label 6600 4850 2    50   ~ 0
addr11
Text Label 6600 4950 2    50   ~ 0
addr12
Text Label 8800 3000 0    50   ~ 0
addr00
Text Label 8800 3100 0    50   ~ 0
addr01
Text Label 8800 3200 0    50   ~ 0
addr02
Text Label 8800 3300 0    50   ~ 0
addr03
Text Label 8800 3400 0    50   ~ 0
addr04
Text Label 8800 3500 0    50   ~ 0
addr05
Text Label 8800 3600 0    50   ~ 0
addr06
Text Label 8800 3700 0    50   ~ 0
addr07
Wire Wire Line
	9100 3000 8800 3000
Wire Wire Line
	9100 3100 8800 3100
Wire Wire Line
	9100 3200 8800 3200
Wire Wire Line
	9100 3300 8800 3300
Wire Wire Line
	9100 3400 8800 3400
Text Label 8800 3800 0    50   ~ 0
addr08
Text Label 9100 4000 2    50   ~ 0
addr10
Text Label 9100 3900 2    50   ~ 0
addr09
Text Label 9100 4100 2    50   ~ 0
addr11
Text Label 9100 4200 2    50   ~ 0
addr12
Wire Wire Line
	6300 3250 6300 3750
Wire Wire Line
	8800 3500 9100 3500
Wire Wire Line
	8800 3600 9100 3600
Wire Wire Line
	8800 3700 9100 3700
Wire Wire Line
	8800 3800 9100 3800
Wire Wire Line
	8800 4000 9100 4000
Wire Wire Line
	8800 4100 9100 4100
Wire Wire Line
	8800 4200 9100 4200
Wire Wire Line
	8800 3900 9100 3900
NoConn ~ 7700 4250
NoConn ~ 7700 4350
Entry Bus Bus
	7300 2900 7400 3000
Entry Bus Bus
	7300 3000 7400 3100
Entry Bus Bus
	7300 3100 7400 3200
Entry Bus Bus
	7300 3200 7400 3300
Entry Bus Bus
	7300 3300 7400 3400
Entry Bus Bus
	7300 3400 7400 3500
Entry Bus Bus
	7300 3500 7400 3600
Entry Bus Bus
	7300 3600 7400 3700
Entry Bus Bus
	2700 3800 2800 3900
Entry Bus Bus
	2700 3900 2800 4000
Wire Wire Line
	7700 3400 7400 3400
Wire Wire Line
	7700 3500 7400 3500
Wire Wire Line
	7700 3600 7400 3600
Wire Wire Line
	7700 3700 7400 3700
Text Label 7700 3400 2    50   ~ 0
data4
Text Label 7700 3500 2    50   ~ 0
data5
Text Label 7700 3600 2    50   ~ 0
data6
Text Label 7700 3700 2    50   ~ 0
data7
Entry Bus Bus
	2700 3200 2800 3300
Entry Bus Bus
	2700 3300 2800 3400
Entry Bus Bus
	2700 3400 2800 3500
Entry Bus Bus
	2700 3500 2800 3600
Entry Bus Bus
	2700 3700 2800 3800
Entry Bus Bus
	2700 3600 2800 3700
Wire Wire Line
	3100 3800 2800 3800
Text Label 3100 3800 2    50   ~ 0
data5
Wire Wire Line
	3100 3700 2800 3700
Wire Wire Line
	3100 3600 2800 3600
Wire Wire Line
	3100 3500 2800 3500
Wire Wire Line
	3100 3400 2800 3400
Wire Wire Line
	3100 3300 2800 3300
Text Label 3100 3300 2    50   ~ 0
data0
Text Label 3100 3400 2    50   ~ 0
data1
Text Label 3100 3500 2    50   ~ 0
data2
Text Label 3100 3600 2    50   ~ 0
data3
Text Label 3100 3700 2    50   ~ 0
data4
Wire Wire Line
	3100 3900 2800 3900
Wire Wire Line
	3100 4000 2800 4000
Text Label 3100 3900 2    50   ~ 0
data6
Text Label 3100 4000 2    50   ~ 0
data7
$Comp
L eeprom-programmer:AT28C64B-15PU IC1
U 1 1 5CB76AFF
P 7700 3000
F 0 "IC1" H 8250 3265 50  0000 C CNN
F 1 "AT28C64B-15PU" H 8250 3174 50  0000 C CNN
F 2 "DIP1556W56P254L3702H483Q28N" H 8650 3100 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/AT28C64B-15PU.pdf" H 8650 3000 50  0001 L CNN
F 4 "AT28C64B-15PU, Parallel EEPROM Memory 64kbit, Parallel, 150ns 4.5  5.5 V, 28-Pin PDIP" H 8650 2900 50  0001 L CNN "Description"
F 5 "4.826" H 8650 2800 50  0001 L CNN "Height"
F 6 "556-AT28C64B15PU" H 8650 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=556-AT28C64B15PU" H 8650 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 8650 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "AT28C64B-15PU" H 8650 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3000 7400 3000
Wire Wire Line
	7700 3100 7400 3100
Wire Wire Line
	7700 3200 7400 3200
Wire Wire Line
	7700 3300 7400 3300
Text Label 7700 3000 2    50   ~ 0
data0
Text Label 7700 3100 2    50   ~ 0
data1
Text Label 7700 3200 2    50   ~ 0
data2
Text Label 7700 3300 2    50   ~ 0
data3
Entry Bus Bus
	6600 2350 6700 2450
Entry Bus Bus
	6600 2450 6700 2550
Entry Bus Bus
	6600 2550 6700 2650
Entry Bus Bus
	6600 2650 6700 2750
Entry Bus Bus
	6600 2750 6700 2850
Entry Bus Bus
	6600 2850 6700 2950
Entry Bus Bus
	6600 2950 6700 3050
Entry Bus Bus
	6600 3050 6700 3150
Entry Bus Bus
	6600 4550 6700 4650
Entry Bus Bus
	6600 4650 6700 4750
Entry Bus Bus
	6600 4750 6700 4850
Entry Bus Bus
	6600 4850 6700 4950
Entry Bus Bus
	6600 4950 6700 5050
Entry Bus Bus
	9100 3000 9200 3100
Entry Bus Bus
	9100 3100 9200 3200
Entry Bus Bus
	9100 3200 9200 3300
Entry Bus Bus
	9100 3300 9200 3400
Entry Bus Bus
	9100 3400 9200 3500
Entry Bus Bus
	9100 3500 9200 3600
Entry Bus Bus
	9100 3600 9200 3700
Entry Bus Bus
	9100 3700 9200 3800
Entry Bus Bus
	9100 3800 9200 3900
Entry Bus Bus
	9100 3900 9200 4000
Entry Bus Bus
	9100 4000 9200 4100
Entry Bus Bus
	9100 4100 9200 4200
Entry Bus Bus
	9100 4200 9200 4300
Wire Bus Line
	9200 5050 6700 5050
Text GLabel 7700 3950 0    50   Input ~ 0
eeNotWriteEnable
Text GLabel 7700 3850 0    50   Input ~ 0
eeNotChipEnable
Text GLabel 7700 4050 0    50   Input ~ 0
eeNotOutputEnable
Wire Bus Line
	2700 1550 7300 1550
$Comp
L eeprom-programmer:GND #PWR0112
U 1 1 5CB89790
P 5900 5650
F 0 "#PWR0112" H 5900 5400 50  0001 C CNN
F 1 "GND" H 5905 5477 50  0000 C CNN
F 2 "" H 5900 5650 50  0001 C CNN
F 3 "" H 5900 5650 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
Text GLabel 5500 2350 0    50   Input ~ 0
srSerialData
Text GLabel 4100 4100 2    50   Output ~ 0
srSerialData
Text GLabel 5500 4750 0    50   Input ~ 0
srSerialClock
Text GLabel 5500 2550 0    50   Input ~ 0
srSerialClock
Text GLabel 4100 4000 2    50   Output ~ 0
srSerialClock
Text GLabel 4100 3900 2    50   Output ~ 0
srNotOutputEnable
Text GLabel 5500 2950 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 5500 5150 0    50   Input ~ 0
srNotOutputEnable
Text GLabel 4100 3800 2    50   Output ~ 0
srReadClock
Text GLabel 5500 5050 0    50   Input ~ 0
srReadClock
Text GLabel 5500 2850 0    50   Input ~ 0
srReadClock
Text GLabel 5500 4850 0    50   Input ~ 0
srNotResetAll
Text GLabel 5500 2650 0    50   Input ~ 0
srNotResetAll
Text GLabel 4100 3700 2    50   Output ~ 0
srNotResetAll
Wire Bus Line
	9200 3100 9200 5050
Wire Bus Line
	6700 2450 6700 5050
Wire Bus Line
	2700 1550 2700 3900
Wire Bus Line
	7300 1550 7300 3600
Wire Wire Line
	3700 4700 3700 5100
$Comp
L eeprom-programmer:GND #PWR0108
U 1 1 5CB8A3C0
P 3700 5100
F 0 "#PWR0108" H 3700 4850 50  0001 C CNN
F 1 "GND" V 3705 4972 50  0000 R CNN
F 2 "" H 3700 5100 50  0001 C CNN
F 3 "" H 3700 5100 50  0001 C CNN
	1    3700 5100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
