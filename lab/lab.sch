EESchema Schematic File Version 4
LIBS:lab-cache
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
L Regulator_Linear:L78L33_TO92 U2
U 1 1 5C5E5611
P 2400 900
F 0 "U2" H 2400 1142 50  0000 C CNN
F 1 "L78L33_TO92" H 2400 1051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 1125 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 2400 850 50  0001 C CNN
	1    2400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C5E5890
P 2050 1050
F 0 "C2" H 1850 1150 50  0000 L CNN
F 1 "1u" H 1800 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2088 900 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
	1    2050 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C5E5956
P 2750 1050
F 0 "C4" H 2865 1096 50  0000 L CNN
F 1 "1u" H 2865 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 900 50  0001 C CNN
F 3 "~" H 2750 1050 50  0001 C CNN
	1    2750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5C5E5A37
P 2050 1200
F 0 "#PWR0101" H 2050 950 50  0001 C CNN
F 1 "GNDD" H 2054 1045 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0102
U 1 1 5C5E5A4F
P 2400 1200
F 0 "#PWR0102" H 2400 950 50  0001 C CNN
F 1 "GNDD" H 2404 1045 50  0000 C CNN
F 2 "" H 2400 1200 50  0001 C CNN
F 3 "" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 5C5E5A60
P 2750 1200
F 0 "#PWR0103" H 2750 950 50  0001 C CNN
F 1 "GNDD" H 2754 1045 50  0000 C CNN
F 2 "" H 2750 1200 50  0001 C CNN
F 3 "" H 2750 1200 50  0001 C CNN
	1    2750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 900  2050 900 
Wire Wire Line
	2700 900  2750 900 
$Comp
L power:+5V #PWR0104
U 1 1 5C5E5BA4
P 2050 800
F 0 "#PWR0104" H 2050 650 50  0001 C CNN
F 1 "+5V" H 2065 973 50  0000 C CNN
F 2 "" H 2050 800 50  0001 C CNN
F 3 "" H 2050 800 50  0001 C CNN
	1    2050 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 800  2050 900 
Connection ~ 2050 900 
Text GLabel 3750 1000 2    50   Input ~ 0
VREF3.3
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5C5E5CEC
P 3400 1000
F 0 "U1" H 3450 850 50  0000 C CNN
F 1 "LM324" H 3350 1000 50  0000 C CNN
F 2 "" H 3350 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3450 1200 50  0001 C CNN
	1    3400 1000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 5C5E5D45
P 1750 2250
F 0 "U1" H 1750 2450 50  0000 C CNN
F 1 "LM324" H 1700 2250 50  0000 C CNN
F 2 "" H 1700 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1800 2450 50  0001 C CNN
	2    1750 2250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5C5E5E05
P 2800 2150
F 0 "U1" H 2800 2300 50  0000 C CNN
F 1 "LM324" H 2750 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2750 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2850 2350 50  0001 C CNN
	3    2800 2150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 5C5E5EEE
P 3800 2050
F 0 "U1" H 3850 2200 50  0000 C CNN
F 1 "LM324" H 3750 2050 50  0000 C CNN
F 2 "" H 3750 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3850 2250 50  0001 C CNN
	4    3800 2050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5C5E5FA0
P 1650 1150
F 0 "U1" H 1350 1300 50  0000 L CNN
F 1 "LM324" H 1450 1150 50  0000 L CNN
F 2 "" H 1600 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1700 1350 50  0001 C CNN
	5    1650 1150
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
P 1550 1500
F 0 "#PWR0106" H 1550 1250 50  0001 C CNN
F 1 "GNDD" H 1554 1345 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
Connection ~ 2750 900 
$Comp
L Device:R R9
U 1 1 5C5E61FC
P 3250 1300
F 0 "R9" V 3350 1200 50  0000 C CNN
F 1 "4K7" V 3350 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3180 1300 50  0001 C CNN
F 3 "~" H 3250 1300 50  0001 C CNN
	1    3250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 900  3100 900 
Wire Wire Line
	3100 1100 3100 1300
Wire Wire Line
	3400 1300 3700 1300
Wire Wire Line
	3700 1300 3700 1000
Text Notes 2800 700  0    50   ~ 0
Voltage reference circuit
$Comp
L Device:C C1
U 1 1 5C5E692A
P 1150 2350
F 0 "C1" V 1300 2250 50  0000 L CNN
F 1 "1u" V 1300 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1188 2200 50  0001 C CNN
F 3 "~" H 1150 2350 50  0001 C CNN
	1    1150 2350
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0107
U 1 1 5C5E69F5
P 1000 2350
F 0 "#PWR0107" H 1000 2100 50  0001 C CNN
F 1 "GNDD" V 1004 2240 50  0000 R CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5C5E6C5D
P 1550 2950
F 0 "RV1" V 1450 2950 50  0000 C CNN
F 1 "100K" V 1350 2900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 1550 2950 50  0001 C CNN
F 3 "~" H 1550 2950 50  0001 C CNN
	1    1550 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2500 2050 2250
$Comp
L Device:R R4
U 1 1 5C5E7175
P 1700 1850
F 0 "R4" V 1800 1750 50  0000 C CNN
F 1 "100K" V 1800 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 1850 50  0001 C CNN
F 3 "~" H 1700 1850 50  0001 C CNN
	1    1700 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 1850 2050 1850
Wire Wire Line
	2050 1850 2050 2250
Connection ~ 2050 2250
Wire Wire Line
	1550 1850 1400 1850
Wire Wire Line
	1400 1850 1400 2150
Wire Wire Line
	1400 2150 1450 2150
$Comp
L Device:R R3
U 1 1 5C5E7476
P 1150 2150
F 0 "R3" V 1050 2050 50  0000 C CNN
F 1 "22K" V 1050 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1080 2150 50  0001 C CNN
F 3 "~" H 1150 2150 50  0001 C CNN
	1    1150 2150
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0108
U 1 1 5C5E7590
P 1000 2150
F 0 "#PWR0108" H 1000 1900 50  0001 C CNN
F 1 "GNDD" V 1004 2040 50  0000 R CNN
F 2 "" H 1000 2150 50  0001 C CNN
F 3 "" H 1000 2150 50  0001 C CNN
	1    1000 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2150 1300 2150
Connection ~ 1400 2150
Text GLabel 2050 2650 3    50   Input ~ 0
SQUARE
Wire Wire Line
	2050 2500 2050 2600
$Comp
L Device:R R10
U 1 1 5C5E7ACA
P 2750 1850
F 0 "R10" V 2650 1700 50  0000 C CNN
F 1 "10K" V 2650 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2680 1850 50  0001 C CNN
F 3 "~" H 2750 1850 50  0001 C CNN
	1    2750 1850
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 5C5E7BC4
P 2900 1850
F 0 "#PWR0109" H 2900 1600 50  0001 C CNN
F 1 "GNDD" V 2900 1700 50  0000 R CNN
F 2 "" H 2900 1850 50  0001 C CNN
F 3 "" H 2900 1850 50  0001 C CNN
	1    2900 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1850 2450 1850
Wire Wire Line
	2450 1850 2450 2050
Wire Wire Line
	2450 2050 2500 2050
Wire Wire Line
	2500 2250 2450 2250
$Comp
L Device:C C6
U 1 1 5C5E8169
P 2750 2500
F 0 "C6" V 2900 2400 50  0000 C CNN
F 1 "33n" V 2900 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 2350 50  0001 C CNN
F 3 "~" H 2750 2500 50  0001 C CNN
	1    2750 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2250 2450 2500
Wire Wire Line
	2450 2500 2600 2500
Connection ~ 2450 2250
Wire Wire Line
	2450 2250 2400 2250
Wire Wire Line
	2900 2500 3100 2500
$Comp
L Device:R R6
U 1 1 5C5E8D7F
P 2250 2250
F 0 "R6" V 2150 2150 50  0000 C CNN
F 1 "10K" V 2150 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 2250 50  0001 C CNN
F 3 "~" H 2250 2250 50  0001 C CNN
	1    2250 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2250 2050 2250
$Comp
L Device:R R11
U 1 1 5C5E9641
P 2750 2750
F 0 "R11" V 2850 2600 50  0000 C CNN
F 1 "100K" V 2850 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2680 2750 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2750 2900 2750
Wire Wire Line
	2600 2750 2450 2750
Wire Wire Line
	2450 2750 2450 2500
Connection ~ 2450 2500
$Comp
L Device:R R12
U 1 1 5C5EA5BD
P 3300 2150
F 0 "R12" V 3200 2150 50  0000 C CNN
F 1 "100K" V 3400 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2150 50  0001 C CNN
F 3 "~" H 3300 2150 50  0001 C CNN
	1    3300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2150 3100 2150
Wire Wire Line
	3500 2150 3450 2150
$Comp
L Device:R R13
U 1 1 5C5EB06F
P 3650 1750
F 0 "R13" V 3550 1600 50  0000 C CNN
F 1 "100K" V 3550 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3580 1750 50  0001 C CNN
F 3 "~" H 3650 1750 50  0001 C CNN
	1    3650 1750
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0110
U 1 1 5C5EB0CB
P 3800 1750
F 0 "#PWR0110" H 3800 1500 50  0001 C CNN
F 1 "GNDD" V 3800 1600 50  0000 R CNN
F 2 "" H 3800 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 1950 3450 1950
Wire Wire Line
	3450 1950 3450 1750
Wire Wire Line
	3450 1750 3500 1750
Text GLabel 3100 2800 3    50   Input ~ 0
TRIANGLE
$Comp
L Device:C C7
U 1 1 5C5EBD63
P 3750 2400
F 0 "C7" V 3900 2300 50  0000 C CNN
F 1 "10n" V 3900 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3788 2250 50  0001 C CNN
F 3 "~" H 3750 2400 50  0001 C CNN
	1    3750 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2750 3100 2500
Wire Wire Line
	3100 2500 3100 2150
Connection ~ 3100 2500
Connection ~ 3100 2150
$Comp
L Device:R R14
U 1 1 5C5EC9C1
P 3750 2650
F 0 "R14" V 3850 2500 50  0000 C CNN
F 1 "220K" V 3850 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 2650 50  0001 C CNN
F 3 "~" H 3750 2650 50  0001 C CNN
	1    3750 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2750 3100 2800
Connection ~ 3100 2750
Wire Wire Line
	3450 2150 3450 2400
Wire Wire Line
	3450 2400 3600 2400
Connection ~ 3450 2150
Wire Wire Line
	3450 2400 3450 2650
Wire Wire Line
	3450 2650 3600 2650
Connection ~ 3450 2400
Wire Wire Line
	3900 2400 4100 2400
Wire Wire Line
	4100 2400 4100 2050
Wire Wire Line
	3900 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2400
Connection ~ 4100 2400
Text GLabel 4100 2700 3    50   Input ~ 0
SIN
Wire Wire Line
	4100 2650 4100 2700
Connection ~ 4100 2650
$Comp
L power:GNDD #PWR0111
U 1 1 5C5F1830
P 4900 1850
F 0 "#PWR0111" H 4900 1600 50  0001 C CNN
F 1 "GNDD" H 4904 1695 50  0000 C CNN
F 2 "" H 4900 1850 50  0001 C CNN
F 3 "" H 4900 1850 50  0001 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1550 4850 1550
Wire Wire Line
	4900 1650 4850 1650
Wire Wire Line
	4900 1750 4850 1750
Text GLabel 4850 1750 0    50   Input ~ 0
SIN
Text GLabel 4850 1650 0    50   Input ~ 0
TRIANGLE
Text GLabel 4850 1550 0    50   Input ~ 0
SQUARE
Wire Wire Line
	2750 550  2750 900 
Wire Wire Line
	2750 550  2850 550 
Text GLabel 2850 550  2    50   Input ~ 0
3V3
Wire Wire Line
	3750 1000 3700 1000
Connection ~ 3700 1000
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5C5ECE3D
P 2600 4300
F 0 "Q1" H 2791 4346 50  0000 L CNN
F 1 "Q_NPN_EBC" H 2791 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 2800 4400 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C5ECED7
P 2000 4300
F 0 "R5" V 2100 4200 50  0000 C CNN
F 1 "1K" V 2100 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 4300 50  0001 C CNN
F 3 "~" H 2000 4300 50  0001 C CNN
	1    2000 4300
	0    1    1    0   
$EndComp
Text GLabel 950  4300 0    50   Input ~ 0
SIN
$Comp
L power:GNDD #PWR0113
U 1 1 5C5ECFD6
P 2700 4500
F 0 "#PWR0113" H 2700 4250 50  0001 C CNN
F 1 "GNDD" V 2704 4390 50  0000 R CNN
F 2 "" H 2700 4500 50  0001 C CNN
F 3 "" H 2700 4500 50  0001 C CNN
	1    2700 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker_Crystal LS1
U 1 1 5C5EDDA5
P 3450 3950
F 0 "LS1" H 3625 3946 50  0000 L CNN
F 1 "Piezo" H 3625 3855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 3415 3900 50  0001 C CNN
F 3 "~" H 3415 3900 50  0001 C CNN
	1    3450 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C5EEDE4
P 3250 3900
F 0 "#PWR0114" H 3250 3750 50  0001 C CNN
F 1 "+5V" H 3265 4073 50  0000 C CNN
F 2 "" H 3250 3900 50  0001 C CNN
F 3 "" H 3250 3900 50  0001 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C5EEE7C
P 2400 4050
F 0 "R7" V 2500 3950 50  0000 C CNN
F 1 "30K" V 2500 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 4050 50  0001 C CNN
F 3 "~" H 2400 4050 50  0001 C CNN
	1    2400 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5C5EEEDA
P 2400 3900
F 0 "C5" V 2250 3800 50  0000 C CNN
F 1 "6u8" V 2250 3950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2438 3750 50  0001 C CNN
F 3 "~" H 2400 3900 50  0001 C CNN
	1    2400 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3900 2700 4050
Wire Wire Line
	2550 4050 2700 4050
Connection ~ 2700 4050
Wire Wire Line
	2700 4050 2700 4100
Wire Wire Line
	2700 3900 2550 3900
Wire Wire Line
	2150 4300 2200 4300
Wire Wire Line
	2200 4300 2200 4050
Wire Wire Line
	2200 3900 2250 3900
Wire Wire Line
	2250 4050 2200 4050
Connection ~ 2200 4050
Wire Wire Line
	2200 4050 2200 3900
Wire Wire Line
	2400 4300 2200 4300
Connection ~ 2200 4300
$Comp
L Device:CP C3
U 1 1 5C5F63F9
P 1700 4300
F 0 "C3" V 1445 4300 50  0000 C CNN
F 1 "5u 5V" V 1536 4300 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1738 4150 50  0001 C CNN
F 3 "~" H 1700 4300 50  0001 C CNN
	1    1700 4300
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5C5FC5C7
P 1250 4300
F 0 "JP1" H 1250 4564 50  0000 C CNN
F 1 "VIS" H 1250 4473 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4050 2700 4050
Text GLabel 850  4800 1    50   Input ~ 0
VREF3.3
$Comp
L Device:R R1
U 1 1 5C604298
P 850 4950
F 0 "R1" V 950 4850 50  0000 C CNN
F 1 "2K2" V 950 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 780 4950 50  0001 C CNN
F 3 "~" H 850 4950 50  0001 C CNN
	1    850  4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Variable R2
U 1 1 5C60436B
P 850 5250
F 0 "R2" H 978 5296 50  0000 L CNN
F 1 "SIL" H 978 5205 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 780 5250 50  0001 C CNN
F 3 "~" H 850 5250 50  0001 C CNN
	1    850  5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 5C6046F1
P 850 5400
F 0 "#PWR0115" H 850 5150 50  0001 C CNN
F 1 "GNDD" V 854 5290 50  0000 R CNN
F 2 "" H 850 5400 50  0001 C CNN
F 3 "" H 850 5400 50  0001 C CNN
	1    850  5400
	1    0    0    -1  
$EndComp
Connection ~ 850  5100
Text GLabel 1150 5100 2    50   Input ~ 0
TMEAS
Text GLabel 6300 1750 2    50   Input ~ 0
VREF3.3
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5C61625A
P 5100 1650
F 0 "J1" H 5150 2067 50  0000 C CNN
F 1 "FACE" H 5150 1976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5100 1650 50  0001 C CNN
F 3 "~" H 5100 1650 50  0001 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C616A9E
P 1250 1150
F 0 "C9" H 1050 1250 50  0000 L CNN
F 1 "100n" H 1000 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1288 1000 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 800  1250 800 
Wire Wire Line
	1250 800  1250 1000
Wire Wire Line
	1250 1300 1250 1450
Wire Wire Line
	1250 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1500
Connection ~ 1550 1450
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
	1250 800  900  800 
Wire Wire Line
	900  800  900  1000
Connection ~ 1250 800 
Wire Wire Line
	900  1300 900  1450
Wire Wire Line
	900  1450 1250 1450
Connection ~ 1250 1450
$Comp
L Device:R R18
U 1 1 5C5F5829
P 5900 3400
F 0 "R18" V 6000 3250 50  0000 C CNN
F 1 "10K" V 6000 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
	1    5900 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5C5F5B60
P 5850 4150
F 0 "R17" V 5950 4000 50  0000 C CNN
F 1 "1K" V 5950 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 4150 50  0001 C CNN
F 3 "~" H 5850 4150 50  0001 C CNN
	1    5850 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5C5F5C21
P 6550 3900
F 0 "R19" V 6450 4100 50  0000 C CNN
F 1 "220R" V 6450 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 3900 50  0001 C CNN
F 3 "~" H 6550 3900 50  0001 C CNN
	1    6550 3900
	-1   0    0    1   
$EndComp
Text GLabel 5400 1850 2    50   Input ~ 0
MEAS
Text GLabel 6600 3600 2    50   Input ~ 0
CMEAS
$Comp
L Connector_Generic:Conn_02x01 J3
U 1 1 5C5F958A
P 6250 3900
F 0 "J3" V 6346 3812 50  0000 R CNN
F 1 "C?" H 6350 4050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 3900 50  0001 C CNN
F 3 "~" H 6250 3900 50  0001 C CNN
	1    6250 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 4150 6250 4100
Wire Wire Line
	6250 3600 6050 3600
Wire Wire Line
	6050 3400 6050 3600
Wire Wire Line
	6250 3600 6550 3600
Connection ~ 6250 3600
Wire Wire Line
	6550 3600 6550 3750
Wire Wire Line
	6600 3600 6550 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 4300 6600 4300
Text GLabel 6600 4300 2    50   Input ~ 0
CMRST
Wire Wire Line
	6550 4050 6550 4300
$Comp
L power:GNDD #PWR0112
U 1 1 5C611002
P 6250 4150
F 0 "#PWR0112" H 6250 3900 50  0001 C CNN
F 1 "GNDD" H 6254 3995 50  0000 C CNN
F 2 "" H 6250 4150 50  0001 C CNN
F 3 "" H 6250 4150 50  0001 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5100 1150 5100
$Comp
L Device:Jumper_NC_Dual JP3
U 1 1 5C61425D
P 5150 2550
F 0 "JP3" H 5150 2696 50  0000 C CNN
F 1 "MWHAT" H 5150 2787 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5150 2550 50  0001 C CNN
F 3 "~" H 5150 2550 50  0001 C CNN
	1    5150 2550
	-1   0    0    1   
$EndComp
Text GLabel 4900 2550 0    50   Input ~ 0
TMEAS
Text GLabel 5400 2550 2    50   Input ~ 0
CMEAS
Text GLabel 5150 2450 1    50   Input ~ 0
MEAS
Text GLabel 5400 1650 2    50   Input ~ 0
CMRST
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 5C61D794
P 5350 3200
F 0 "Q2" H 5541 3246 50  0000 L CNN
F 1 "Q_NPN_EBC" H 5541 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5550 3300 50  0001 C CNN
F 3 "~" H 5350 3200 50  0001 C CNN
	1    5350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q3
U 1 1 5C61D8A0
P 5350 3950
F 0 "Q3" H 5541 3996 50  0000 L CNN
F 1 "Q_NPN_EBC" H 5541 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5550 4050 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3400 5750 3400
Wire Wire Line
	5450 4150 5700 4150
Wire Wire Line
	6050 3600 6050 4150
Wire Wire Line
	6050 4150 6000 4150
Connection ~ 6050 3600
Text GLabel 5450 3000 1    50   Input ~ 0
3V3
Text GLabel 5450 3750 1    50   Input ~ 0
3V3
$Comp
L Device:R R15
U 1 1 5C62705E
P 5000 3200
F 0 "R15" V 4850 3250 50  0000 C CNN
F 1 "10K" V 5100 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 3200 50  0001 C CNN
F 3 "~" H 5000 3200 50  0001 C CNN
	1    5000 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5C6270F6
P 5000 3950
F 0 "R16" V 4900 4000 50  0000 C CNN
F 1 "10K" V 5100 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 3950 50  0001 C CNN
F 3 "~" H 5000 3950 50  0001 C CNN
	1    5000 3950
	0    1    1    0   
$EndComp
Text GLabel 5400 1450 2    50   Input ~ 0
CSD1
Text GLabel 5400 1550 2    50   Input ~ 0
CSD2
Text GLabel 4850 3200 0    50   Input ~ 0
CSD1
Text GLabel 4850 3950 0    50   Input ~ 0
CSD2
$Comp
L power:+5V #PWR0118
U 1 1 5C63D415
P 4900 1450
F 0 "#PWR0118" H 4900 1300 50  0001 C CNN
F 1 "+5V" H 4915 1623 50  0000 C CNN
F 2 "" H 4900 1450 50  0001 C CNN
F 3 "" H 4900 1450 50  0001 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
Text Notes 6200 3200 0    50   ~ 0
Uke=02-0.3v
NoConn ~ 1700 2950
Connection ~ 900  800 
Wire Wire Line
	1550 800  1550 850 
$Comp
L Device:Jumper JP4
U 1 1 5C611FC3
P 1350 2650
F 0 "JP4" H 1300 2550 50  0000 C CNN
F 1 "GEN" H 1450 2550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 1350 2650 50  0001 C CNN
F 3 "~" H 1350 2650 50  0001 C CNN
	1    1350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2350 1350 2350
Connection ~ 1350 2350
Wire Wire Line
	1350 2350 1450 2350
Wire Wire Line
	1400 2950 1350 2950
$Comp
L Device:R R20
U 1 1 5C658046
P 3050 4050
F 0 "R20" V 3150 3950 50  0000 C CNN
F 1 "0R" V 3150 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 4050 50  0001 C CNN
F 3 "~" H 3050 4050 50  0001 C CNN
	1    3050 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3900 3250 3950
Wire Wire Line
	3200 4050 3250 4050
$Comp
L Device:R R8
U 1 1 5C66250C
P 1900 2500
F 0 "R8" V 1900 2450 50  0000 C CNN
F 1 "0R" V 1900 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1830 2500 50  0001 C CNN
F 3 "~" H 1900 2500 50  0001 C CNN
	1    1900 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2500 1700 2500
Wire Wire Line
	1550 2500 1550 2800
Connection ~ 2050 2500
Wire Wire Line
	2050 2600 1700 2600
Wire Wire Line
	1700 2600 1700 2500
Connection ~ 2050 2600
Wire Wire Line
	2050 2600 2050 2650
Connection ~ 1700 2500
Wire Wire Line
	1700 2500 1550 2500
$Comp
L Device:Jumper JP2
U 1 1 5C67441F
P 6000 1750
F 0 "JP2" H 6000 2014 50  0000 C CNN
F 1 "0R" H 6000 1923 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1750 5700 1750
Wire Wire Line
	5700 1750 5700 1800
Wire Wire Line
	6300 1800 6300 1750
Wire Wire Line
	5700 1800 6300 1800
Connection ~ 5700 1750
$EndSCHEMATC
