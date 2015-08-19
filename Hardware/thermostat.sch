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
P 2200 1800
F 0 "DS?" H 1400 2200 40  0000 C CNN
F 1 "LCD16X2" H 2900 2200 40  0000 C CNN
F 2 "WC1602A" H 2200 1750 35  0000 C CIN
F 3 "" H 2200 1800 60  0000 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
$Comp
L ENCODER_5_PINS EN?
U 1 1 55D365E3
P 8150 3250
F 0 "EN?" H 8300 3550 60  0000 C CNN
F 1 "ENCODER_5_PINS" H 8150 2950 60  0000 C CNN
F 2 "" H 8150 3250 60  0000 C CNN
F 3 "" H 8150 3250 60  0000 C CNN
	1    8150 3250
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
P 1650 3000
F 0 "C?" H 1675 3100 50  0000 L CNN
F 1 "100uF" H 1675 2900 50  0000 L CNN
F 2 "" H 1688 2850 30  0000 C CNN
F 3 "" H 1650 3000 60  0000 C CNN
	1    1650 3000
	-1   0    0    1   
$EndComp
Text GLabel 1650 3300 3    60   Input ~ 0
V0
Text GLabel 7250 2250 2    60   Input ~ 0
V0
Text GLabel 1450 2650 3    60   Input ~ 0
GND
Text GLabel 1550 2400 3    60   Input ~ 0
VCC
Text GLabel 1750 2400 3    60   Input ~ 0
RS
Text GLabel 7050 2350 2    60   Input ~ 0
RS
Text GLabel 1850 2650 3    60   Input ~ 0
GND
Text GLabel 1950 2400 3    60   Input ~ 0
GND
Text GLabel 2450 2400 3    60   Input ~ 0
D4
Text GLabel 7250 2450 2    60   Input ~ 0
D4
Text GLabel 2550 2700 3    60   Input ~ 0
D5
Text GLabel 2650 2400 3    60   Input ~ 0
D6
Text GLabel 2750 2700 3    60   Input ~ 0
D7
Text GLabel 7050 2550 2    60   Input ~ 0
D5
Text GLabel 7250 2750 2    60   Input ~ 0
D6
Text GLabel 7050 2850 2    60   Input ~ 0
D7
Text GLabel 2950 2700 3    60   Input ~ 0
GND
Text GLabel 2850 2400 3    60   Input ~ 0
BKL
Wire Wire Line
	1650 2300 1650 2850
Wire Wire Line
	1650 3300 1650 3150
Wire Wire Line
	7250 2250 7000 2250
Wire Wire Line
	1450 2300 1450 2650
Wire Wire Line
	1550 2400 1550 2300
Wire Wire Line
	1750 2400 1750 2300
Wire Wire Line
	7050 2350 7000 2350
Wire Wire Line
	1850 2650 1850 2300
Wire Wire Line
	1950 2400 1950 2300
Wire Wire Line
	2450 2400 2450 2300
Wire Wire Line
	7250 2450 7000 2450
Wire Wire Line
	2550 2300 2550 2700
Wire Wire Line
	2650 2400 2650 2300
Wire Wire Line
	2750 2300 2750 2700
Wire Wire Line
	7050 2550 7000 2550
Wire Wire Line
	7250 2750 7000 2750
Wire Wire Line
	7050 2850 7000 2850
Wire Wire Line
	2950 2300 2950 2700
Wire Wire Line
	2850 2400 2850 2300
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
Wire Wire Line
	7650 3150 7000 3150
Wire Wire Line
	7650 3350 7250 3350
Wire Wire Line
	7250 3350 7250 3250
Wire Wire Line
	7250 3250 7000 3250
Text GLabel 7550 3250 0    60   Input ~ 0
GND
Wire Wire Line
	7550 3250 7650 3250
$Comp
L R R?
U 1 1 55D49535
P 8950 2850
F 0 "R?" V 9030 2850 50  0000 C CNN
F 1 "10K" V 8950 2850 50  0000 C CNN
F 2 "" V 8880 2850 30  0000 C CNN
F 3 "" H 8950 2850 30  0000 C CNN
	1    8950 2850
	1    0    0    -1  
$EndComp
Text GLabel 8950 2550 1    60   Input ~ 0
GND
Text GLabel 7150 3050 2    60   Input ~ 0
BTN
Wire Wire Line
	7150 3050 7000 3050
Text GLabel 9200 3150 2    60   Input ~ 0
BTN
Wire Wire Line
	9200 3150 8650 3150
Wire Wire Line
	8950 3150 8950 3000
Connection ~ 8950 3150
Wire Wire Line
	8950 2700 8950 2550
Text GLabel 4750 2400 0    60   Input ~ 0
VCC
Wire Wire Line
	4750 2400 4950 2400
Wire Wire Line
	4950 2400 4950 2450
Wire Wire Line
	4950 2450 5100 2450
Text GLabel 8850 3350 2    60   Input ~ 0
VCC
Wire Wire Line
	8850 3350 8650 3350
$EndSCHEMATC
