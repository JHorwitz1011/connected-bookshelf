EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HIVE Overhead Connected Spotlight"
Date "2022-01-08"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Espressif:ESP32-S2-WROOM U2
U 1 1 61BDC930
P 3750 2700
F 0 "U2" H 3775 4615 50  0000 C CNN
F 1 "ESP32-S2-WROOM" H 3775 4524 50  0000 C CNN
F 2 "ESP32-S2-WROOM:XCVR_ESP32-S2-WROOM" H 3750 800 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-s2-wroom_esp32-s2-wroom-i_datasheet_en.pdf" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61BD36EB
P 2350 4500
F 0 "#PWR0101" H 2350 4250 50  0001 C CNN
F 1 "GND" H 2355 4327 50  0000 C CNN
F 2 "" H 2350 4500 50  0001 C CNN
F 3 "" H 2350 4500 50  0001 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4050 2350 4150
Wire Wire Line
	2350 4150 2350 4250
Connection ~ 2350 4150
Wire Wire Line
	2350 4250 2350 4350
Connection ~ 2350 4250
Wire Wire Line
	2350 4350 2350 4500
Connection ~ 2350 4350
$Comp
L power:+3V3 #PWR0102
U 1 1 61BD3FD9
P 2300 3800
F 0 "#PWR0102" H 2300 3650 50  0001 C CNN
F 1 "+3V3" H 2315 3973 50  0000 C CNN
F 2 "" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0001 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3800 2350 3800
$Comp
L power:GND #PWR0103
U 1 1 61BD767E
P 650 3250
F 0 "#PWR0103" H 650 3000 50  0001 C CNN
F 1 "GND" V 655 3122 50  0000 R CNN
F 2 "" H 650 3250 50  0001 C CNN
F 3 "" H 650 3250 50  0001 C CNN
	1    650  3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61BD9CA8
P 950 3550
F 0 "C3" V 698 3550 50  0000 C CNN
F 1 "12.5 pF" V 789 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 988 3400 50  0001 C CNN
F 3 "~" H 950 3550 50  0001 C CNN
	1    950  3550
	0    1    1    0   
$EndComp
Wire Wire Line
	800  3550 800  3200
Connection ~ 800  3200
Wire Wire Line
	1100 3200 800  3200
Wire Wire Line
	1300 3550 1100 3550
Wire Wire Line
	1100 2900 1300 2900
Wire Wire Line
	1300 3550 2350 3550
Wire Wire Line
	2350 3550 2350 3350
Connection ~ 1300 3550
Wire Wire Line
	1300 2900 2350 2900
Wire Wire Line
	2350 2900 2350 3100
Connection ~ 1300 2900
Wire Wire Line
	1300 2900 1300 3050
Wire Wire Line
	1300 3350 1300 3550
$Comp
L Device:Crystal_GND23 Y1
U 1 1 61BD54AC
P 1300 3200
F 0 "Y1" V 1254 3444 50  0000 L CNN
F 1 "32.768 kHz" V 1345 3444 50  0000 L CNN
F 2 "HIVE-Crystal-Oscillator:ABS25-32.000KHZ-T" H 1300 3200 50  0001 C CNN
F 3 "~" H 1300 3200 50  0001 C CNN
	1    1300 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61BDB7CB
P 1500 3250
F 0 "#PWR0104" H 1500 3000 50  0001 C CNN
F 1 "GND" V 1505 3122 50  0000 R CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "" H 1500 3250 50  0001 C CNN
	1    1500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3250 1500 3200
Wire Wire Line
	800  3200 650  3200
Wire Wire Line
	650  3200 650  3250
Text GLabel 1500 1100 0    50   Input ~ 0
CHIP_PU
$Comp
L power:+3V3 #PWR0105
U 1 1 61BDD462
P 2000 800
F 0 "#PWR0105" H 2000 650 50  0001 C CNN
F 1 "+3V3" H 2015 973 50  0000 C CNN
F 2 "" H 2000 800 50  0001 C CNN
F 3 "" H 2000 800 50  0001 C CNN
	1    2000 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61BDDCC4
P 1900 1250
F 0 "C5" H 2015 1296 50  0000 L CNN
F 1 "0.1uF" H 2015 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1938 1100 50  0001 C CNN
F 3 "~" H 1900 1250 50  0001 C CNN
	1    1900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61BDE254
P 1900 1400
F 0 "#PWR0106" H 1900 1150 50  0001 C CNN
F 1 "GND" H 1905 1227 50  0000 C CNN
F 2 "" H 1900 1400 50  0001 C CNN
F 3 "" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1100 1900 1100
Connection ~ 1900 1100
Wire Notes Line width 8
	5650 450  5650 4850
Text GLabel 7425 6050 0    50   Input ~ 0
CHIP_PU
$Comp
L power:GND #PWR0107
U 1 1 61BEA6D9
P 8025 6075
F 0 "#PWR0107" H 8025 5825 50  0001 C CNN
F 1 "GND" H 8030 5902 50  0000 C CNN
F 2 "" H 8025 6075 50  0001 C CNN
F 3 "" H 8025 6075 50  0001 C CNN
	1    8025 6075
	1    0    0    -1  
$EndComp
Text Notes 500  5100 0    157  ~ 0
Power and Filtering\n
Text GLabel 2150 6200 3    50   Input ~ 0
EN
$Comp
L power:+3V3 #PWR0108
U 1 1 61C14542
P 550 5750
F 0 "#PWR0108" H 550 5600 50  0001 C CNN
F 1 "+3V3" H 565 5923 50  0000 C CNN
F 2 "" H 550 5750 50  0001 C CNN
F 3 "" H 550 5750 50  0001 C CNN
	1    550  5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61C1825A
P 2350 6000
F 0 "R3" H 2420 6046 50  0000 L CNN
F 1 "10k" H 2420 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2280 6000 50  0001 C CNN
F 3 "~" H 2350 6000 50  0001 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6150 2350 6200
$Comp
L Device:C C7
U 1 1 61C1B174
P 2700 6000
F 0 "C7" H 2815 6046 50  0000 L CNN
F 1 "2.2 uF" H 2815 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2738 5850 50  0001 C CNN
F 3 "~" H 2700 6000 50  0001 C CNN
	1    2700 6000
	1    0    0    -1  
$EndComp
Connection ~ 2350 5850
$Comp
L power:GND #PWR0109
U 1 1 61C1C6DC
P 2700 6150
F 0 "#PWR0109" H 2700 5900 50  0001 C CNN
F 1 "GND" H 2705 5977 50  0000 C CNN
F 2 "" H 2700 6150 50  0001 C CNN
F 3 "" H 2700 6150 50  0001 C CNN
	1    2700 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 61C1D12F
P 775 6900
F 0 "#PWR0110" H 775 6750 50  0001 C CNN
F 1 "+3V3" H 790 7073 50  0000 C CNN
F 2 "" H 775 6900 50  0001 C CNN
F 3 "" H 775 6900 50  0001 C CNN
	1    775  6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61C1DB92
P 775 7050
F 0 "C1" H 890 7096 50  0000 L CNN
F 1 "2.2 uF" H 890 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 813 6900 50  0001 C CNN
F 3 "~" H 775 7050 50  0001 C CNN
	1    775  7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61C1E49D
P 1275 7050
F 0 "C4" H 1390 7096 50  0000 L CNN
F 1 "10 uF" H 1390 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1313 6900 50  0001 C CNN
F 3 "~" H 1275 7050 50  0001 C CNN
	1    1275 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	775  6900 1275 6900
Connection ~ 775  6900
Wire Wire Line
	775  7200 1275 7200
$Comp
L power:GND #PWR0111
U 1 1 61C237C1
P 775 7200
F 0 "#PWR0111" H 775 6950 50  0001 C CNN
F 1 "GND" H 780 7027 50  0000 C CNN
F 2 "" H 775 7200 50  0001 C CNN
F 3 "" H 775 7200 50  0001 C CNN
	1    775  7200
	1    0    0    -1  
$EndComp
Wire Notes Line
	3100 4850 3100 7800
Text Notes 500  750  0    197  ~ 0
ESP32\n
Text GLabel 5200 1200 2    50   Input ~ 0
RX0
Text GLabel 5200 1100 2    50   Input ~ 0
TX0
Text GLabel 5200 3650 2    50   Input ~ 0
BOOT
Wire Wire Line
	800  2900 800  3200
$Comp
L Device:C C2
U 1 1 61BD86D0
P 950 2900
F 0 "C2" V 698 2900 50  0000 C CNN
F 1 "12.5 pF" V 789 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 988 2750 50  0001 C CNN
F 3 "~" H 950 2900 50  0001 C CNN
	1    950  2900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 61C51AE6
P 2350 5850
F 0 "#PWR0112" H 2350 5700 50  0001 C CNN
F 1 "+5V" H 2365 6023 50  0000 C CNN
F 2 "" H 2350 5850 50  0001 C CNN
F 3 "" H 2350 5850 50  0001 C CNN
	1    2350 5850
	1    0    0    -1  
$EndComp
Text Notes 5750 750  0    150  ~ 0
Programming
Text Notes 3135 5115 0    150  ~ 0
Interfaces
$Comp
L Device:LED D3
U 1 1 61D3EF30
P 6475 7250
F 0 "D3" V 6422 7330 50  0000 L CNN
F 1 "LED" V 6513 7330 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6475 7250 50  0001 C CNN
F 3 "~" H 6475 7250 50  0001 C CNN
	1    6475 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61D40938
P 6125 7250
F 0 "D2" V 6072 7330 50  0000 L CNN
F 1 "LED" V 6163 7330 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6125 7250 50  0001 C CNN
F 3 "~" H 6125 7250 50  0001 C CNN
	1    6125 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 61D41F11
P 5800 7250
F 0 "D1" V 5747 7330 50  0000 L CNN
F 1 "LED" V 5838 7330 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5800 7250 50  0001 C CNN
F 3 "~" H 5800 7250 50  0001 C CNN
	1    5800 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 61D5D516
P 6125 7400
F 0 "#PWR0113" H 6125 7150 50  0001 C CNN
F 1 "GND" H 6130 7227 50  0000 C CNN
F 2 "" H 6125 7400 50  0001 C CNN
F 3 "" H 6125 7400 50  0001 C CNN
	1    6125 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61D5F16D
P 6475 7400
F 0 "#PWR0114" H 6475 7150 50  0001 C CNN
F 1 "GND" H 6480 7227 50  0000 C CNN
F 2 "" H 6475 7400 50  0001 C CNN
F 3 "" H 6475 7400 50  0001 C CNN
	1    6475 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61D61CDC
P 5800 7400
F 0 "#PWR0115" H 5800 7150 50  0001 C CNN
F 1 "GND" H 5805 7227 50  0000 C CNN
F 2 "" H 5800 7400 50  0001 C CNN
F 3 "" H 5800 7400 50  0001 C CNN
	1    5800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61D64A88
P 5800 6950
F 0 "R4" H 5868 6996 50  0000 L CNN
F 1 "70" H 5868 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5840 6940 50  0001 C CNN
F 3 "~" H 5800 6950 50  0001 C CNN
	1    5800 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 61D65D36
P 6125 6950
F 0 "R6" H 6193 6996 50  0000 L CNN
F 1 "65" H 6193 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6165 6940 50  0001 C CNN
F 3 "~" H 6125 6950 50  0001 C CNN
	1    6125 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 61D67374
P 6475 6950
F 0 "R7" H 6543 6996 50  0000 L CNN
F 1 "65" H 6543 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6515 6940 50  0001 C CNN
F 3 "~" H 6475 6950 50  0001 C CNN
	1    6475 6950
	1    0    0    -1  
$EndComp
Text GLabel 5800 6800 1    59   Input ~ 0
RLED
Text GLabel 6125 6800 1    59   Input ~ 0
GLED
Text GLabel 6475 6800 1    59   Input ~ 0
YLED
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 61DBD06C
P 4775 6725
F 0 "J4" H 4883 7006 50  0000 C CNN
F 1 "Neopixel 1" H 4883 6915 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4775 6725 50  0001 C CNN
F 3 "~" H 4775 6725 50  0001 C CNN
	1    4775 6725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61DBE671
P 5300 6825
F 0 "#PWR0116" H 5300 6575 50  0001 C CNN
F 1 "GND" H 5305 6652 50  0000 C CNN
F 2 "" H 5300 6825 50  0001 C CNN
F 3 "" H 5300 6825 50  0001 C CNN
	1    5300 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 6825 5300 6825
$Comp
L power:+5V #PWR0117
U 1 1 61DC0629
P 5300 6625
F 0 "#PWR0117" H 5300 6475 50  0001 C CNN
F 1 "+5V" H 5315 6798 50  0000 C CNN
F 2 "" H 5300 6625 50  0001 C CNN
F 3 "" H 5300 6625 50  0001 C CNN
	1    5300 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6625 4975 6625
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 61DC6280
P 4775 7375
F 0 "J5" H 4883 7656 50  0000 C CNN
F 1 "Neopixel 2" H 4883 7565 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4775 7375 50  0001 C CNN
F 3 "~" H 4775 7375 50  0001 C CNN
	1    4775 7375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61DC6286
P 5300 7475
F 0 "#PWR0118" H 5300 7225 50  0001 C CNN
F 1 "GND" H 5305 7302 50  0000 C CNN
F 2 "" H 5300 7475 50  0001 C CNN
F 3 "" H 5300 7475 50  0001 C CNN
	1    5300 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 7475 5300 7475
$Comp
L power:+5V #PWR0119
U 1 1 61DC628D
P 5300 7275
F 0 "#PWR0119" H 5300 7125 50  0001 C CNN
F 1 "+5V" H 5315 7448 50  0000 C CNN
F 2 "" H 5300 7275 50  0001 C CNN
F 3 "" H 5300 7275 50  0001 C CNN
	1    5300 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 7275 4975 7275
Text GLabel 4975 6725 2    59   Input ~ 0
DIN1
Text GLabel 4975 7375 2    59   Input ~ 0
DIN2
Text GLabel 2350 1700 0    50   Input ~ 0
RLED
Text GLabel 2350 1600 0    50   Input ~ 0
GLED
Text GLabel 2350 1500 0    50   Input ~ 0
YLED
Wire Notes Line
	6970 4850 6970 6530
$Comp
L HIVE-Barrel-Jack:PJ-031C J1
U 1 1 61CDBD01
P 2100 7150
F 0 "J1" H 2095 7490 50  0000 C CNN
F 1 "PJ-031C" H 2095 7399 50  0000 C CNN
F 2 "HIVE-Barrel-Jack:CUI_PJ-031C" H 2100 7150 50  0001 L BNN
F 3 "" H 2100 7150 50  0001 L BNN
F 4 "CUI INC" H 2100 7150 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer recommendations" H 2100 7150 50  0001 L BNN "STANDARD"
F 6 "1.02" H 2100 7150 50  0001 L BNN "PARTREV"
	1    2100 7150
	1    0    0    -1  
$EndComp
$Comp
L HIVE-USB-Switch:PI3USB221EZWEX U3
U 1 1 61CDE67E
P 7600 1250
F 0 "U3" H 8400 1637 60  0000 C CNN
F 1 "PI3USB221EZWEX" H 8400 1531 60  0000 C CNN
F 2 "HIVE-USB-Switch:PI3USB221EZWEX" H 8400 1490 60  0001 C CNN
F 3 "" H 7600 1250 60  0000 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
$Comp
L HIVE-USB-to-UART:CP2102N-A02-GQFN20R U4
U 1 1 61CDF424
P 8900 3525
F 0 "U4" H 10300 3912 60  0000 C CNN
F 1 "CP2102N-A02-GQFN20R" H 10300 3806 60  0000 C CNN
F 2 "HIVE-USB-to-UART:CP2102N-A02-GQFN20R" H 10300 3765 60  0001 C CNN
F 3 "" H 8900 3525 60  0000 C CNN
	1    8900 3525
	-1   0    0    1   
$EndComp
Wire Wire Line
	550  5850 550  5750
$Comp
L power:GND #PWR0120
U 1 1 61D4F7BF
P 550 5950
F 0 "#PWR0120" H 550 5700 50  0001 C CNN
F 1 "GND" H 555 5777 50  0000 C CNN
F 2 "" H 550 5950 50  0001 C CNN
F 3 "" H 550 5950 50  0001 C CNN
	1    550  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5850 2350 5850
Connection ~ 550  5750
$Comp
L HIVE-Lin-Reg:MIC5528-3.3YMT-TR U1
U 1 1 61CDD1F9
P 550 5750
F 0 "U1" H 1350 6137 60  0000 C CNN
F 1 "MIC5528-3.3YMT-TR" H 1350 6031 60  0000 C CNN
F 2 "HIVE-linear-regulator:MIC5528-3.3YMT-TR" H 1350 5990 60  0001 C CNN
F 3 "" H 550 5750 60  0000 C CNN
	1    550  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6050 2150 6200
Wire Wire Line
	2150 6200 2350 6200
Wire Wire Line
	2350 5850 2700 5850
$Comp
L power:+5V #PWR0121
U 1 1 61DB20D3
P 2375 7050
F 0 "#PWR0121" H 2375 6900 50  0001 C CNN
F 1 "+5V" H 2390 7223 50  0000 C CNN
F 2 "" H 2375 7050 50  0001 C CNN
F 3 "" H 2375 7050 50  0001 C CNN
	1    2375 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61DB3ABA
P 2375 7250
F 0 "#PWR0122" H 2375 7000 50  0001 C CNN
F 1 "GND" H 2380 7077 50  0000 C CNN
F 2 "" H 2375 7250 50  0001 C CNN
F 3 "" H 2375 7250 50  0001 C CNN
	1    2375 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 7250 2300 7250
Wire Wire Line
	2300 7150 2300 7250
Connection ~ 2300 7250
Wire Wire Line
	2300 7050 2375 7050
NoConn ~ 9050 4825
$Comp
L HIVE-Micro-USB:10118193-0001LF J6
U 1 1 61CDD879
P 9050 4525
F 0 "J6" H 9292 3838 60  0000 C CNN
F 1 "Micro-USB " H 9292 3944 60  0000 C CNN
F 2 "HIVE-micro-usb:10118193-0001LF" H 9450 4265 60  0001 C CNN
F 3 "" H 9050 4525 60  0000 C CNN
	1    9050 4525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61DDE252
P 8875 4925
F 0 "#PWR0123" H 8875 4675 50  0001 C CNN
F 1 "GND" H 8880 4752 50  0000 C CNN
F 2 "" H 8875 4925 50  0001 C CNN
F 3 "" H 8875 4925 50  0001 C CNN
	1    8875 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4925 8875 4925
Wire Wire Line
	8925 4525 9050 4525
Text GLabel 9050 4725 0    50   Input ~ 0
USB)D+
Text GLabel 9050 4625 0    50   Input ~ 0
USB)D-
$Comp
L power:GND #PWR0124
U 1 1 61DF8D32
P 7600 1650
F 0 "#PWR0124" H 7600 1400 50  0001 C CNN
F 1 "GND" H 7605 1477 50  0000 C CNN
F 2 "" H 7600 1650 50  0001 C CNN
F 3 "" H 7600 1650 50  0001 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1250 9375 1250
Wire Wire Line
	9250 1350 9200 1350
$Comp
L power:GND #PWR0127
U 1 1 61E1260F
P 9200 1750
F 0 "#PWR0127" H 9200 1500 50  0001 C CNN
F 1 "GND" H 9205 1577 50  0000 C CNN
F 2 "" H 9200 1750 50  0001 C CNN
F 3 "" H 9200 1750 50  0001 C CNN
	1    9200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1450 9300 1450
Wire Wire Line
	9300 1450 9300 1475
Text GLabel 9200 1550 2    50   Input ~ 0
USB)D+
Text GLabel 9200 1650 2    50   Input ~ 0
USB)D-
Text GLabel 7600 1450 0    50   Input ~ 0
UART)D+
Text GLabel 7600 1350 0    50   Input ~ 0
ESP32)D-
Text GLabel 7600 1250 0    50   Input ~ 0
ESP32)D+
Text GLabel 7600 1550 0    50   Input ~ 0
UART)D-
Text GLabel 8900 3225 2    50   Input ~ 0
UART)D+
Text GLabel 8900 3125 2    50   Input ~ 0
UART)D-
Text GLabel 5200 2800 2    50   Input ~ 0
ESP32)D-
Text GLabel 5200 2700 2    50   Input ~ 0
ESP32)D+
NoConn ~ 8900 3525
NoConn ~ 8900 3425
$Comp
L power:GND #PWR0128
U 1 1 61E81A4C
P 9125 3325
F 0 "#PWR0128" H 9125 3075 50  0001 C CNN
F 1 "GND" H 9130 3152 50  0000 C CNN
F 2 "" H 9125 3325 50  0001 C CNN
F 3 "" H 9125 3325 50  0001 C CNN
	1    9125 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3325 9125 3325
NoConn ~ 6100 3425
NoConn ~ 6100 3325
NoConn ~ 6100 2925
Text GLabel 6100 3125 0    50   Input ~ 0
RX0
Text GLabel 6100 3225 0    50   Input ~ 0
TX0
Text GLabel 8450 6050 0    50   Input ~ 0
BOOT
NoConn ~ 6100 3025
NoConn ~ 6100 2825
NoConn ~ 6100 2725
NoConn ~ 6100 2525
$Comp
L power:GND #PWR0130
U 1 1 61DD7C2F
P 5800 3525
F 0 "#PWR0130" H 5800 3275 50  0001 C CNN
F 1 "GND" H 5805 3352 50  0000 C CNN
F 2 "" H 5800 3525 50  0001 C CNN
F 3 "" H 5800 3525 50  0001 C CNN
	1    5800 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3525 6100 3525
Wire Wire Line
	5800 3525 5800 2625
Wire Wire Line
	5800 2625 6100 2625
Connection ~ 5800 3525
Wire Notes Line
	450  4850 6970 4850
$Comp
L HIVE-lvl-shifter:74LVC2T45DC,125 IC1
U 1 1 61E47FB3
P 4775 5475
F 0 "IC1" H 5425 5742 50  0000 C CNN
F 1 "74LVC2T45DC,125" H 5425 5651 50  0000 C CNN
F 2 "HIVE-Level-Shifter:SOP50P310X100-8N" H 4775 5475 50  0001 L BNN
F 3 "" H 4775 5475 50  0001 L BNN
F 4 "https://www.mouser.com/Search/Refine.aspx?Keyword=771-74LVC2T45DC125" H 4775 5475 50  0001 L BNN "MOUSER_PRICE-STOCK"
F 5 "http://uk.rs-online.com/web/p/products/8168842P" H 4775 5475 50  0001 L BNN "RS_PRICE-STOCK"
F 6 "74LVC2T45; 74LVCH2T45 - Dual supply translating transceiver; 3-state@en-us" H 4775 5475 50  0001 L BNN "DESCRIPTION"
F 7 "74LVC2T45DC,125" H 4775 5475 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
F 8 "771-74LVC2T45DC125" H 4775 5475 50  0001 L BNN "MOUSER_PART_NUMBER"
F 9 "Nexperia" H 4775 5475 50  0001 L BNN "MANUFACTURER_NAME"
F 10 "8168842P" H 4775 5475 50  0001 L BNN "RS_PART_NUMBER"
F 11 "1mm" H 4775 5475 50  0001 L BNN "HEIGHT"
	1    4775 5475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 61E67661
P 4775 5775
F 0 "#PWR0131" H 4775 5525 50  0001 C CNN
F 1 "GND" H 4780 5602 50  0000 C CNN
F 2 "" H 4775 5775 50  0001 C CNN
F 3 "" H 4775 5775 50  0001 C CNN
	1    4775 5775
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 61E72F15
P 4125 5475
F 0 "#PWR0132" H 4125 5325 50  0001 C CNN
F 1 "+3V3" H 4140 5648 50  0000 C CNN
F 2 "" H 4125 5475 50  0001 C CNN
F 3 "" H 4125 5475 50  0001 C CNN
	1    4125 5475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 61E8313B
P 6425 5475
F 0 "#PWR0133" H 6425 5325 50  0001 C CNN
F 1 "+5V" H 6440 5648 50  0000 C CNN
F 2 "" H 6425 5475 50  0001 C CNN
F 3 "" H 6425 5475 50  0001 C CNN
	1    6425 5475
	1    0    0    -1  
$EndComp
Text GLabel 6075 5575 2    47   Input ~ 0
DIN1
Text GLabel 6075 5675 2    47   Input ~ 0
DIN2
Text GLabel 5200 3950 2    50   Input ~ 0
Neopixel2
Text GLabel 5200 3850 2    50   Input ~ 0
Neopixel1
Text GLabel 4625 5675 0    50   Input ~ 0
Neopixel2
Text GLabel 4625 5575 0    50   Input ~ 0
Neopixel1
Wire Wire Line
	4625 5675 4775 5675
Wire Wire Line
	4775 5575 4625 5575
$Comp
L Device:R_US R5
U 1 1 61EDDDAD
P 6075 5925
F 0 "R5" H 6007 5879 50  0000 R CNN
F 1 "10k" H 6007 5970 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6115 5915 50  0001 C CNN
F 3 "~" H 6075 5925 50  0001 C CNN
	1    6075 5925
	1    0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 61EECD59
P 6175 6075
F 0 "#PWR0134" H 6175 5925 50  0001 C CNN
F 1 "+3V3" H 6190 6248 50  0000 C CNN
F 2 "" H 6175 6075 50  0001 C CNN
F 3 "" H 6175 6075 50  0001 C CNN
	1    6175 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 6075 6175 6075
$Comp
L Device:C C11
U 1 1 62010857
P 10250 2775
F 0 "C11" H 10365 2821 50  0000 L CNN
F 1 "0.1 uF" H 10365 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10288 2625 50  0001 C CNN
F 3 "~" H 10250 2775 50  0001 C CNN
	1    10250 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6201085D
P 10750 2775
F 0 "C12" H 10865 2821 50  0000 L CNN
F 1 "4.7 uF" H 10865 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10788 2625 50  0001 C CNN
F 3 "~" H 10750 2775 50  0001 C CNN
	1    10750 2775
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0135
U 1 1 6201F593
P 10475 2625
F 0 "#PWR0135" H 10475 2475 50  0001 C CNN
F 1 "+3V3" H 10490 2798 50  0000 C CNN
F 2 "" H 10475 2625 50  0001 C CNN
F 3 "" H 10475 2625 50  0001 C CNN
	1    10475 2625
	1    0    0    -1  
$EndComp
Connection ~ 775  7200
$Comp
L power:GND #PWR0136
U 1 1 6203B515
P 10475 2925
F 0 "#PWR0136" H 10475 2675 50  0001 C CNN
F 1 "GND" H 10480 2752 50  0000 C CNN
F 2 "" H 10475 2925 50  0001 C CNN
F 3 "" H 10475 2925 50  0001 C CNN
	1    10475 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2625 10475 2625
Wire Wire Line
	10750 2625 10475 2625
Connection ~ 10475 2625
Wire Wire Line
	10750 2925 10475 2925
Wire Wire Line
	10475 2925 10250 2925
Connection ~ 10475 2925
Text Notes 10200 3325 0    50   ~ 0
*route as close to \nbridge as possible
$Comp
L Device:R_US R8
U 1 1 62085F7D
P 9125 2575
F 0 "R8" H 9057 2529 50  0000 R CNN
F 1 "10k" H 9057 2620 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9165 2565 50  0001 C CNN
F 3 "~" H 9125 2575 50  0001 C CNN
	1    9125 2575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8900 2925 8900 2975
Connection ~ 8900 2975
Wire Wire Line
	8900 2975 8900 3025
$Comp
L power:+3V3 #PWR0137
U 1 1 620B4EAA
P 9400 2975
F 0 "#PWR0137" H 9400 2825 50  0001 C CNN
F 1 "+3V3" H 9415 3148 50  0000 C CNN
F 2 "" H 9400 2975 50  0001 C CNN
F 3 "" H 9400 2975 50  0001 C CNN
	1    9400 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 620BA983
P 9725 2550
F 0 "R9" H 9657 2596 50  0000 R CNN
F 1 "22.1k" H 9657 2505 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9765 2540 50  0001 C CNN
F 3 "~" H 9725 2550 50  0001 C CNN
	1    9725 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 620BC721
P 9725 2850
F 0 "R10" H 9657 2896 50  0000 R CNN
F 1 "47.5k" H 9657 2805 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9765 2840 50  0001 C CNN
F 3 "~" H 9725 2850 50  0001 C CNN
	1    9725 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 620C4544
P 9725 3000
F 0 "#PWR0138" H 9725 2750 50  0001 C CNN
F 1 "GND" H 9730 2827 50  0000 C CNN
F 2 "" H 9725 3000 50  0001 C CNN
F 3 "" H 9725 3000 50  0001 C CNN
	1    9725 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0140
U 1 1 620D31B8
P 9125 2425
F 0 "#PWR0140" H 9125 2275 50  0001 C CNN
F 1 "+3V3" H 9140 2598 50  0000 C CNN
F 2 "" H 9125 2425 50  0001 C CNN
F 3 "" H 9125 2425 50  0001 C CNN
	1    9125 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 2700 9250 2700
Connection ~ 9725 2700
Wire Wire Line
	8900 2825 9250 2825
$Comp
L HIVE-tvs-diodes:SP0503BAHTG D4
U 1 1 62136605
P 7975 4625
F 0 "D4" H 7975 4992 50  0000 C CNN
F 1 "SP0503BAHTG" H 7975 4901 50  0000 C CNN
F 2 "HIVE-TVS-Diodes:SOT143" H 7975 4625 50  0001 L BNN
F 3 "" H 7975 4625 50  0001 L BNN
F 4 "Littelfuse" H 7975 4625 50  0001 L BNN "MF"
F 5 "SP0503BAHTG" H 7975 4625 50  0001 L BNN "MP"
F 6 "TVS DIODE 5.5VWM 8.5VC SOT143" H 7975 4625 50  0001 L BNN "DESCRIPTION"
F 7 "Good" H 7975 4625 50  0001 L BNN "AVAILABILITY"
F 8 "IPC-7351B" H 7975 4625 50  0001 L BNN "STANDARD"
F 9 "SOT-143 Littelfuse" H 7975 4625 50  0001 L BNN "PACKAGE"
F 10 "N/A" H 7975 4625 50  0001 L BNN "PARTREV"
F 11 "0.46 USD" H 7975 4625 50  0001 L BNN "PRICE"
	1    7975 4625
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 62161491
P 8375 4725
F 0 "#PWR0141" H 8375 4475 50  0001 C CNN
F 1 "GND" H 8380 4552 50  0000 C CNN
F 2 "" H 8375 4725 50  0001 C CNN
F 3 "" H 8375 4725 50  0001 C CNN
	1    8375 4725
	1    0    0    -1  
$EndComp
Text GLabel 7575 4725 0    50   Input ~ 0
USB)D+
Text GLabel 7575 4525 0    50   Input ~ 0
USB)D-
$Comp
L Device:R_US R1
U 1 1 61D9B421
P 1650 1100
F 0 "R1" H 1718 1146 50  0000 L CNN
F 1 "470" H 1718 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1690 1090 50  0001 C CNN
F 3 "~" H 1650 1100 50  0001 C CNN
	1    1650 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 61D9F772
P 2000 950
F 0 "R2" H 2068 996 50  0000 L CNN
F 1 "10k" H 2068 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2040 940 50  0001 C CNN
F 3 "~" H 2000 950 50  0001 C CNN
	1    2000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1100 2000 1100
Connection ~ 2000 1100
Wire Wire Line
	2000 1100 2350 1100
$Comp
L power:GND #PWR0143
U 1 1 61DBF639
P 2050 5400
F 0 "#PWR0143" H 2050 5150 50  0001 C CNN
F 1 "GND" H 2055 5227 50  0000 C CNN
F 2 "" H 2050 5400 50  0001 C CNN
F 3 "" H 2050 5400 50  0001 C CNN
	1    2050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5750 2150 5400
Wire Wire Line
	8900 2975 9400 2975
Text GLabel 5200 3550 2    50   Input ~ 0
IO45
Text GLabel 5200 2100 2    50   Input ~ 0
IO46
Text GLabel 10900 6200 2    50   Input ~ 0
IO46
$Comp
L Device:R_US R14
U 1 1 61E624F6
P 10750 6200
F 0 "R14" H 10682 6154 50  0000 R CNN
F 1 "470" H 10682 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10790 6190 50  0001 C CNN
F 3 "~" H 10750 6200 50  0001 C CNN
	1    10750 6200
	0    1    1    0   
$EndComp
Text GLabel 10900 5900 2    50   Input ~ 0
IO45
$Comp
L Device:R_US R13
U 1 1 61E0CB71
P 10750 5900
F 0 "R13" H 10682 5854 50  0000 R CNN
F 1 "470" H 10682 5945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10790 5890 50  0001 C CNN
F 3 "~" H 10750 5900 50  0001 C CNN
	1    10750 5900
	0    1    1    0   
$EndComp
Text GLabel 9825 5900 0    50   Input ~ 0
CHIP_PU
$Comp
L power:+3V3 #PWR0144
U 1 1 620BA8F1
P 9900 5675
F 0 "#PWR0144" H 9900 5525 50  0001 C CNN
F 1 "+3V3" H 9915 5848 50  0000 C CNN
F 2 "" H 9900 5675 50  0001 C CNN
F 3 "" H 9900 5675 50  0001 C CNN
	1    9900 5675
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0145
U 1 1 620CD1BB
P 10625 5675
F 0 "#PWR0145" H 10625 5525 50  0001 C CNN
F 1 "+3V3" H 10640 5848 50  0000 C CNN
F 2 "" H 10625 5675 50  0001 C CNN
F 3 "" H 10625 5675 50  0001 C CNN
	1    10625 5675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 620D59D7
P 9800 6300
F 0 "#PWR0146" H 9800 6050 50  0001 C CNN
F 1 "GND" H 9805 6127 50  0000 C CNN
F 2 "" H 9800 6300 50  0001 C CNN
F 3 "" H 9800 6300 50  0001 C CNN
	1    9800 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 620DEF2B
P 10725 6300
F 0 "#PWR0147" H 10725 6050 50  0001 C CNN
F 1 "GND" H 10730 6127 50  0000 C CNN
F 2 "" H 10725 6300 50  0001 C CNN
F 3 "" H 10725 6300 50  0001 C CNN
	1    10725 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5675 9900 5800
Wire Wire Line
	9900 5800 10025 5800
Wire Wire Line
	9900 5800 9900 6100
Wire Wire Line
	9900 6100 10025 6100
Connection ~ 9900 5800
Wire Wire Line
	10625 5675 10625 5800
Wire Wire Line
	10625 5800 10525 5800
Wire Wire Line
	10625 5800 10625 6100
Wire Wire Line
	10625 6100 10525 6100
Connection ~ 10625 5800
Wire Wire Line
	9800 6300 9950 6300
Wire Wire Line
	10025 6000 9950 6000
Wire Wire Line
	9950 6000 9950 6300
Connection ~ 9950 6300
Wire Wire Line
	9950 6300 10025 6300
Wire Wire Line
	10525 6300 10575 6300
Wire Wire Line
	10525 6000 10575 6000
Connection ~ 10575 6300
Wire Wire Line
	10575 6300 10725 6300
Wire Wire Line
	10575 6000 10575 6300
Wire Wire Line
	10600 6200 10525 6200
Wire Wire Line
	10600 5900 10525 5900
Text GLabel 9625 6200 0    50   Input ~ 0
BOOT
$Comp
L Device:R_US R11
U 1 1 62145E31
P 9775 6200
F 0 "R11" H 9707 6154 50  0000 R CNN
F 1 "470" H 9707 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9815 6190 50  0001 C CNN
F 3 "~" H 9775 6200 50  0001 C CNN
	1    9775 6200
	0    -1   1    0   
$EndComp
Wire Wire Line
	9925 6200 10025 6200
Text GLabel 2350 1800 0    50   Input ~ 0
IO5
Text GLabel 2350 1900 0    50   Input ~ 0
IO6
Text GLabel 2350 2000 0    50   Input ~ 0
IO7
Text GLabel 2350 2100 0    50   Input ~ 0
IO8
Text GLabel 2350 2200 0    50   Input ~ 0
IO9
Text GLabel 2350 2300 0    50   Input ~ 0
IO10
Text GLabel 2350 2400 0    50   Input ~ 0
IO11
Text GLabel 2350 2500 0    50   Input ~ 0
IO12
Text GLabel 2350 2600 0    50   Input ~ 0
IO13
Text GLabel 2350 2700 0    50   Input ~ 0
IO14
NoConn ~ 2350 1400
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 61DF0CFC
P 3300 5775
F 0 "J2" H 3218 5350 50  0000 C CNN
F 1 "I2C" H 3218 5441 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3300 5775 50  0001 C CNN
F 3 "~" H 3300 5775 50  0001 C CNN
	1    3300 5775
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J3
U 1 1 61E3F87F
P 3725 7000
F 0 "J3" H 3775 7517 50  0000 C CNN
F 1 "GPIO" H 3775 7426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 3725 7000 50  0001 C CNN
F 3 "~" H 3725 7000 50  0001 C CNN
	1    3725 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0148
U 1 1 61E482B4
P 3225 6700
F 0 "#PWR0148" H 3225 6550 50  0001 C CNN
F 1 "+3V3" H 3240 6873 50  0000 C CNN
F 2 "" H 3225 6700 50  0001 C CNN
F 3 "" H 3225 6700 50  0001 C CNN
	1    3225 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 6700 3525 6700
$Comp
L power:+5V #PWR0149
U 1 1 61E51CDE
P 4225 6700
F 0 "#PWR0149" H 4225 6550 50  0001 C CNN
F 1 "+5V" H 4240 6873 50  0000 C CNN
F 2 "" H 4225 6700 50  0001 C CNN
F 3 "" H 4225 6700 50  0001 C CNN
	1    4225 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 6700 4025 6700
$Comp
L power:GND #PWR0150
U 1 1 61E54B8A
P 4025 7300
F 0 "#PWR0150" H 4025 7050 50  0001 C CNN
F 1 "GND" H 4030 7127 50  0000 C CNN
F 2 "" H 4025 7300 50  0001 C CNN
F 3 "" H 4025 7300 50  0001 C CNN
	1    4025 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 61E5B5D7
P 3525 7300
F 0 "#PWR0151" H 3525 7050 50  0001 C CNN
F 1 "GND" H 3530 7127 50  0000 C CNN
F 2 "" H 3525 7300 50  0001 C CNN
F 3 "" H 3525 7300 50  0001 C CNN
	1    3525 7300
	1    0    0    -1  
$EndComp
Text GLabel 4025 7200 2    50   Input ~ 0
IO5
Text GLabel 4025 7100 2    50   Input ~ 0
IO6
Text GLabel 4025 7000 2    50   Input ~ 0
IO7
Text GLabel 4025 6900 2    50   Input ~ 0
IO8
Text GLabel 3525 7200 0    50   Input ~ 0
IO9
Text GLabel 3525 7100 0    50   Input ~ 0
IO10
Text GLabel 3525 7000 0    50   Input ~ 0
IO11
Text GLabel 3525 6900 0    50   Input ~ 0
IO12
Text GLabel 3525 6800 0    50   Input ~ 0
IO13
Text GLabel 4025 6800 2    50   Input ~ 0
IO14
Wire Notes Line
	6975 5400 11225 5400
Text Notes 7000 5600 0    118  ~ 0
Reset/Boot/Strapping
Wire Wire Line
	4125 5475 4775 5475
$Comp
L power:GND #PWR0152
U 1 1 61ED5950
P 3500 5875
F 0 "#PWR0152" H 3500 5625 50  0001 C CNN
F 1 "GND" H 3505 5702 50  0000 C CNN
F 2 "" H 3500 5875 50  0001 C CNN
F 3 "" H 3500 5875 50  0001 C CNN
	1    3500 5875
	1    0    0    -1  
$EndComp
Text GLabel 5200 1400 2    50   Input ~ 0
IO38-SDA
Text GLabel 5200 1500 2    50   Input ~ 0
IO37-SCL
Text GLabel 3500 5675 2    50   Input ~ 0
IO38-SDA
Text GLabel 3500 5775 2    50   Input ~ 0
IO37-SCL
$Comp
L power:+3V3 #PWR0153
U 1 1 61F3967F
P 3550 5575
F 0 "#PWR0153" H 3550 5425 50  0001 C CNN
F 1 "+3V3" H 3565 5748 50  0000 C CNN
F 2 "" H 3550 5575 50  0001 C CNN
F 3 "" H 3550 5575 50  0001 C CNN
	1    3550 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5575 3550 5575
$Comp
L Device:C C8
U 1 1 61F4CD50
P 4125 5850
F 0 "C8" H 4240 5896 50  0000 L CNN
F 1 "2.2 uF" H 4240 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4163 5700 50  0001 C CNN
F 3 "~" H 4125 5850 50  0001 C CNN
	1    4125 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 61F4CD56
P 4125 6000
F 0 "#PWR0154" H 4125 5750 50  0001 C CNN
F 1 "GND" H 4130 5827 50  0000 C CNN
F 2 "" H 4125 6000 50  0001 C CNN
F 3 "" H 4125 6000 50  0001 C CNN
	1    4125 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 5475 4125 5700
Connection ~ 4125 5475
$Comp
L Device:C C9
U 1 1 61F5835B
P 6425 5625
F 0 "C9" H 6540 5671 50  0000 L CNN
F 1 "100 uF" H 6540 5580 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6463 5475 50  0001 C CNN
F 3 "~" H 6425 5625 50  0001 C CNN
	1    6425 5625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 61F58361
P 6425 5775
F 0 "#PWR0155" H 6425 5525 50  0001 C CNN
F 1 "GND" H 6430 5602 50  0000 C CNN
F 2 "" H 6425 5775 50  0001 C CNN
F 3 "" H 6425 5775 50  0001 C CNN
	1    6425 5775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 5475 6425 5475
Connection ~ 6425 5475
Text Notes 900  6875 0    51   ~ 0
*put near lin. reg.
Wire Wire Line
	9200 1750 9600 1750
Wire Wire Line
	9600 1750 9600 1575
Wire Wire Line
	9600 1575 9850 1575
Connection ~ 9200 1750
Wire Wire Line
	9300 1475 9850 1475
Text GLabel 5200 3000 2    51   Input ~ 0
MTMS
Text GLabel 5200 3100 2    51   Input ~ 0
MTDI
Text GLabel 5200 3200 2    51   Input ~ 0
MTDO
Text GLabel 5200 3300 2    51   Input ~ 0
MTCK
$Comp
L power:+3V3 #PWR0156
U 1 1 62066430
P 10175 4500
F 0 "#PWR0156" H 10175 4350 50  0001 C CNN
F 1 "+3V3" H 10190 4673 50  0000 C CNN
F 2 "" H 10175 4500 50  0001 C CNN
F 3 "" H 10175 4500 50  0001 C CNN
	1    10175 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 620699F0
P 10675 4700
F 0 "#PWR0157" H 10675 4450 50  0001 C CNN
F 1 "GND" H 10680 4527 50  0000 C CNN
F 2 "" H 10675 4700 50  0001 C CNN
F 3 "" H 10675 4700 50  0001 C CNN
	1    10675 4700
	1    0    0    -1  
$EndComp
Text GLabel 10675 4500 2    51   Input ~ 0
MTMS
Text GLabel 10675 4600 2    51   Input ~ 0
MTDI
Text GLabel 10175 4700 0    51   Input ~ 0
MTDO
Text GLabel 10175 4600 0    51   Input ~ 0
MTCK
Wire Wire Line
	9250 2700 9250 2825
$Comp
L Device:C C10
U 1 1 61FE6102
P 9375 1100
F 0 "C10" H 9490 1146 50  0000 L CNN
F 1 "0.1 uF" H 9490 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9413 950 50  0001 C CNN
F 3 "~" H 9375 1100 50  0001 C CNN
	1    9375 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 61DFD74C
P 9375 1250
F 0 "#PWR0158" H 9375 1000 50  0001 C CNN
F 1 "GND" H 9380 1077 50  0000 C CNN
F 2 "" H 9375 1250 50  0001 C CNN
F 3 "" H 9375 1250 50  0001 C CNN
	1    9375 1250
	1    0    0    -1  
$EndComp
Connection ~ 9375 950 
Wire Wire Line
	9375 950  9850 950 
Connection ~ 9375 1250
Wire Wire Line
	9250 950  9250 1350
Wire Wire Line
	2050 5400 2150 5400
$Comp
L power:GND #PWR0159
U 1 1 62103A07
P 2025 4100
F 0 "#PWR0159" H 2025 3850 50  0001 C CNN
F 1 "GND" H 2030 3927 50  0000 C CNN
F 2 "" H 2025 4100 50  0001 C CNN
F 3 "" H 2025 4100 50  0001 C CNN
	1    2025 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 3800 2300 3800
Connection ~ 2300 3800
Wire Wire Line
	8025 6050 8025 6075
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 61E349C3
P 7725 6050
F 0 "SW1" H 7725 6317 50  0000 C CNN
F 1 "SW_DIP_x01" H 7725 6226 50  0000 C CNN
F 2 "HIVE-Button:PTS636 SM25F SMTR LFS" H 7725 6050 50  0001 C CNN
F 3 "~" H 7725 6050 50  0001 C CNN
	1    7725 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61E56410
P 9050 6075
F 0 "#PWR0129" H 9050 5825 50  0001 C CNN
F 1 "GND" H 9055 5902 50  0000 C CNN
F 2 "" H 9050 6075 50  0001 C CNN
F 3 "" H 9050 6075 50  0001 C CNN
	1    9050 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 6050 9050 6075
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 61E56417
P 8750 6050
F 0 "SW2" H 8750 6317 50  0000 C CNN
F 1 "SW_DIP_x01" H 8750 6226 50  0000 C CNN
F 2 "HIVE-Button:PTS636 SM25F SMTR LFS" H 8750 6050 50  0001 C CNN
F 3 "~" H 8750 6050 50  0001 C CNN
	1    8750 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J8
U 1 1 61DDC3DA
P 10225 6000
F 0 "J8" H 10275 6417 50  0000 C CNN
F 1 "STRAPPING" H 10275 6326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 10225 6000 50  0001 C CNN
F 3 "~" H 10225 6000 50  0001 C CNN
	1    10225 6000
	1    0    0    -1  
$EndComp
Text Label 1800 2900 0    51   ~ 0
XTAL_P
Text Label 1775 3550 0    51   ~ 0
XTAL_N
Wire Wire Line
	9250 950  9375 950 
$Comp
L power:+3V3 #PWR0126
U 1 1 61EB1766
P 9250 950
F 0 "#PWR0126" H 9250 800 50  0001 C CNN
F 1 "+3V3" H 9265 1123 50  0000 C CNN
F 2 "" H 9250 950 50  0001 C CNN
F 3 "" H 9250 950 50  0001 C CNN
	1    9250 950 
	1    0    0    -1  
$EndComp
Connection ~ 9250 950 
$Comp
L power:VBUS #PWR0125
U 1 1 61ED9ED1
P 9725 2400
F 0 "#PWR0125" H 9725 2250 50  0001 C CNN
F 1 "VBUS" H 9740 2573 50  0000 C CNN
F 2 "" H 9725 2400 50  0001 C CNN
F 3 "" H 9725 2400 50  0001 C CNN
	1    9725 2400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0139
U 1 1 61EE1700
P 8925 4525
F 0 "#PWR0139" H 8925 4375 50  0001 C CNN
F 1 "VBUS" H 8940 4698 50  0000 C CNN
F 2 "" H 8925 4525 50  0001 C CNN
F 3 "" H 8925 4525 50  0001 C CNN
	1    8925 4525
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0142
U 1 1 61EF01E4
P 8375 4525
F 0 "#PWR0142" H 8375 4375 50  0001 C CNN
F 1 "VBUS" H 8390 4698 50  0000 C CNN
F 2 "" H 8375 4525 50  0001 C CNN
F 3 "" H 8375 4525 50  0001 C CNN
	1    8375 4525
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J9
U 1 1 61EF2664
P 10375 4600
F 0 "J9" H 10425 4917 50  0000 C CNN
F 1 "JTAG" H 10425 4826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10375 4600 50  0001 C CNN
F 3 "~" H 10375 4600 50  0001 C CNN
	1    10375 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9825 5900 10025 5900
Text Label 8950 2825 0    51   ~ 0
VSens
Text Label 8925 2725 0    51   ~ 0
RSTB
Wire Wire Line
	8900 2725 9125 2725
Text Label 9550 1475 0    51   ~ 0
select
$Comp
L Device:C C6
U 1 1 62103A01
P 2025 3950
F 0 "C6" H 2140 3996 50  0000 L CNN
F 1 "2.2 uF" H 2140 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2063 3800 50  0001 C CNN
F 3 "~" H 2025 3950 50  0001 C CNN
	1    2025 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 950  9850 1375
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 61D24684
P 10050 1475
F 0 "J7" H 10158 1756 50  0000 C CNN
F 1 "Select Jumper" H 10158 1665 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10050 1475 50  0001 C CNN
F 3 "~" H 10050 1475 50  0001 C CNN
	1    10050 1475
	-1   0    0    1   
$EndComp
$EndSCHEMATC
