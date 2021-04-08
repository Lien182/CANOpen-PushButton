EESchema Schematic File Version 2
LIBS:tastert-rescue
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:tastert-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L LM3670MF U5
U 1 1 580A1A3E
P 8100 4500
F 0 "U5" H 7900 4775 50  0000 L CNN
F 1 "LM3670MF" H 7900 4700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 8150 4300 50  0001 L CNN
F 3 "" H 8100 4200 50  0000 C CIN
	1    8100 4500
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 580A1ABE
P 9500 4850
F 0 "C16" H 9525 4950 50  0000 L CNN
F 1 "10µ" H 9525 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9538 4700 50  0001 C CNN
F 3 "" H 9500 4850 50  0000 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 580A1B53
P 7300 4700
F 0 "C15" H 7325 4800 50  0000 L CNN
F 1 "10µ" H 7325 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 4550 50  0001 C CNN
F 3 "" H 7300 4700 50  0000 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_Small L2
U 1 1 580A1C0B
P 8600 4400
F 0 "L2" H 8630 4440 50  0000 L CNN
F 1 "10µ" H 8630 4360 50  0000 L CNN
F 2 "Inductors:Inductor_Wurth_MAPI-4020" H 8600 4400 50  0001 C CNN
F 3 "" H 8600 4400 50  0000 C CNN
	1    8600 4400
	0    -1   -1   0   
$EndComp
Text GLabel 9500 5450 3    60   Input ~ 0
GND
Text GLabel 6950 4250 1    60   Input ~ 0
VCC5.0
$Comp
L LM2841 U4
U 1 1 580A206A
P 3400 4500
F 0 "U4" H 3400 4100 60  0000 C CNN
F 1 "LM2841" H 3400 4850 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 3400 4500 60  0001 C CNN
F 3 "" H 3400 4500 60  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 580A2107
P 2300 4850
F 0 "C14" H 2325 4950 50  0000 L CNN
F 1 "100n" H 2325 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 4700 50  0001 C CNN
F 3 "" H 2300 4850 50  0000 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 580A21D2
P 1850 4850
F 0 "C13" H 1875 4950 50  0000 L CNN
F 1 "22µ" H 1875 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1888 4700 50  0001 C CNN
F 3 "" H 1850 4850 50  0000 C CNN
	1    1850 4850
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 580A2293
P 4150 4400
F 0 "C10" H 4175 4500 50  0000 L CNN
F 1 "1µ" H 4175 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4188 4250 50  0001 C CNN
F 3 "" H 4150 4400 50  0000 C CNN
	1    4150 4400
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR_Small L1
U 1 1 580A2476
P 5000 4400
F 0 "L1" H 5030 4440 50  0000 L CNN
F 1 "10µ" H 5030 4360 50  0000 L CNN
F 2 "Inductors:Inductor_Wurth_MAPI-4020" H 5000 4400 50  0001 C CNN
F 3 "" H 5000 4400 50  0000 C CNN
	1    5000 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 580A26C0
P 5350 4650
F 0 "R15" V 5430 4650 50  0000 C CNN
F 1 "8K2" V 5350 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5280 4650 50  0001 C CNN
F 3 "" H 5350 4650 50  0000 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 580A273B
P 5350 5150
F 0 "R16" V 5430 5150 50  0000 C CNN
F 1 "1K5 1%" V 5350 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5280 5150 50  0001 C CNN
F 3 "" H 5350 5150 50  0000 C CNN
	1    5350 5150
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 580A27D6
P 5900 4700
F 0 "C11" H 5925 4800 50  0000 L CNN
F 1 "22µ" H 5925 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5938 4550 50  0001 C CNN
F 3 "" H 5900 4700 50  0000 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-tastert D3
U 1 1 580A2855
P 9950 4650
F 0 "D3" H 9950 4750 50  0000 C CNN
F 1 "LED GN" H 9950 4550 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9950 4650 50  0001 C CNN
F 3 "" H 9950 4650 50  0000 C CNN
	1    9950 4650
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 580A28E6
P 9950 5050
F 0 "R17" V 10030 5050 50  0000 C CNN
F 1 "270" V 9950 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9880 5050 50  0001 C CNN
F 3 "" H 9950 5050 50  0000 C CNN
	1    9950 5050
	1    0    0    -1  
$EndComp
Text GLabel 10800 4250 1    60   Input ~ 0
VCC3.3
Text GLabel 1000 4250 1    60   Input ~ 0
VCC24.0
$Comp
L R R19
U 1 1 59CFEDCC
P 1450 4400
F 0 "R19" V 1530 4400 50  0000 C CNN
F 1 "L600R" V 1450 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 4400 50  0001 C CNN
F 3 "" H 1450 4400 50  0000 C CNN
	1    1450 4400
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 59CFF25D
P 6500 4400
F 0 "R20" V 6580 4400 50  0000 C CNN
F 1 "L600R" V 6500 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0000 C CNN
	1    6500 4400
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 5ADDAEA9
P 10400 4400
F 0 "R21" V 10480 4400 50  0000 C CNN
F 1 "L600R" V 10400 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 4400 50  0001 C CNN
F 3 "" H 10400 4400 50  0001 C CNN
	1    10400 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4550 2700 4550
Wire Wire Line
	2700 4550 2700 4400
Connection ~ 2700 4400
Wire Wire Line
	3000 5450 3000 4700
Wire Wire Line
	5350 4400 5350 4500
Wire Wire Line
	5900 5450 5900 4850
Wire Wire Line
	5900 4400 5900 4550
Connection ~ 5350 4400
Connection ~ 5900 4400
Wire Wire Line
	9500 5450 9500 5000
Wire Wire Line
	9950 4850 9950 4900
Wire Wire Line
	9950 5450 9950 5200
Wire Wire Line
	7800 4500 7600 4500
Wire Wire Line
	7600 4500 7600 4400
Connection ~ 7600 4400
Wire Wire Line
	6950 4250 6950 4400
Connection ~ 6950 4400
Wire Wire Line
	8850 4500 8850 4400
Wire Wire Line
	8700 4400 10250 4400
Connection ~ 8850 4400
Wire Wire Line
	9950 4400 9950 4450
Wire Wire Line
	2300 4400 2300 4700
Connection ~ 2300 4400
Wire Wire Line
	1850 4700 1850 4400
Connection ~ 1850 4400
Wire Wire Line
	1300 4400 1000 4400
Wire Wire Line
	1000 4400 1000 4250
Wire Wire Line
	1850 5000 1850 5450
Connection ~ 3000 5450
Wire Wire Line
	2300 5000 2300 5450
Connection ~ 2300 5450
Wire Wire Line
	1600 4400 3000 4400
Wire Wire Line
	1200 5450 9950 5450
Wire Wire Line
	4400 4400 4400 4550
Wire Wire Line
	4400 4550 3800 4550
Wire Wire Line
	3800 4400 4000 4400
Wire Wire Line
	4300 4400 4900 4400
Wire Wire Line
	4700 4400 4700 4800
Connection ~ 4400 4400
Wire Wire Line
	4700 5450 4700 5100
Connection ~ 4700 4400
Wire Wire Line
	5350 4800 5350 5000
Wire Wire Line
	5350 5450 5350 5300
Connection ~ 4700 5450
Wire Wire Line
	3800 4700 5200 4700
Wire Wire Line
	5200 4700 5200 4900
Wire Wire Line
	5200 4900 5350 4900
Connection ~ 5350 4900
Connection ~ 5350 5450
Wire Wire Line
	5100 4400 6350 4400
Wire Wire Line
	6650 4400 7800 4400
Wire Wire Line
	7300 4550 7300 4400
Connection ~ 7300 4400
Wire Wire Line
	7300 5450 7300 4850
Connection ~ 5900 5450
Wire Wire Line
	8100 5450 8100 4750
Connection ~ 7300 5450
Wire Wire Line
	8400 4400 8500 4400
Wire Wire Line
	8850 4500 8400 4500
Connection ~ 8100 5450
Connection ~ 9500 5450
Connection ~ 9500 4400
Wire Wire Line
	1200 4700 1200 4400
Connection ~ 1200 4400
Wire Wire Line
	1200 5000 1200 5450
Connection ~ 1850 5450
Wire Wire Line
	10800 4250 10800 4400
Wire Wire Line
	10800 4400 10550 4400
Connection ~ 9950 4400
Wire Wire Line
	9500 4700 9500 4400
$Comp
L D D6
U 1 1 5ADE22A5
P 1200 4850
F 0 "D6" H 1200 4950 50  0000 C CNN
F 1 "D" H 1200 4750 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 1200 4850 50  0001 C CNN
F 3 "" H 1200 4850 50  0001 C CNN
	1    1200 4850
	0    1    1    0   
$EndComp
$Comp
L D D2
U 1 1 5ADF4646
P 4700 4950
F 0 "D2" H 4700 5050 50  0000 C CNN
F 1 "D" H 4700 4850 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 4700 4950 50  0001 C CNN
F 3 "" H 4700 4950 50  0001 C CNN
	1    4700 4950
	0    1    1    0   
$EndComp
$EndSCHEMATC
