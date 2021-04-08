EESchema Schematic File Version 4
LIBS:tastert-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L tastert-rescue:STM32F042K6Tx U2
U 1 1 58063DAC
P 5200 2900
F 0 "U2" H 2100 4025 50  0000 L BNN
F 1 "STM32F042K6Tx" H 8300 4025 50  0000 R BNN
F 2 "Housings_QFP:LQFP-32_7x7mm_Pitch0.8mm" H 8300 3975 50  0001 R TNN
F 3 "" H 5200 2900 50  0000 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:MCP2551-I_SN U3
U 1 1 58063E1D
P 8350 5300
F 0 "U3" H 7950 5650 50  0000 L CNN
F 1 "MCP2551-I/SN" H 8450 5650 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8350 4800 50  0001 C CIN
F 3 "" H 8350 5300 50  0000 C CNN
	1    8350 5300
	1    0    0    -1  
$EndComp
$Sheet
S 550  600  650  600 
U 580A1A2C
F0 "power" 60
F1 "power.sch" 60
$EndSheet
Wire Wire Line
	5100 1700 5100 1500
Wire Wire Line
	5100 1500 5200 1500
Wire Wire Line
	5300 1500 5300 1700
Wire Wire Line
	5200 1300 5200 1500
Connection ~ 5200 1500
Wire Wire Line
	5100 4100 5100 4250
Wire Wire Line
	5100 4250 5150 4250
Wire Wire Line
	5200 4250 5200 4100
Text GLabel 850  2200 0    60   Input ~ 0
GND
Text GLabel 5200 1300 1    60   Input ~ 0
VCC3.3
Text GLabel 5150 4500 3    60   Input ~ 0
GND
Wire Wire Line
	5150 4250 5150 4500
Connection ~ 5150 4250
$Comp
L tastert-rescue:C C6
U 1 1 580A4A83
P 4400 6600
F 0 "C6" H 4425 6700 50  0000 L CNN
F 1 "100n" H 4425 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 6450 50  0001 C CNN
F 3 "" H 4400 6600 50  0000 C CNN
	1    4400 6600
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:C C7
U 1 1 580A4AD0
P 4950 6600
F 0 "C7" H 4975 6700 50  0000 L CNN
F 1 "100n" H 4975 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4988 6450 50  0001 C CNN
F 3 "" H 4950 6600 50  0000 C CNN
	1    4950 6600
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:C C8
U 1 1 580A4B25
P 5450 6600
F 0 "C8" H 5475 6700 50  0000 L CNN
F 1 "4.7µ" H 5475 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5488 6450 50  0001 C CNN
F 3 "" H 5450 6600 50  0000 C CNN
	1    5450 6600
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:C C5
U 1 1 580A4B7C
P 3900 6600
F 0 "C5" H 3925 6700 50  0000 L CNN
F 1 "10n" H 3925 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3938 6450 50  0001 C CNN
F 3 "" H 3900 6600 50  0000 C CNN
	1    3900 6600
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:C C4
U 1 1 580A4BB3
P 3400 6600
F 0 "C4" H 3425 6700 50  0000 L CNN
F 1 "1µ" H 3425 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 6450 50  0001 C CNN
F 3 "" H 3400 6600 50  0000 C CNN
	1    3400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6750 3400 6900
Wire Wire Line
	3400 6900 3900 6900
Wire Wire Line
	3900 6900 3900 6750
Wire Wire Line
	4400 6750 4400 6900
Wire Wire Line
	4400 6900 4950 6900
Wire Wire Line
	4950 6900 4950 6750
Wire Wire Line
	5450 6900 5450 6750
Connection ~ 4950 6900
Wire Wire Line
	4400 6450 4400 6350
Wire Wire Line
	4400 6350 4950 6350
Wire Wire Line
	4950 6200 4950 6350
Wire Wire Line
	5450 6350 5450 6450
Connection ~ 4950 6350
Wire Wire Line
	3400 6200 3400 6350
Wire Wire Line
	3400 6350 3900 6350
Wire Wire Line
	3900 6350 3900 6450
Text GLabel 4950 6200 1    60   Input ~ 0
VCC3.3
Text GLabel 3400 6200 1    60   Input ~ 0
VCC3.3
Text GLabel 3400 7050 3    60   Input ~ 0
GND
Text GLabel 4400 7050 3    60   Input ~ 0
GND
Connection ~ 4400 6900
Connection ~ 3400 6900
Connection ~ 3400 6350
Text GLabel 8350 5950 3    60   Input ~ 0
GND
Wire Wire Line
	8350 5700 8350 5950
Text GLabel 8350 4650 1    60   Input ~ 0
VCC5.0
Wire Wire Line
	8350 4650 8350 4900
$Comp
L tastert-rescue:R R1
U 1 1 580A5310
P 1500 1000
F 0 "R1" V 1580 1000 50  0000 C CNN
F 1 "100k" V 1500 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 1000 50  0001 C CNN
F 3 "" H 1500 1000 50  0000 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R2
U 1 1 580A53B1
P 1500 1400
F 0 "R2" V 1580 1400 50  0000 C CNN
F 1 "15k" V 1500 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 1400 50  0001 C CNN
F 3 "" H 1500 1400 50  0000 C CNN
	1    1500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 800  1500 850 
Wire Wire Line
	1500 1150 1500 1250
Text GLabel 1500 1650 3    60   Input ~ 0
GND
Wire Wire Line
	1500 1550 1500 1650
$Comp
L tastert-rescue:R R3
U 1 1 580A5683
P 2050 1000
F 0 "R3" V 2130 1000 50  0000 C CNN
F 1 "100k" V 2050 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1980 1000 50  0001 C CNN
F 3 "" H 2050 1000 50  0000 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R4
U 1 1 580A5689
P 2050 1400
F 0 "R4" V 2130 1400 50  0000 C CNN
F 1 "15k" V 2050 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1980 1400 50  0001 C CNN
F 3 "" H 2050 1400 50  0000 C CNN
	1    2050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 800  2050 850 
Wire Wire Line
	2050 1150 2050 1250
Wire Wire Line
	2050 1550 2050 1650
$Comp
L tastert-rescue:R R5
U 1 1 580A57CF
P 2600 1000
F 0 "R5" V 2680 1000 50  0000 C CNN
F 1 "100k" V 2600 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 1000 50  0001 C CNN
F 3 "" H 2600 1000 50  0000 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R6
U 1 1 580A57D5
P 2600 1400
F 0 "R6" V 2680 1400 50  0000 C CNN
F 1 "15k" V 2600 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 1400 50  0001 C CNN
F 3 "" H 2600 1400 50  0000 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 800  2600 850 
Wire Wire Line
	2600 1150 2600 1250
Wire Wire Line
	2600 1550 2600 1650
$Comp
L tastert-rescue:R R7
U 1 1 580A59EF
P 3200 1000
F 0 "R7" V 3280 1000 50  0000 C CNN
F 1 "100k" V 3200 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 1000 50  0001 C CNN
F 3 "" H 3200 1000 50  0000 C CNN
	1    3200 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R8
U 1 1 580A59F5
P 3200 1400
F 0 "R8" V 3280 1400 50  0000 C CNN
F 1 "15k" V 3200 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 1400 50  0001 C CNN
F 3 "" H 3200 1400 50  0000 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 800  3200 850 
Wire Wire Line
	3200 1150 3200 1250
Wire Wire Line
	3200 1550 3200 1650
$Comp
L tastert-rescue:R R9
U 1 1 580A5A00
P 3750 1000
F 0 "R9" V 3830 1000 50  0000 C CNN
F 1 "100k" V 3750 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 1000 50  0001 C CNN
F 3 "" H 3750 1000 50  0000 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R10
U 1 1 580A5A06
P 3750 1400
F 0 "R10" V 3830 1400 50  0000 C CNN
F 1 "15k" V 3750 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 1400 50  0001 C CNN
F 3 "" H 3750 1400 50  0000 C CNN
	1    3750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 800  3750 850 
Wire Wire Line
	3750 1150 3750 1250
Wire Wire Line
	3750 1550 3750 1650
$Comp
L tastert-rescue:R R11
U 1 1 580A5A10
P 4300 1000
F 0 "R11" V 4380 1000 50  0000 C CNN
F 1 "100k" V 4300 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 1000 50  0001 C CNN
F 3 "" H 4300 1000 50  0000 C CNN
	1    4300 1000
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:R R12
U 1 1 580A5A16
P 4300 1400
F 0 "R12" V 4380 1400 50  0000 C CNN
F 1 "15k" V 4300 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 1400 50  0001 C CNN
F 3 "" H 4300 1400 50  0000 C CNN
	1    4300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 800  4300 850 
Wire Wire Line
	4300 1150 4300 1250
Wire Wire Line
	4300 1650 4300 1550
Wire Wire Line
	1500 1650 2050 1650
Connection ~ 3750 1650
Connection ~ 3200 1650
Connection ~ 2600 1650
Connection ~ 2050 1650
$Comp
L tastert-rescue:CONN_02X05 P1
U 1 1 580A5E18
P 1250 4650
F 0 "P1" H 1250 4950 50  0000 C CNN
F 1 "CONN_02X05" H 1250 4350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05" H 1250 3450 50  0001 C CNN
F 3 "" H 1250 3450 50  0000 C CNN
	1    1250 4650
	1    0    0    -1  
$EndComp
Text Label 1550 4850 0    60   ~ 0
S1_24
Text Label 950  4850 2    60   ~ 0
S2_24
Text Label 1550 4750 0    60   ~ 0
LED1_24
Text Label 950  4750 2    60   ~ 0
LED2_24
Text GLabel 1550 4650 2    60   Input ~ 0
GND
Text GLabel 950  4650 0    60   Input ~ 0
GND
Text Label 1550 4550 0    60   ~ 0
S5_24
Text Label 1550 4450 0    60   ~ 0
LED5_24
Text Label 950  4550 2    60   ~ 0
S6_24
Text Label 950  4450 2    60   ~ 0
LED6_24
Wire Wire Line
	950  4450 1000 4450
Wire Wire Line
	950  4550 1000 4550
Wire Wire Line
	950  4650 1000 4650
Wire Wire Line
	950  4750 1000 4750
Wire Wire Line
	950  4850 1000 4850
Wire Wire Line
	1550 4850 1500 4850
Wire Wire Line
	1500 4750 1550 4750
Wire Wire Line
	1550 4650 1500 4650
Wire Wire Line
	1500 4550 1550 4550
Wire Wire Line
	1550 4450 1500 4450
$Comp
L tastert-rescue:CONN_02X05 P2
U 1 1 580A6568
P 1250 5600
F 0 "P2" H 1250 5900 50  0000 C CNN
F 1 "CONN_02X05" H 1250 5300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05" H 1250 4400 50  0001 C CNN
F 3 "" H 1250 4400 50  0000 C CNN
	1    1250 5600
	1    0    0    -1  
$EndComp
Text Label 950  5400 2    60   ~ 0
LEDBL_24
Text GLabel 1600 5400 2    60   Input ~ 0
VCC24.0
Wire Wire Line
	1500 5400 1600 5400
Wire Wire Line
	1500 5400 1500 5500
Text GLabel 900  5500 0    60   Input ~ 0
VCC24.0
Wire Wire Line
	900  5500 1000 5500
Text Label 1550 5700 0    60   ~ 0
S3_24
Text Label 950  5700 2    60   ~ 0
S4_24
Text Label 1550 5600 0    60   ~ 0
LED3_24
Text Label 950  5600 2    60   ~ 0
LED4_24
Wire Wire Line
	950  5600 1000 5600
Wire Wire Line
	1500 5600 1550 5600
Wire Wire Line
	1550 5700 1500 5700
Wire Wire Line
	1000 5700 950  5700
Wire Wire Line
	1000 5800 1000 5950
Wire Wire Line
	1000 5950 1500 5950
Wire Wire Line
	1500 5950 1500 5800
Wire Wire Line
	950  5400 1000 5400
Text Label 1500 800  1    60   ~ 0
S1_24
Text Label 2050 800  1    60   ~ 0
S2_24
Text Label 2600 800  1    60   ~ 0
S3_24
Text Label 3200 800  1    60   ~ 0
S4_24
Text Label 3750 800  1    60   ~ 0
S5_24
Text Label 4300 800  1    60   ~ 0
S6_24
Text Label 1500 1200 0    60   ~ 0
S1_3.3
Text Label 2050 1200 0    60   ~ 0
S2_3.3
Text Label 2600 1200 0    60   ~ 0
S3_3.3
Text Label 3200 1200 0    60   ~ 0
S4_3.3
Text Label 3750 1200 0    60   ~ 0
S5_3.3
Text Label 4300 1200 0    60   ~ 0
S6_3.3
Text Label 8400 2200 0    60   ~ 0
S1_3.3
Text Label 8400 2300 0    60   ~ 0
S2_3.3
Text Label 8400 2400 0    60   ~ 0
S3_3.3
Text Label 8400 2500 0    60   ~ 0
S4_3.3
Text Label 8400 2600 0    60   ~ 0
S5_3.3
Text Label 8400 2700 0    60   ~ 0
S6_3.3
$Sheet
S 3200 4450 750  700 
U 58121D2D
F0 "Temperatursensor" 60
F1 "Temperatursensor.sch" 60
F2 "TEMP+" I L 3200 4600 60 
F3 "TEMP-" I L 3200 4800 60 
$EndSheet
$Comp
L tastert-rescue:TBD62783AFG U1
U 1 1 58136FEB
P 1650 6750
F 0 "U1" H 1650 7300 60  0000 C CNN
F 1 "TBD62783AFG" H 1650 6050 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 1650 6750 60  0001 C CNN
F 3 "" H 1650 6750 60  0001 C CNN
	1    1650 6750
	1    0    0    -1  
$EndComp
Text Label 2300 6400 0    60   ~ 0
LED1_24
Text Label 2300 6500 0    60   ~ 0
LED2_24
Text Label 2300 6600 0    60   ~ 0
LED3_24
Text Label 2300 6700 0    60   ~ 0
LED4_24
Text Label 2300 6800 0    60   ~ 0
LED5_24
Text Label 2300 6900 0    60   ~ 0
LED6_24
Text Label 2300 7000 0    60   ~ 0
LEDBL_24
Wire Wire Line
	2100 7000 2300 7000
Wire Wire Line
	2300 6900 2100 6900
Wire Wire Line
	2100 6800 2300 6800
Wire Wire Line
	2300 6700 2100 6700
Wire Wire Line
	2100 6600 2300 6600
Wire Wire Line
	2300 6500 2100 6500
Wire Wire Line
	2100 6400 2300 6400
Text GLabel 2300 7200 2    60   Input ~ 0
GND
Wire Wire Line
	2100 7200 2300 7200
Text Label 1100 6400 2    60   ~ 0
LED1_MC
Text Label 1100 6500 2    60   ~ 0
LED2_MC
Text Label 1100 6600 2    60   ~ 0
LED3_MC
Text Label 1100 6700 2    60   ~ 0
LED4_MC
Text Label 1100 6800 2    60   ~ 0
LED5_MC
Text Label 1100 6900 2    60   ~ 0
LED6_MC
Text Label 1100 7000 2    60   ~ 0
LEDBL_MC
Text GLabel 1100 7200 0    60   Input ~ 0
VCC24.0
Wire Wire Line
	1200 7200 1100 7200
Wire Wire Line
	1100 7000 1200 7000
Wire Wire Line
	1200 6900 1100 6900
Wire Wire Line
	1100 6800 1200 6800
Wire Wire Line
	1200 6700 1100 6700
Wire Wire Line
	1100 6600 1200 6600
Wire Wire Line
	1100 6500 1200 6500
Wire Wire Line
	1100 6400 1200 6400
Text Label 2900 4600 2    60   ~ 0
ADC_TEMP+
Text Label 2900 4800 2    60   ~ 0
ADC_TEMP-
Wire Wire Line
	3200 4800 2900 4800
Wire Wire Line
	2900 4600 3200 4600
Text Label 8400 2800 0    60   ~ 0
ADC_TEMP+
Text Label 8400 2900 0    60   ~ 0
ADC_TEMP-
Text Label 1950 3000 2    60   ~ 0
LED1_MC
Text Label 1950 3100 2    60   ~ 0
LED2_MC
Text Label 1950 3200 2    60   ~ 0
LED3_MC
Text Label 1950 3300 2    60   ~ 0
LED4_MC
Text Label 1950 3400 2    60   ~ 0
LED5_MC
Text Label 1950 3500 2    60   ~ 0
LED6_MC
Text Label 1950 3600 2    60   ~ 0
LEDBL_MC
Wire Wire Line
	1950 3000 2000 3000
Wire Wire Line
	2000 3100 1950 3100
Wire Wire Line
	1950 3200 2000 3200
Wire Wire Line
	2000 3300 1950 3300
Wire Wire Line
	1950 3400 2000 3400
Wire Wire Line
	2000 3500 1950 3500
Wire Wire Line
	1950 3600 2000 3600
$Comp
L tastert-rescue:C C9
U 1 1 58139D49
P 6700 5300
F 0 "C9" H 6725 5400 50  0000 L CNN
F 1 "100n" H 6725 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6738 5150 50  0001 C CNN
F 3 "" H 6700 5300 50  0000 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
Text GLabel 6700 5000 1    60   Input ~ 0
VCC5.0
Text GLabel 6700 5600 3    60   Input ~ 0
GND
Wire Wire Line
	6700 5450 6700 5600
Wire Wire Line
	6700 5000 6700 5150
$Comp
L tastert-rescue:CONN_01X04 P4
U 1 1 58139FED
P 9800 5250
F 0 "P4" H 9800 5500 50  0000 C CNN
F 1 "CONN_01X04" V 9900 5250 50  0000 C CNN
F 2 "Connectors_WAGO:WAGO_COSTUm" H 9800 5250 50  0001 C CNN
F 3 "" H 9800 5250 50  0000 C CNN
	1    9800 5250
	1    0    0    -1  
$EndComp
Text GLabel 9450 5550 3    60   Input ~ 0
GND
Wire Wire Line
	9450 5550 9450 5400
Wire Wire Line
	9450 5400 9600 5400
Text GLabel 9450 4700 1    60   Input ~ 0
VCC24.0
Wire Wire Line
	9450 5000 9450 5100
Wire Wire Line
	9450 5100 9600 5100
Text Label 7750 5100 2    60   ~ 0
CAN_TX
Text Label 7750 5200 2    60   ~ 0
CAN_RX
Wire Wire Line
	7750 5100 7850 5100
Wire Wire Line
	7750 5200 7850 5200
Wire Wire Line
	7850 5500 7800 5500
Wire Wire Line
	7800 5500 7800 5700
Wire Wire Line
	7800 5700 8350 5700
Text Label 8400 3100 0    60   ~ 0
USART1_TX
Text Label 8400 3200 0    60   ~ 0
USART1_RX
Text Label 8400 3300 0    60   ~ 0
CAN_RX
Text Label 8400 3400 0    60   ~ 0
CAN_TX
$Comp
L tastert-rescue:R R13
U 1 1 5813B599
P 9150 5250
F 0 "R13" V 9230 5250 50  0000 C CNN
F 1 "120" V 9150 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9080 5250 50  0001 C CNN
F 3 "" H 9150 5250 50  0000 C CNN
	1    9150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5400 9150 5400
Wire Wire Line
	9600 5300 9350 5300
Wire Wire Line
	9350 5300 9350 5400
Connection ~ 9150 5400
Wire Wire Line
	8850 5200 8900 5200
Wire Wire Line
	8900 5200 8900 5100
Wire Wire Line
	8900 5100 9150 5100
Wire Wire Line
	9600 5200 9350 5200
Wire Wire Line
	9350 5200 9350 5100
Connection ~ 9150 5100
$Comp
L tastert-rescue:C C3
U 1 1 5813C2EF
P 1350 2200
F 0 "C3" H 1375 2300 50  0000 L CNN
F 1 "100n" H 1375 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1388 2050 50  0001 C CNN
F 3 "" H 1350 2200 50  0000 C CNN
	1    1350 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 2200 1800 2200
Wire Wire Line
	850  2200 1200 2200
$Comp
L tastert-rescue:CONN_01X05 P5
U 1 1 5813C582
P 10800 1000
F 0 "P5" H 10800 1300 50  0000 C CNN
F 1 "CONN_01X05" V 10900 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 10800 1000 50  0001 C CNN
F 3 "" H 10800 1000 50  0000 C CNN
	1    10800 1000
	1    0    0    -1  
$EndComp
Text GLabel 10450 900  0    60   Input ~ 0
VCC3.3
Text GLabel 10450 1000 0    60   Input ~ 0
GND
Text Label 10450 1200 2    60   ~ 0
SYS_SWCLK
Text Label 10450 1100 2    60   ~ 0
SYS_SWDIO
Text Label 10450 800  2    60   ~ 0
SYS_NRST
Text Label 1800 2150 1    60   ~ 0
SYS_NRST
Wire Wire Line
	1800 2150 1800 2200
Connection ~ 1800 2200
Wire Wire Line
	10450 800  10600 800 
Wire Wire Line
	10600 900  10450 900 
Wire Wire Line
	10450 1000 10600 1000
Wire Wire Line
	10600 1100 10450 1100
Wire Wire Line
	10450 1200 10600 1200
$Comp
L tastert-rescue:R R14
U 1 1 58137309
P 9650 1950
F 0 "R14" V 9730 1950 50  0000 C CNN
F 1 "390" V 9650 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9580 1950 50  0001 C CNN
F 3 "" H 9650 1950 50  0000 C CNN
	1    9650 1950
	1    0    0    -1  
$EndComp
$Comp
L tastert-rescue:LED-RESCUE-tastert D1
U 1 1 58137392
P 9650 2450
F 0 "D1" H 9650 2550 50  0000 C CNN
F 1 "LED" H 9650 2350 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9650 2450 50  0001 C CNN
F 3 "" H 9650 2450 50  0000 C CNN
	1    9650 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2100 9650 2250
Text GLabel 9650 2750 3    60   Input ~ 0
GND
Wire Wire Line
	9650 2650 9650 2750
Text Label 9650 1700 1    60   ~ 0
RUN_LED
Wire Wire Line
	9650 1700 9650 1800
Text Label 1950 3700 2    60   ~ 0
RUN_LED
Wire Wire Line
	1950 3700 2000 3700
Text Label 8400 3500 0    60   ~ 0
SYS_SWDIO
Text Label 8400 3600 0    60   ~ 0
SYS_SWCLK
$Comp
L tastert-rescue:D D5
U 1 1 584D7276
P 9450 4850
F 0 "D5" H 9450 4950 50  0000 C CNN
F 1 "D" H 9450 4750 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 9450 4850 50  0001 C CNN
F 3 "" H 9450 4850 50  0000 C CNN
	1    9450 4850
	0    1    1    0   
$EndComp
$Comp
L tastert-rescue:CONN_01X04 P3
U 1 1 585D3B48
P 10800 2150
F 0 "P3" H 10800 2400 50  0000 C CNN
F 1 "CONN_01X04" V 10900 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10800 2150 50  0001 C CNN
F 3 "" H 10800 2150 50  0000 C CNN
	1    10800 2150
	1    0    0    -1  
$EndComp
Text GLabel 10500 2000 0    60   Input ~ 0
VCC3.3
Text GLabel 10500 2300 0    60   Input ~ 0
GND
Text Label 10500 2100 2    60   ~ 0
I2C_SDA
Text Label 10500 2200 2    60   ~ 0
I2C_SDC
Wire Wire Line
	10500 2000 10600 2000
Wire Wire Line
	10600 2100 10500 2100
Wire Wire Line
	10500 2200 10600 2200
Wire Wire Line
	10600 2300 10500 2300
Text Label 1950 2700 2    60   ~ 0
I2C_SDA
Text Label 1950 2800 2    60   ~ 0
I2C_SDC
Wire Wire Line
	1950 2700 2000 2700
Wire Wire Line
	2000 2800 1950 2800
Text GLabel 7550 5400 0    60   Input ~ 0
VCC3.3
Wire Wire Line
	7850 5400 7550 5400
Wire Wire Line
	5200 1500 5300 1500
Wire Wire Line
	5200 1500 5200 1700
Wire Wire Line
	5150 4250 5200 4250
Wire Wire Line
	4950 6900 5450 6900
Wire Wire Line
	4950 6350 5450 6350
Wire Wire Line
	4950 6350 4950 6450
Wire Wire Line
	4400 6900 4400 7050
Wire Wire Line
	3400 6900 3400 7050
Wire Wire Line
	3400 6350 3400 6450
Wire Wire Line
	3750 1650 4300 1650
Wire Wire Line
	3200 1650 3750 1650
Wire Wire Line
	2600 1650 3200 1650
Wire Wire Line
	2050 1650 2600 1650
Wire Wire Line
	9150 5400 9350 5400
Wire Wire Line
	9150 5100 9350 5100
Wire Wire Line
	1800 2200 1500 2200
$EndSCHEMATC
