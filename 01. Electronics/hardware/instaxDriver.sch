EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:QRE1113GR
LIBS:EVQ-P7L01P
LIBS:BK-883
LIBS:PTS525SM15SMTR2LFS
LIBS:EVQ-P7J01P
LIBS:BK-92
LIBS:BK-82
LIBS:instaxDriver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "InstaxDriver"
Date "2020-06-28"
Rev "V2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 5E975007
P 8100 4250
F 0 "D1" H 8100 4350 50  0000 C CNN
F 1 "LED" H 8100 4150 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8100 4250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2867894.pdf" H 8100 4250 50  0001 C CNN
F 4 "3255534" H 8100 4250 60  0001 C CNN "Farnell"
F 5 "Wurth Elektronik" H 8100 4250 60  0001 C CNN "Manufacturer"
F 6 "150060AS75020" H 8100 4250 60  0001 C CNN "ManPartNum"
	1    8100 4250
	0    -1   -1   0   
$EndComp
$Comp
L BSS138 TR1
U 1 1 5E975114
P 9450 4400
F 0 "TR1" H 9650 4450 50  0000 L CNN
F 1 "BSS806NE" H 9650 4350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 9650 4500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1932447.pdf" H 9450 4400 50  0001 C CNN
F 4 "2480654" H 9450 4400 60  0001 C CNN "Farnell"
F 5 "Infineon" H 9450 4400 60  0001 C CNN "Manufacturer"
F 6 "BSS806NEH6327XTSA1" H 9450 4400 60  0001 C CNN "ManPartNum"
	1    9450 4400
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5E975191
P 9150 3150
F 0 "D2" H 9150 3250 50  0000 C CNN
F 1 "CD0603-B0240R" H 9150 3050 50  0001 C CNN
F 2 "Diodes_SMD:D_0603" H 9150 3150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2920310.pdf" H 9150 3150 50  0001 C CNN
F 4 "3407086" H 9150 3150 60  0001 C CNN "Farnell"
F 5 "ROHM" H 9150 3150 60  0001 C CNN "Manufacturer"
F 6 "RB522ES-30T15R" H 9150 3150 60  0001 C CNN "ManPartNum"
	1    9150 3150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5E97726E
P 8100 4700
F 0 "R2" V 8180 4700 50  0000 C CNN
F 1 "10K" V 8100 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8030 4700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2860681.pdf" H 8100 4700 50  0001 C CNN
F 4 "2447230" V 8100 4700 60  0001 C CNN "Farnell"
F 5 "Multicomp Pro" V 8100 4700 60  0001 C CNN "Manufacturer"
F 6 "MCWR06X1002FTL" V 8100 4700 60  0001 C CNN "ManPartNum"
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5EBAF3C1
P 8750 4700
F 0 "R3" V 8830 4700 50  0000 C CNN
F 1 "221K" V 8750 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8680 4700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189593.pdf" H 8750 4700 50  0001 C CNN
F 4 "2694777" V 8750 4700 60  0001 C CNN "Farnell"
F 5 "Multicomp Pro" V 8750 4700 60  0001 C CNN "Manufacturer"
F 6 "MCWR06X2213FTL" V 8750 4700 60  0001 C CNN "ManPartNum"
	1    8750 4700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5EBB00A8
P 3100 1950
F 0 "C2" H 3110 2020 50  0000 L CNN
F 1 "1uF" H 3110 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3100 1950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2860632.pdf" H 3100 1950 50  0001 C CNN
F 4 "2320814" H 3100 1950 60  0001 C CNN "Farnell"
F 5 "Multicomp Pro" H 3100 1950 60  0001 C CNN "Manufacturer"
F 6 "MC0603B105K160CT" H 3100 1950 60  0001 C CNN "ManPartNum"
	1    3100 1950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5EC122AE
P 2650 1950
F 0 "C1" H 2660 2020 50  0000 L CNN
F 1 "100pF" H 2660 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2650 1950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2620236.pdf" H 2650 1950 50  0001 C CNN
F 4 "2896678" H 2650 1950 60  0001 C CNN "Farnell"
F 5 "Vishay" H 2650 1950 60  0001 C CNN "Manufacturer"
F 6 "VJ0603A101JXBAC" H 2650 1950 60  0001 C CNN "ManPartNum"
	1    2650 1950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5EC12398
P 3600 1950
F 0 "C3" H 3610 2020 50  0000 L CNN
F 1 "10uF" H 3610 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3600 1950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1910934.pdf" H 3600 1950 50  0001 C CNN
F 4 "2113070" H 3600 1950 60  0001 C CNN "Farnell"
F 5 "TAIYO YUDEN" H 3600 1950 60  0001 C CNN "Manufacturer"
F 6 "LMK107BBJ106MALT" H 3600 1950 60  0001 C CNN "ManPartNum"
	1    3600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5100 9550 5100
Wire Wire Line
	9550 3200 10000 3200
Wire Wire Line
	9550 3100 10000 3100
Wire Wire Line
	9550 1400 9550 3100
Wire Wire Line
	9150 3300 9150 3400
Wire Wire Line
	9150 3400 9550 3400
Connection ~ 9550 3400
Wire Wire Line
	9150 3000 9150 2850
Wire Wire Line
	9150 2850 9550 2850
Connection ~ 9550 2850
Wire Wire Line
	4500 2800 4600 2800
Wire Wire Line
	4500 1400 4500 2800
Connection ~ 4500 1400
Wire Wire Line
	4500 3300 4600 3300
Wire Wire Line
	4500 3300 4500 5100
Connection ~ 4500 5100
Wire Wire Line
	2100 1400 2100 3000
Wire Wire Line
	8100 5100 8100 4850
Connection ~ 8100 5100
Wire Wire Line
	8100 4550 8100 4400
Wire Wire Line
	8750 4850 8750 5100
Connection ~ 8750 5100
Wire Wire Line
	2100 1400 9550 1400
Wire Wire Line
	2100 4250 2100 5100
Connection ~ 3250 5100
Wire Wire Line
	2650 1850 2650 1400
Connection ~ 2650 1400
Wire Wire Line
	3600 1850 3600 1400
Connection ~ 3600 1400
Wire Wire Line
	3100 1850 3100 1400
Connection ~ 3100 1400
$Comp
L BK-82 BT1
U 1 1 5EC13174
P 2100 3200
F 0 "BT1" H 1950 3350 50  0000 L BNN
F 1 "BK-82" H 1950 3000 50  0001 L BNN
F 2 "BAT_BK-82" H 2100 3200 50  0001 L BNN
F 3 "http://www.farnell.com/datasheets/2300356.pdf" H 2100 3200 50  0001 L BNN
F 4 "908721" H 2100 3200 60  0001 C CNN "Farnell"
F 5 "Keystone" H 2100 3200 60  0001 C CNN "Manufacturer"
F 6 "82" H 2100 3200 60  0001 C CNN "ManPartNum"
	1    2100 3200
	0    1    1    0   
$EndComp
$Comp
L BK-82 BT2
U 1 1 5EC1343A
P 2100 3900
F 0 "BT2" H 1950 4050 50  0000 L BNN
F 1 "BK-82" H 1950 3700 50  0001 L BNN
F 2 "BAT_BK-82" H 2100 3900 50  0001 L BNN
F 3 "http://www.farnell.com/datasheets/2300356.pdf" H 2100 3900 50  0001 L BNN
F 4 "908721" H 2100 3900 60  0001 C CNN "Farnell"
F 5 "Keystone" H 2100 3900 60  0001 C CNN "Manufacturer"
F 6 "82" H 2100 3900 60  0001 C CNN "ManPartNum"
	1    2100 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3700 2100 3550
Text Notes 7950 6950 0    59   ~ 12
S/W: FIRMWARE.hex (MD5SUM)
Text Notes 8500 7550 0    60   ~ 12
EW
Text Notes 10050 7550 0    60   ~ 12
EW
Text Notes 8450 7800 0    60   ~ 12
EW
$Comp
L ATTINY85-S IC1
U 1 1 5EDBB879
P 5950 3050
F 0 "IC1" H 4800 3450 50  0000 C CNN
F 1 "ATTINY85V-S" H 6950 2650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6900 3050 50  0001 C CIN
F 3 "" H 5950 3050 50  0000 C CNN
F 4 "1455166" H 5950 3050 60  0001 C CNN "Farnell"
F 5 "Atmel" H 5950 3050 60  0001 C CNN "Manufacturer"
	1    5950 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 2900 8750 4550
Wire Wire Line
	2650 2050 2650 2150
Wire Wire Line
	2650 2150 3600 2150
Wire Wire Line
	3600 2150 3600 2050
Wire Wire Line
	3100 2050 3100 2150
Connection ~ 3100 2150
Wire Wire Line
	3250 2150 3250 5100
Connection ~ 3250 2150
$Comp
L CONN_02X03 P3
U 1 1 5EDBC571
P 8000 2000
F 0 "P3" H 8000 2200 50  0000 C CNN
F 1 "CONN_02X03" H 8000 1800 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03" H 8000 800 50  0001 C CNN
F 3 "" H 8000 800 50  0000 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5EDBC6AA
P 6600 4500
F 0 "P2" H 6600 4650 50  0000 C CNN
F 1 "CONN_01X02" V 6700 4500 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 6600 4500 50  0001 C CNN
F 3 "" H 6600 4500 50  0000 C CNN
	1    6600 4500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5EDBC738
P 6600 3850
F 0 "P1" H 6600 4000 50  0000 C CNN
F 1 "CONN_01X02" V 6700 3850 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 6600 3850 50  0001 C CNN
F 3 "" H 6600 3850 50  0000 C CNN
	1    6600 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 2800 8600 2800
Wire Wire Line
	8600 2800 8600 2000
Wire Wire Line
	8600 2000 8250 2000
Wire Wire Line
	8500 2100 8500 5100
Connection ~ 8500 5100
Wire Wire Line
	8250 1900 8500 1900
Wire Wire Line
	8500 1900 8500 1400
Connection ~ 8500 1400
Wire Wire Line
	7700 3300 7300 3300
Wire Wire Line
	7700 2100 7700 3800
Wire Wire Line
	7700 2100 7750 2100
Wire Wire Line
	7650 3000 7650 2000
Wire Wire Line
	7650 2000 7750 2000
Wire Wire Line
	7300 2900 8750 2900
Wire Wire Line
	7550 2900 7550 1900
Wire Wire Line
	7550 1900 7750 1900
Text Notes 7750 1750 0    60   ~ 0
Prog Header
Text Notes 8650 2150 0    60   ~ 0
VTG\nMOSI\nGND
Text Notes 7300 2150 0    60   ~ 0
MISO\n SCK\n RST
Wire Wire Line
	7700 3800 6800 3800
Connection ~ 7700 3300
Wire Wire Line
	6800 3900 7700 3900
Wire Wire Line
	7700 3900 7700 5100
Connection ~ 7700 5100
Text Notes 6050 3900 0    60   ~ 0
EJECT SW
Wire Wire Line
	6800 4550 7600 4550
Connection ~ 7600 5100
Connection ~ 7550 2900
Connection ~ 8750 4450
Wire Wire Line
	7600 3200 7600 4450
Wire Wire Line
	7600 4450 6800 4450
Text Notes 6200 4550 0    60   ~ 0
SPARE
Wire Wire Line
	8250 2100 8500 2100
Wire Wire Line
	9550 5100 9550 4600
Wire Wire Line
	9550 3200 9550 4200
Wire Wire Line
	9250 4450 8750 4450
Wire Wire Line
	7300 3200 7600 3200
Wire Wire Line
	7600 4550 7600 5100
Wire Wire Line
	7300 3000 7650 3000
Wire Wire Line
	7300 3100 8100 3100
Wire Wire Line
	8100 3100 8100 4100
$Comp
L R R1
U 1 1 5EE4EFA7
P 7000 2050
F 0 "R1" V 7080 2050 50  0000 C CNN
F 1 "221K" V 7000 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 2050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2860681.pdf" H 7000 2050 50  0001 C CNN
F 4 "2694777" V 7000 2050 60  0001 C CNN "Farnell"
F 5 "Multicomp Pro" V 7000 2050 60  0001 C CNN "Manufacturer"
F 6 "MCWR06X2213FTL" V 7000 2050 60  0001 C CNN "ManPartNum"
	1    7000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2200 7000 2350
Wire Wire Line
	7000 2350 7700 2350
Connection ~ 7700 2350
Wire Wire Line
	7000 1900 7000 1400
Connection ~ 7000 1400
Text Label 2300 1400 0    60   ~ 0
VCC
Text Label 2250 5100 0    60   ~ 0
GND
Text Label 7350 3300 0    60   ~ 0
RESET
Text Label 7400 3200 0    60   ~ 0
SPARE
Text Label 7400 3100 0    60   ~ 0
LED_INDICATOR
Text Label 7400 3000 0    60   ~ 0
SCK
Text Label 7400 2900 0    60   ~ 0
MISO
Text Label 7400 2800 0    60   ~ 0
MOSI
$Comp
L CONN_01X02 P4
U 1 1 5EEE43D0
P 10200 3150
F 0 "P4" H 10200 3300 50  0000 C CNN
F 1 "CONN_01X02" V 10300 3150 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 10200 3150 50  0001 C CNN
F 3 "" H 10200 3150 50  0000 C CNN
	1    10200 3150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5EF39241
P 7100 4800
F 0 "C4" H 7110 4870 50  0000 L CNN
F 1 "100pF" H 7110 4720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7100 4800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2620236.pdf" H 7100 4800 50  0001 C CNN
F 4 "2896678" H 7100 4800 60  0001 C CNN "Farnell"
F 5 "Vishay" H 7100 4800 60  0001 C CNN "Manufacturer"
F 6 "VJ0603A101JXBAC" H 7100 4800 60  0001 C CNN "ManPartNum"
	1    7100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4900 7100 5100
Connection ~ 7100 5100
Wire Wire Line
	7100 4700 7100 3800
Connection ~ 7100 3800
Text Notes 1400 7350 0    60   ~ 0
Instax Driver V2.0 Board to control the eject mechanism to allow Instax Film to be used with a Hasselblad camera.\nATtiny85 (IC1) replaces the smaller controller (used on the first version of the board) and utilises the band gap and PWM module to set a fixed output voltage for the motor. \n2 x 1.5V AA batteries power the circuit. IC1 requires 1.8-5.0 V, no voltage regulator is required. IC1 will not start up if input voltage is below a set voltage, threshold set in software.\nThe motor runs for a set period of time (changeable in code) once activated by the 'EJECT' switch and then goes into deep sleep mode \nallowing the batteries to remain connected without using excessive power. Power consumption in sleep mode is below 10uA. \nA spare pin (PB4) is broken out to a 0.1" pitch connector for future use. \nA LED (D1) is provided for status indication.\nTR1 is gated by a PWM output from the IC1. The PWM is loop controlled to maintain a fixed output voltage, changeable in software.\nMotor is connected to P4 and the FET is protected by Flyback diode, D2. \nP3 is a standard pin layout ICSP header. \nC1-3 provide decoupling to IC1. 
$EndSCHEMATC
