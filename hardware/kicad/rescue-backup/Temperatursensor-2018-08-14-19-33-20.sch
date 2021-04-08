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
Sheet 3 3
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
L LM35DZ U6
U 1 1 58121F8F
P 2950 3150
F 0 "U6" H 2750 3400 60  0000 C CNN
F 1 "LM35DZ" H 3200 3400 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Horizontal1_Molded_Narrow" H 2950 3150 60  0001 C CNN
F 3 "" H 2950 3150 60  0001 C CNN
	1    2950 3150
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 58121FDF
P 2300 3150
F 0 "C12" H 2325 3250 50  0000 L CNN
F 1 "100n" H 2325 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 3000 50  0001 C CNN
F 3 "" H 2300 3150 50  0000 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3300 2300 4100
Wire Wire Line
	2950 2600 2950 2800
Wire Wire Line
	2950 2700 2300 2700
Wire Wire Line
	2300 2700 2300 3000
Connection ~ 2950 2700
Text GLabel 2950 2600 1    60   Input ~ 0
VCC5.0
$Comp
L D D4
U 1 1 581220AD
P 2950 3800
F 0 "D4" H 2950 3900 50  0000 C CNN
F 1 "D" H 2950 3700 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 2950 3800 50  0001 C CNN
F 3 "" H 2950 3800 50  0000 C CNN
	1    2950 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 3550 2950 3650
Wire Wire Line
	2300 4100 4850 4100
Wire Wire Line
	2950 3950 2950 4150
Text GLabel 2950 4150 3    60   Input ~ 0
GND
Connection ~ 2950 4100
Text HLabel 5100 3150 2    60   Input ~ 0
TEMP+
Wire Wire Line
	3350 3150 4200 3150
Text HLabel 5100 3600 2    60   Input ~ 0
TEMP-
Wire Wire Line
	2950 3600 4200 3600
Connection ~ 2950 3600
$Comp
L R R18
U 1 1 58122131
P 3500 3850
F 0 "R18" V 3580 3850 50  0000 C CNN
F 1 "18k" V 3500 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 3850 50  0001 C CNN
F 3 "" H 3500 3850 50  0000 C CNN
	1    3500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3700 3500 3150
Connection ~ 3500 3150
Wire Wire Line
	3500 4100 3500 4000
$Comp
L R R22
U 1 1 5ADD992D
P 4350 3150
F 0 "R22" V 4430 3150 50  0000 C CNN
F 1 "R" V 4350 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4280 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 5ADD99D8
P 4350 3600
F 0 "R23" V 4430 3600 50  0000 C CNN
F 1 "R" V 4350 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4280 3600 50  0001 C CNN
F 3 "" H 4350 3600 50  0001 C CNN
	1    4350 3600
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5ADD9A6F
P 4650 3350
F 0 "C1" H 4675 3450 50  0000 L CNN
F 1 "C" H 4675 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4688 3200 50  0001 C CNN
F 3 "" H 4650 3350 50  0001 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5ADD9B1E
P 4850 3850
F 0 "C2" H 4875 3950 50  0000 L CNN
F 1 "C" H 4875 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4888 3700 50  0001 C CNN
F 3 "" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3150 5100 3150
Wire Wire Line
	4650 3200 4650 3150
Connection ~ 4650 3150
Wire Wire Line
	4650 4100 4650 3500
Connection ~ 3500 4100
Wire Wire Line
	4850 3700 4850 3600
Wire Wire Line
	4500 3600 5100 3600
Connection ~ 4850 3600
Wire Wire Line
	4850 4100 4850 4000
Connection ~ 4650 4100
$EndSCHEMATC
