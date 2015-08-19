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
LIBS:arduino_shieldsNCL
LIBS:Header1x01
LIBS:encoder_5_pins
LIBS:borniers
LIBS:thermostat-cache
EELAYER 25 0
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
L ARDUINO_SHIELD SHIELD?
U 1 1 55D363D2
P 6050 2650
F 0 "SHIELD?" H 5700 3600 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 6100 1700 60  0000 C CNN
F 2 "" H 6050 2650 60  0000 C CNN
F 3 "" H 6050 2650 60  0000 C CNN
	1    6050 2650
	1    0    0    -1  
$EndComp
$Comp
L LCD16X2 DS?
U 1 1 55D36442
P 8850 2150
F 0 "DS?" H 8050 2550 40  0000 C CNN
F 1 "LCD16X2" H 9550 2550 40  0000 C CNN
F 2 "WC1602A" H 8850 2100 35  0000 C CIN
F 3 "" H 8850 2150 60  0000 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L ENCODER_5_PINS EN?
U 1 1 55D365E3
P 3750 1350
F 0 "EN?" H 3900 1650 60  0000 C CNN
F 1 "ENCODER_5_PINS" H 3750 1050 60  0000 C CNN
F 2 "" H 3750 1350 60  0000 C CNN
F 3 "" H 3750 1350 60  0000 C CNN
	1    3750 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_3_V K?
U 1 1 55D36620
P 5050 1150
F 0 "K?" H 4950 1400 50  0000 C CNN
F 1 "CONN_3_V" H 5050 1340 40  0000 C CNN
F 2 "" H 5050 1150 60  0000 C CNN
F 3 "" H 5050 1150 60  0000 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55D43036
P 8300 3350
F 0 "C?" H 8325 3450 50  0000 L CNN
F 1 "C" H 8325 3250 50  0000 L CNN
F 2 "" H 8338 3200 30  0000 C CNN
F 3 "" H 8300 3350 60  0000 C CNN
	1    8300 3350
	-1   0    0    1   
$EndComp
Text GLabel 8300 3650 3    60   Input ~ 0
V0
Text GLabel 7250 2250 2    60   Input ~ 0
V0
Text GLabel 8100 3000 3    60   Input ~ 0
GND
Text GLabel 8200 2750 3    60   Input ~ 0
VCC
Text GLabel 8400 2750 3    60   Input ~ 0
RS
Text GLabel 7050 2350 2    60   Input ~ 0
RS
Text GLabel 8500 3000 3    60   Input ~ 0
GND
Text GLabel 8600 2750 3    60   Input ~ 0
GND
Text GLabel 9100 2750 3    60   Input ~ 0
D4
Text GLabel 7250 2450 2    60   Input ~ 0
D4
Text GLabel 9200 3050 3    60   Input ~ 0
D5
Text GLabel 9300 2750 3    60   Input ~ 0
D6
Text GLabel 9400 3050 3    60   Input ~ 0
D7
Text GLabel 7050 2550 2    60   Input ~ 0
D5
Text GLabel 7250 2750 2    60   Input ~ 0
D6
Text GLabel 7050 2850 2    60   Input ~ 0
D7
Text GLabel 9600 3050 3    60   Input ~ 0
GND
Text GLabel 9500 2750 3    60   Input ~ 0
BKL
Wire Wire Line
	8300 2650 8300 3200
Wire Wire Line
	8300 3650 8300 3500
Wire Wire Line
	7250 2250 7000 2250
Wire Wire Line
	8100 2650 8100 3000
Wire Wire Line
	8200 2750 8200 2650
Wire Wire Line
	8400 2750 8400 2650
Wire Wire Line
	7050 2350 7000 2350
Wire Wire Line
	8500 3000 8500 2650
Wire Wire Line
	8600 2750 8600 2650
Wire Wire Line
	9100 2750 9100 2650
Wire Wire Line
	7250 2450 7000 2450
Wire Wire Line
	9200 2650 9200 3050
Wire Wire Line
	9300 2750 9300 2650
Wire Wire Line
	9400 2650 9400 3050
Wire Wire Line
	7050 2550 7000 2550
Wire Wire Line
	7250 2750 7000 2750
Wire Wire Line
	7050 2850 7000 2850
Wire Wire Line
	9600 2650 9600 3050
Wire Wire Line
	9500 2750 9500 2650
Text GLabel 4800 3450 0    60   Input ~ 0
BKL
Wire Wire Line
	4800 3450 5100 3450
Text GLabel 4800 2550 0    60   Input ~ 0
GND
Wire Wire Line
	5100 2550 4800 2550
Wire Wire Line
	5100 2650 4950 2650
Wire Wire Line
	4950 2650 4950 2550
Connection ~ 4950 2550
Text GLabel 7200 1950 2    60   Input ~ 0
GND
Wire Wire Line
	7200 1950 7000 1950
$EndSCHEMATC
