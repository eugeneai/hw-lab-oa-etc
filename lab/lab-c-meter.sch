EESchema Schematic File Version 4
LIBS:lab-c-meter-cache
EELAYER 26 0
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
L Amplifier_Operational:LM324 U1
U 1 1 5C5E5CEC
P 2800 1100
F 0 "U1" H 2850 950 50  0000 C CNN
F 1 "LM324" H 2750 1100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2750 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2850 1300 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 5C5E5D45
P 1900 2200
F 0 "U1" H 1900 2400 50  0000 C CNN
F 1 "LM324" H 1850 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1850 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1950 2400 50  0001 C CNN
	2    1900 2200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5C5E5FA0
P 4200 1100
F 0 "U1" H 3900 1250 50  0000 L CNN
F 1 "LM324" H 4000 1100 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4150 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4250 1300 50  0001 C CNN
	5    4200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5C5E6084
P 900 800
F 0 "#PWR0105" H 900 650 50  0001 C CNN
F 1 "+5V" H 915 973 50  0000 C CNN
F 2 "" H 900 800 50  0001 C CNN
F 3 "" H 900 800 50  0001 C CNN
	1    900  800 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 5C5E609F
P 900 1450
F 0 "#PWR0106" H 900 1200 50  0001 C CNN
F 1 "GNDD" H 904 1295 50  0000 C CNN
F 2 "" H 900 1450 50  0001 C CNN
F 3 "" H 900 1450 50  0001 C CNN
	1    900  1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C5E61FC
P 2650 1400
F 0 "R9" V 2750 1300 50  0000 C CNN
F 1 "4K7" V 2750 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 1400 50  0001 C CNN
F 3 "~" H 2650 1400 50  0001 C CNN
	1    2650 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1200 2500 1400
Wire Wire Line
	2800 1400 3100 1400
Wire Wire Line
	3100 1400 3100 1100
$Comp
L Device:C C1
U 1 1 5C5E692A
P 1300 2300
F 0 "C1" V 1450 2150 50  0000 L CNN
F 1 "22n" V 1450 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1338 2150 50  0001 C CNN
F 3 "~" H 1300 2300 50  0001 C CNN
	1    1300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C5E7175
P 1850 1800
F 0 "R4" V 1750 1700 50  0000 C CNN
F 1 "100K" V 1950 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 1800 50  0001 C CNN
F 3 "~" H 1850 1800 50  0001 C CNN
	1    1850 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 1800 1550 1800
Wire Wire Line
	1550 1800 1550 2100
Wire Wire Line
	1550 2100 1600 2100
$Comp
L Device:R R3
U 1 1 5C5E7476
P 1300 2100
F 0 "R3" V 1200 2000 50  0000 C CNN
F 1 "11K" V 1200 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2100 50  0001 C CNN
F 3 "~" H 1300 2100 50  0001 C CNN
	1    1300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 2100 1450 2100
Connection ~ 1550 2100
$Comp
L Device:R R6
U 1 1 5C5E8D7F
P 2400 2200
F 0 "R6" V 2300 2100 50  0000 C CNN
F 1 "10K" V 2300 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 2200 50  0001 C CNN
F 3 "~" H 2400 2200 50  0001 C CNN
	1    2400 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2200 2200 2200
Connection ~ 3100 1100
Wire Wire Line
	4100 1400 4100 1450
$Comp
L Device:C C8
U 1 1 5C623796
P 900 1150
F 0 "C8" H 700 1250 50  0000 L CNN
F 1 "100n" H 650 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 938 1000 50  0001 C CNN
F 3 "~" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  800  900  850 
$Comp
L Device:R R5
U 1 1 5C767B80
P 2350 850
F 0 "R5" V 2500 700 50  0000 C CNN
F 1 "100K" V 2500 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 850 50  0001 C CNN
F 3 "~" H 2350 850 50  0001 C CNN
	1    2350 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5C767C5C
P 2350 1150
F 0 "R7" V 2500 1100 50  0000 C CNN
F 1 "100K" V 2500 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 1150 50  0001 C CNN
F 3 "~" H 2350 1150 50  0001 C CNN
	1    2350 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1000 2500 1000
Connection ~ 2350 1000
$Comp
L power:+5V #PWR01
U 1 1 5C76CC8B
P 2350 700
F 0 "#PWR01" H 2350 550 50  0001 C CNN
F 1 "+5V" H 2365 873 50  0000 C CNN
F 2 "" H 2350 700 50  0001 C CNN
F 3 "" H 2350 700 50  0001 C CNN
	1    2350 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 5C76CCF8
P 2350 1300
F 0 "#PWR02" H 2350 1050 50  0001 C CNN
F 1 "GNDD" H 2354 1145 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
Text GLabel 3400 1100 2    50   Input ~ 0
MID
$Comp
L Device:CP C3
U 1 1 5C76D200
P 3300 1250
F 0 "C3" V 3150 1050 50  0000 C CNN
F 1 "220u 6.3V" V 3500 1100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3338 1100 50  0001 C CNN
F 3 "~" H 3300 1250 50  0001 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C76D535
P 3300 950
F 0 "C2" V 3450 950 50  0000 C CNN
F 1 "220u 6.3V" V 3100 1100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3338 800 50  0001 C CNN
F 3 "~" H 3300 950 50  0001 C CNN
	1    3300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1100 3300 1100
Connection ~ 3300 1100
$Comp
L power:+5V #PWR03
U 1 1 5C76FED2
P 3300 800
F 0 "#PWR03" H 3300 650 50  0001 C CNN
F 1 "+5V" H 3315 973 50  0000 C CNN
F 2 "" H 3300 800 50  0001 C CNN
F 3 "" H 3300 800 50  0001 C CNN
	1    3300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 5C76FF43
P 3300 1400
F 0 "#PWR04" H 3300 1150 50  0001 C CNN
F 1 "GNDD" H 3304 1245 50  0000 C CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1100 3300 1100
Text GLabel 1000 2300 0    50   Input ~ 0
MID
Wire Wire Line
	1150 2100 1150 2300
Wire Wire Line
	1000 2300 1150 2300
Connection ~ 1150 2300
Wire Wire Line
	1450 2300 1550 2300
Wire Wire Line
	1550 2300 1550 2600
Wire Wire Line
	1550 2950 1450 2950
Connection ~ 1550 2300
Wire Wire Line
	1550 2300 1600 2300
$Comp
L Device:R R1
U 1 1 5C77CE38
P 1100 2950
F 0 "R1" V 1000 2850 50  0000 C CNN
F 1 "0.33 0.5W" V 1200 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 1030 2950 50  0001 C CNN
F 3 "~" H 1100 2950 50  0001 C CNN
	1    1100 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C77D2FA
P 700 2950
F 0 "J1" H 806 3128 50  0000 C CNN
F 1 "IN" H 806 3037 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 700 2950 50  0001 C CNN
F 3 "~" H 700 2950 50  0001 C CNN
	1    700  2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2950 900  2950
Wire Wire Line
	900  3050 900  3250
$Comp
L Device:D D1
U 1 1 5C782610
P 1450 3100
F 0 "D1" V 1404 3179 50  0000 L CNN
F 1 "HER105" V 1495 3179 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_KathodeUp" H 1450 3100 50  0001 C CNN
F 3 "~" H 1450 3100 50  0001 C CNN
	1    1450 3100
	0    1    1    0   
$EndComp
Connection ~ 1450 2950
Wire Wire Line
	1450 2950 1250 2950
$Comp
L Device:D D2
U 1 1 5C782750
P 1950 3100
F 0 "D2" V 1996 3021 50  0000 R CNN
F 1 "HER105" V 1905 3021 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_KathodeUp" H 1950 3100 50  0001 C CNN
F 3 "~" H 1950 3100 50  0001 C CNN
	1    1950 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  3250 1450 3250
Text GLabel 2150 3250 2    50   Input ~ 0
MID
Wire Wire Line
	2150 3250 1950 3250
Connection ~ 1950 3250
$Comp
L Device:R R8
U 1 1 5C7929A9
P 3500 2600
F 0 "R8" V 3600 2500 50  0000 C CNN
F 1 "4K7" V 3600 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2600 50  0001 C CNN
F 3 "~" H 3500 2600 50  0001 C CNN
	1    3500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2400 3350 2600
Connection ~ 3950 2300
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5C5E5E05
P 3650 2300
F 0 "U1" H 3650 2450 50  0000 C CNN
F 1 "LM324" H 3600 2300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3600 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3700 2500 50  0001 C CNN
	3    3650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2200 2200 1950
Wire Wire Line
	2200 1950 2300 1950
Connection ~ 2200 2200
Text GLabel 2300 1950 2    50   Input ~ 0
CNT
Text Notes 1450 3400 0    50   ~ 0
1A/30A 400V
Wire Wire Line
	1450 3250 1950 3250
Connection ~ 1450 3250
Wire Wire Line
	1550 2950 1950 2950
Connection ~ 1550 2950
$Comp
L Device:D D3
U 1 1 5C7A83DA
P 2550 2350
F 0 "D3" V 2504 2429 50  0000 L CNN
F 1 "4148" V 2595 2429 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_KathodeUp" H 2550 2350 50  0001 C CNN
F 3 "~" H 2550 2350 50  0001 C CNN
	1    2550 2350
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5C7A850C
P 2900 2350
F 0 "D4" V 2946 2271 50  0000 R CNN
F 1 "4148" V 2855 2271 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_KathodeUp" H 2900 2350 50  0001 C CNN
F 3 "~" H 2900 2350 50  0001 C CNN
	1    2900 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 2200 2900 2200
Connection ~ 2550 2200
Wire Wire Line
	2900 2500 2550 2500
Text GLabel 2450 2500 0    50   Input ~ 0
MID
Wire Wire Line
	2550 2500 2450 2500
Connection ~ 2550 2500
Wire Wire Line
	2900 2200 3350 2200
Connection ~ 2900 2200
Wire Wire Line
	3950 1800 3950 2300
Wire Wire Line
	2000 1800 3950 1800
Wire Wire Line
	3950 2300 3950 2600
Wire Wire Line
	3950 2600 3650 2600
Wire Wire Line
	3950 2600 3950 2800
Connection ~ 3950 2600
$Comp
L Device:R R2
U 1 1 5C7C7AC9
P 1850 2800
F 0 "R2" V 1750 2700 50  0000 C CNN
F 1 "3K3" V 1750 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 2800 50  0001 C CNN
F 3 "~" H 1850 2800 50  0001 C CNN
	1    1850 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2800 2050 2800
Wire Wire Line
	1700 2800 1550 2800
Connection ~ 1550 2800
Wire Wire Line
	1550 2800 1550 2950
$Comp
L power:GNDD #PWR06
U 1 1 5C7CA0C4
P 4100 1450
F 0 "#PWR06" H 4100 1200 50  0001 C CNN
F 1 "GNDD" H 4104 1295 50  0000 C CNN
F 2 "" H 4100 1450 50  0001 C CNN
F 3 "" H 4100 1450 50  0001 C CNN
	1    4100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5C7CA12F
P 4100 800
F 0 "#PWR05" H 4100 650 50  0001 C CNN
F 1 "+5V" H 4115 973 50  0000 C CNN
F 2 "" H 4100 800 50  0001 C CNN
F 3 "" H 4100 800 50  0001 C CNN
	1    4100 800 
	1    0    0    -1  
$EndComp
Text Notes 2700 3150 0    50   ~ 0
T=2*R767*Cx*(1+ln(2*R3/R4))
$Comp
L Device:R R10
U 1 1 5C7DBECF
P 1850 2600
F 0 "R10" V 1750 2500 50  0000 C CNN
F 1 "1K0" V 1750 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 2600 50  0001 C CNN
F 3 "~" H 1850 2600 50  0001 C CNN
	1    1850 2600
	0    1    1    0   
$EndComp
Text Notes 2700 3250 0    50   ~ 0
R767=767
Wire Wire Line
	2000 2600 2050 2600
Wire Wire Line
	2050 2600 2050 2800
Connection ~ 2050 2800
Wire Wire Line
	2050 2800 3950 2800
Wire Wire Line
	1700 2600 1550 2600
Connection ~ 1550 2600
Wire Wire Line
	1550 2600 1550 2800
$Comp
L MCU_Microchip_ATmega:ATmega8-16AU U3
U 1 1 5C762CDD
P 7450 2450
F 0 "U3" H 7350 2200 50  0000 C CNN
F 1 "ATmega8-16AU" H 7350 2450 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7450 2450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 7450 2450 50  0001 C CNN
	1    7450 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J4
U 1 1 5C762EA0
P 4950 4200
F 0 "J4" H 5005 4667 50  0000 C CNN
F 1 "USB_B_Mini" H 5005 4576 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521_CircularHoles" H 5100 4150 50  0001 C CNN
F 3 "~" H 5100 4150 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5C762FEA
P 6000 4200
F 0 "R12" V 5900 4100 50  0000 C CNN
F 1 "68R" V 5900 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5930 4200 50  0001 C CNN
F 3 "~" H 6000 4200 50  0001 C CNN
	1    6000 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5C7630BF
P 6400 4300
F 0 "R14" V 6500 4200 50  0000 C CNN
F 1 "68R" V 6500 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 4300 50  0001 C CNN
F 3 "~" H 6400 4300 50  0001 C CNN
	1    6400 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4200 6650 4200
Wire Wire Line
	6550 4300 6650 4300
Text GLabel 6650 4200 2    50   Input ~ 0
D+
Text GLabel 6650 4300 2    50   Input ~ 0
D-
Text GLabel 8050 2950 2    50   Input ~ 0
D+
Text GLabel 8050 3050 2    50   Input ~ 0
D-
$Comp
L power:GNDD #PWR0101
U 1 1 5C7636A5
P 7450 3850
F 0 "#PWR0101" H 7450 3600 50  0001 C CNN
F 1 "GNDD" H 7454 3695 50  0000 C CNN
F 2 "" H 7450 3850 50  0001 C CNN
F 3 "" H 7450 3850 50  0001 C CNN
	1    7450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3850 7450 3850
Connection ~ 7450 3850
$Comp
L power:GNDD #PWR0102
U 1 1 5C764595
P 4950 4600
F 0 "#PWR0102" H 4950 4350 50  0001 C CNN
F 1 "GNDD" H 4954 4445 50  0000 C CNN
F 2 "" H 4950 4600 50  0001 C CNN
F 3 "" H 4950 4600 50  0001 C CNN
	1    4950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 5C7645D6
P 4850 4600
F 0 "#PWR0103" H 4850 4350 50  0001 C CNN
F 1 "GNDD" H 4854 4445 50  0000 C CNN
F 2 "" H 4850 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5C76469E
P 5350 4000
F 0 "#PWR0104" H 5350 3850 50  0001 C CNN
F 1 "+5V" H 5365 4173 50  0000 C CNN
F 2 "" H 5350 4000 50  0001 C CNN
F 3 "" H 5350 4000 50  0001 C CNN
	1    5350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4000 5350 4000
$Comp
L Device:Crystal Y1
U 1 1 5C765452
P 6400 1650
F 0 "Y1" V 6354 1781 50  0000 L CNN
F 1 "16MHz" V 6150 1600 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 6400 1650 50  0001 C CNN
F 3 "~" H 6400 1650 50  0001 C CNN
	1    6400 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1550 6700 1550
Wire Wire Line
	6700 1550 6700 1500
Wire Wire Line
	6700 1500 6400 1500
Wire Wire Line
	6400 1800 6700 1800
Wire Wire Line
	6700 1800 6700 1750
Wire Wire Line
	6700 1750 6850 1750
$Comp
L Device:C C4
U 1 1 5C7670D7
P 1200 1150
F 0 "C4" H 1000 1250 50  0000 L CNN
F 1 "100n" H 950 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 1000 50  0001 C CNN
F 3 "~" H 1200 1150 50  0001 C CNN
	1    1200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1300 1200 1450
Wire Wire Line
	1200 1450 900  1450
Connection ~ 900  1450
Wire Wire Line
	1200 1000 1200 850 
Wire Wire Line
	1200 850  900  850 
Wire Wire Line
	900  1300 900  1450
Connection ~ 900  850 
Wire Wire Line
	900  850  900  1000
$Comp
L Device:C C7
U 1 1 5C769416
P 5900 1500
F 0 "C7" H 5700 1600 50  0000 L CNN
F 1 "22p" H 5650 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 1350 50  0001 C CNN
F 3 "~" H 5900 1500 50  0001 C CNN
	1    5900 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5C76956B
P 5900 1900
F 0 "C9" H 5950 1800 50  0000 L CNN
F 1 "22p" H 5650 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 1750 50  0001 C CNN
F 3 "~" H 5900 1900 50  0001 C CNN
	1    5900 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5C76A794
P 6200 1650
F 0 "R13" V 6350 1600 50  0000 C CNN
F 1 "1M" V 6350 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 1650 50  0001 C CNN
F 3 "~" H 6200 1650 50  0001 C CNN
	1    6200 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 1500 6200 1500
Wire Wire Line
	6200 1500 6400 1500
Connection ~ 6200 1500
Connection ~ 6400 1500
Wire Wire Line
	6400 1800 6200 1800
Connection ~ 6400 1800
Wire Wire Line
	6200 1800 6200 1900
Wire Wire Line
	6200 1900 6050 1900
Connection ~ 6200 1800
$Comp
L power:GNDD #PWR0107
U 1 1 5C76F501
P 5750 1500
F 0 "#PWR0107" H 5750 1250 50  0001 C CNN
F 1 "GNDD" H 5754 1345 50  0000 C CNN
F 2 "" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0108
U 1 1 5C76F56C
P 5750 1900
F 0 "#PWR0108" H 5750 1650 50  0001 C CNN
F 1 "GNDD" H 5754 1745 50  0000 C CNN
F 2 "" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5C7740D3
P 7450 1050
F 0 "#PWR0112" H 7450 900 50  0001 C CNN
F 1 "+5V" H 7465 1223 50  0000 C CNN
F 2 "" H 7450 1050 50  0001 C CNN
F 3 "" H 7450 1050 50  0001 C CNN
	1    7450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5C774120
P 7550 1050
F 0 "#PWR0113" H 7550 900 50  0001 C CNN
F 1 "+5V" H 7565 1223 50  0000 C CNN
F 2 "" H 7550 1050 50  0001 C CNN
F 3 "" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5C774228
P 5500 4550
F 0 "D6" V 5454 4629 50  0000 L CNN
F 1 "3v6" V 5545 4629 50  0000 L CNN
F 2 "Diode_THT:D_5W_P5.08mm_Vertical_KathodeUp" H 5500 4550 50  0001 C CNN
F 3 "~" H 5500 4550 50  0001 C CNN
	1    5500 4550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D7
U 1 1 5C77430F
P 5850 4550
F 0 "D7" V 5804 4629 50  0000 L CNN
F 1 "3v6" V 5895 4629 50  0000 L CNN
F 2 "Diode_THT:D_5W_P5.08mm_Vertical_KathodeUp" H 5850 4550 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
	1    5850 4550
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0114
U 1 1 5C7743B9
P 5500 4700
F 0 "#PWR0114" H 5500 4450 50  0001 C CNN
F 1 "GNDD" H 5504 4545 50  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 5C77440A
P 5850 4700
F 0 "#PWR0115" H 5850 4450 50  0001 C CNN
F 1 "GNDD" H 5854 4545 50  0000 C CNN
F 2 "" H 5850 4700 50  0001 C CNN
F 3 "" H 5850 4700 50  0001 C CNN
	1    5850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5500 4200
Wire Wire Line
	5250 4300 5700 4300
Wire Wire Line
	5500 4400 5500 4200
Connection ~ 5500 4200
Wire Wire Line
	5500 4200 5850 4200
Wire Wire Line
	5850 4400 5850 4300
Connection ~ 5850 4300
Wire Wire Line
	5850 4300 6250 4300
Wire Wire Line
	8050 3250 8250 3250
Text GLabel 8250 3250 2    50   Input ~ 0
CNT
$Comp
L Switch:SW_Push SW1
U 1 1 5C77C373
P 6550 1000
F 0 "SW1" H 6550 1285 50  0000 C CNN
F 1 "SW_Push" H 6550 1194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 6550 1200 50  0001 C CNN
F 3 "" H 6550 1200 50  0001 C CNN
	1    6550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1350 6800 1350
Wire Wire Line
	6800 1350 6800 1000
Wire Wire Line
	6800 1000 6750 1000
$Comp
L power:GNDD #PWR0116
U 1 1 5C77DEBF
P 6350 1000
F 0 "#PWR0116" H 6350 750 50  0001 C CNN
F 1 "GNDD" H 6354 845 50  0000 C CNN
F 2 "" H 6350 1000 50  0001 C CNN
F 3 "" H 6350 1000 50  0001 C CNN
	1    6350 1000
	0    1    1    0   
$EndComp
$Comp
L Device:CP C5
U 1 1 5C77E1A4
P 1500 1150
F 0 "C5" V 1350 950 50  0000 C CNN
F 1 "4u7 6.3V" V 1700 1000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1538 1000 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1300 1500 1450
Wire Wire Line
	1500 1450 1200 1450
Connection ~ 1200 1450
Wire Wire Line
	1500 1000 1500 850 
Wire Wire Line
	1500 850  1200 850 
Connection ~ 1200 850 
Wire Wire Line
	5700 4300 5700 4000
Connection ~ 5700 4300
Wire Wire Line
	5700 4300 5850 4300
$Comp
L Device:R R11
U 1 1 5C783FBC
P 5700 3850
F 0 "R11" V 5800 3750 50  0000 C CNN
F 1 "1k5" V 5800 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 3850 50  0001 C CNN
F 3 "~" H 5700 3850 50  0001 C CNN
	1    5700 3850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5C7840C1
P 5700 3700
F 0 "#PWR0117" H 5700 3550 50  0001 C CNN
F 1 "+5V" H 5715 3873 50  0000 C CNN
F 2 "" H 5700 3700 50  0001 C CNN
F 3 "" H 5700 3700 50  0001 C CNN
	1    5700 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5C784248
P 8750 3450
F 0 "SW2" H 8750 3735 50  0000 C CNN
F 1 "SW_Push" H 8750 3644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 8750 3650 50  0001 C CNN
F 3 "" H 8750 3650 50  0001 C CNN
	1    8750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0118
U 1 1 5C786333
P 8950 3450
F 0 "#PWR0118" H 8950 3200 50  0001 C CNN
F 1 "GNDD" H 8954 3295 50  0000 C CNN
F 2 "" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
	1    8950 3450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5C786735
P 2200 5200
F 0 "U2" H 2200 5442 50  0000 C CNN
F 1 "L7805" H 2200 5351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92S" H 2225 5050 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2200 5150 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D5
U 1 1 5C786986
P 1550 5200
F 0 "D5" H 1550 5465 50  0000 C CNN
F 1 "M7" H 1550 5374 50  0000 C CNN
F 2 "Diode_THT:D_5W_P5.08mm_Vertical_AnodeUp" H 1550 5200 50  0001 C CNN
F 3 "~" H 1550 5200 50  0001 C CNN
	1    1550 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 5C786BD4
P 900 5300
F 0 "J2" H 955 5617 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 955 5526 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 950 5260 50  0001 C CNN
F 3 "~" H 950 5260 50  0001 C CNN
	1    900  5300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5C786E8A
P 1750 5350
F 0 "C6" V 1600 5150 50  0000 C CNN
F 1 "4u7 6.3V" V 1950 5200 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1788 5200 50  0001 C CNN
F 3 "~" H 1750 5350 50  0001 C CNN
	1    1750 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0119
U 1 1 5C786FA7
P 1750 5500
F 0 "#PWR0119" H 1750 5250 50  0001 C CNN
F 1 "GNDD" H 1754 5345 50  0000 C CNN
F 2 "" H 1750 5500 50  0001 C CNN
F 3 "" H 1750 5500 50  0001 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 5C787008
P 2200 5500
F 0 "#PWR0120" H 2200 5250 50  0001 C CNN
F 1 "GNDD" H 2204 5345 50  0000 C CNN
F 2 "" H 2200 5500 50  0001 C CNN
F 3 "" H 2200 5500 50  0001 C CNN
	1    2200 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5C787069
P 1200 5500
F 0 "#PWR0121" H 1200 5250 50  0001 C CNN
F 1 "GNDD" H 1204 5345 50  0000 C CNN
F 2 "" H 1200 5500 50  0001 C CNN
F 3 "" H 1200 5500 50  0001 C CNN
	1    1200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5500 1200 5400
Wire Wire Line
	1200 5400 1200 5300
Connection ~ 1200 5400
Wire Wire Line
	1200 5200 1350 5200
Wire Wire Line
	1750 5200 1900 5200
Connection ~ 1750 5200
Wire Wire Line
	2500 5200 2600 5200
Wire Wire Line
	2600 5200 2600 5050
$Comp
L power:+5V #PWR0122
U 1 1 5C79659A
P 2600 5050
F 0 "#PWR0122" H 2600 4900 50  0001 C CNN
F 1 "+5V" H 2615 5223 50  0000 C CNN
F 2 "" H 2600 5050 50  0001 C CNN
F 3 "" H 2600 5050 50  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 5C79722C
P 9900 3050
F 0 "J7" H 9980 3042 50  0000 L CNN
F 1 "PD" H 9980 2951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9900 3050 50  0001 C CNN
F 3 "~" H 9900 3050 50  0001 C CNN
	1    9900 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 5C79733E
P 8900 1650
F 0 "J5" H 8980 1642 50  0000 L CNN
F 1 "PB" H 8980 1551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8900 1650 50  0001 C CNN
F 3 "~" H 8900 1650 50  0001 C CNN
	1    8900 1650
	1    0    0    -1  
$EndComp
Text GLabel 8700 2050 0    50   Input ~ 0
AREF
Text GLabel 6850 1950 0    50   Input ~ 0
AREF
Text GLabel 8700 1950 0    50   Input ~ 0
GND
Text GLabel 10550 1900 0    50   Input ~ 0
GND
$Comp
L power:GNDD #PWR0123
U 1 1 5C79761E
P 10550 1900
F 0 "#PWR0123" H 10550 1650 50  0001 C CNN
F 1 "GNDD" H 10554 1745 50  0000 C CNN
F 2 "" H 10550 1900 50  0001 C CNN
F 3 "" H 10550 1900 50  0001 C CNN
	1    10550 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 1350 8700 1350
Wire Wire Line
	8050 1450 8700 1450
Wire Wire Line
	8700 1550 8050 1550
Wire Wire Line
	8050 1650 8700 1650
Wire Wire Line
	8700 1750 8050 1750
Wire Wire Line
	8050 1850 8700 1850
Wire Wire Line
	8450 3450 8450 3600
Wire Wire Line
	8050 3450 8450 3450
Connection ~ 8450 3450
Wire Wire Line
	8450 3450 8550 3450
Text GLabel 8450 3600 3    50   Input ~ 0
PD7
Text GLabel 9700 3450 0    50   Input ~ 0
PD7
Text GLabel 8050 3350 2    50   Input ~ 0
PD6
Text GLabel 9700 3350 0    50   Input ~ 0
PD6
Text GLabel 9700 3250 0    50   Input ~ 0
CNT
Text GLabel 8050 3150 2    50   Input ~ 0
PD4
Text GLabel 9700 3150 0    50   Input ~ 0
PD4
Text GLabel 9700 3050 0    50   Input ~ 0
D-
Text GLabel 9700 2950 0    50   Input ~ 0
D+
Text GLabel 9700 2850 0    50   Input ~ 0
PD1
Text GLabel 9700 2750 0    50   Input ~ 0
PD0
Text GLabel 8050 2750 2    50   Input ~ 0
PD0
Text GLabel 8050 2850 2    50   Input ~ 0
PD1
Text GLabel 8050 2050 2    50   Input ~ 0
PC0
Text GLabel 8050 2150 2    50   Input ~ 0
PC1
Text GLabel 8050 2250 2    50   Input ~ 0
PC2
Text GLabel 8050 2350 2    50   Input ~ 0
PC3
Text GLabel 8050 2450 2    50   Input ~ 0
PC4
Text GLabel 8050 2550 2    50   Input ~ 0
PC5
Text GLabel 9700 1950 0    50   Input ~ 0
PC0
Text GLabel 9700 2050 0    50   Input ~ 0
PC1
Text GLabel 9700 2150 0    50   Input ~ 0
PC2
Text GLabel 9700 2250 0    50   Input ~ 0
PC3
Text GLabel 9700 2350 0    50   Input ~ 0
PC4
Text GLabel 9700 2450 0    50   Input ~ 0
PC5
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 5C7B2360
P 9900 2250
F 0 "J6" H 9980 2242 50  0000 L CNN
F 1 "PC" H 9980 2151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9900 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	1    0    0    -1  
$EndComp
Text GLabel 9700 2550 0    50   Input ~ 0
ADC6
Text GLabel 9700 2650 0    50   Input ~ 0
ADC7
Text GLabel 6850 2150 0    50   Input ~ 0
ADC6
Text GLabel 6850 2250 0    50   Input ~ 0
ADC7
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5C7B31C2
P 3450 5200
F 0 "J3" H 3530 5192 50  0000 L CNN
F 1 "Conn_01x04" H 3530 5101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3450 5200 50  0001 C CNN
F 3 "~" H 3450 5200 50  0001 C CNN
	1    3450 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5C7B32F3
P 3250 5400
F 0 "#PWR0124" H 3250 5250 50  0001 C CNN
F 1 "+5V" H 3265 5573 50  0000 C CNN
F 2 "" H 3250 5400 50  0001 C CNN
F 3 "" H 3250 5400 50  0001 C CNN
	1    3250 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR0125
U 1 1 5C7B33BA
P 3200 5300
F 0 "#PWR0125" H 3200 5050 50  0001 C CNN
F 1 "GNDD" H 3204 5145 50  0000 C CNN
F 2 "" H 3200 5300 50  0001 C CNN
F 3 "" H 3200 5300 50  0001 C CNN
	1    3200 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5300 3200 5300
Wire Wire Line
	3200 5200 3250 5200
Wire Wire Line
	3200 5200 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	1750 5200 1750 4800
Wire Wire Line
	1750 4800 1850 4800
Text GLabel 1850 4800 2    50   Input ~ 0
VIN
Text GLabel 3250 5100 0    50   Input ~ 0
VIN
$EndSCHEMATC
