EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 16992 11339
encoding utf-8
Sheet 4 6
Title ""
Date "2020-02-25"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3400 7350 4200 7350
Wire Wire Line
	14400 4100 14400 3900
Wire Wire Line
	14400 3900 13900 3900
Wire Wire Line
	13900 3900 13900 4200
Connection ~ 13900 3900
Wire Wire Line
	4100 1900 4500 1900
Wire Wire Line
	4100 1900 3600 1900
Wire Wire Line
	3600 1900 3600 3100
Connection ~ 4100 1900
Wire Wire Line
	5500 8650 3900 8650
Wire Wire Line
	3900 8650 3900 7650
Wire Wire Line
	3900 7650 4200 7650
Wire Wire Line
	5200 7550 5500 7550
Wire Wire Line
	5500 7550 5500 8650
Wire Wire Line
	5400 8550 4000 8550
Wire Wire Line
	4000 8550 4000 7850
Wire Wire Line
	4000 7850 4200 7850
Wire Wire Line
	5200 7650 5400 7650
Wire Wire Line
	5400 7650 5400 8550
Wire Wire Line
	4200 7450 3400 7450
Wire Wire Line
	3400 7450 3400 7750
Wire Wire Line
	4200 7750 3400 7750
Connection ~ 3400 7750
Wire Wire Line
	14400 4700 14400 5000
Wire Wire Line
	13900 4500 13900 5000
Wire Wire Line
	13900 5000 14400 5000
Connection ~ 14400 5000
Wire Wire Line
	4500 3100 4100 3100
Wire Wire Line
	4100 3100 4100 3600
Wire Wire Line
	3600 3400 3600 3600
Wire Wire Line
	3600 3600 4100 3600
Wire Wire Line
	5300 2000 5600 2000
Wire Wire Line
	5600 2000 5600 3600
Wire Wire Line
	5600 3600 4100 3600
Connection ~ 4100 3600
Wire Wire Line
	5600 8750 3800 8750
Wire Wire Line
	3800 8750 3800 7550
Wire Wire Line
	3800 7550 4200 7550
Wire Wire Line
	5200 7350 5600 7350
Wire Wire Line
	5600 7350 5600 8750
Wire Wire Line
	5200 7850 6500 7850
Text GLabel 6500 7850 2    47   Output ~ 0
BOOT
Wire Wire Line
	4200 8050 2500 8050
Text GLabel 2500 8050 0    47   Input ~ 0
AS
Wire Wire Line
	4200 8150 2500 8150
Text GLabel 2500 8150 0    47   Input ~ 0
RESET
Wire Wire Line
	3200 2000 4500 2000
Text GLabel 3200 2000 0    47   Input ~ 0
FC0
Wire Wire Line
	3200 2200 4500 2200
Text GLabel 3200 2200 0    47   Input ~ 0
FC1
Wire Wire Line
	3200 2300 4500 2300
Text GLabel 3200 2300 0    47   Input ~ 0
FC2
Wire Wire Line
	3200 2400 4500 2400
Text GLabel 3200 2400 0    47   Input ~ 0
ODDROMSEL
Wire Wire Line
	3200 2500 4500 2500
Text GLabel 3200 2500 0    47   Input ~ 0
ODDRAMSEL
Wire Wire Line
	3200 2600 4500 2600
Text GLabel 3200 2600 0    47   Input ~ 0
EVENROMSEL
Wire Wire Line
	3200 2700 4500 2700
Text GLabel 3200 2700 0    47   Input ~ 0
EVENRAMSEL
Wire Wire Line
	3200 2800 4500 2800
Text GLabel 3200 2800 0    47   Input ~ 0
IOSEL
Wire Wire Line
	4500 2900 3200 2900
Text GLabel 3200 2900 0    47   Input ~ 0
IODTACK
Wire Wire Line
	5300 2800 5950 2800
Text GLabel 5950 2800 2    47   Output ~ 0
IACK
Wire Wire Line
	5950 2700 5300 2700
Text GLabel 5950 2700 2    47   Output ~ 0
DTACK
Wire Wire Line
	5300 2600 5950 2600
Text GLabel 5950 2600 2    47   Output ~ 0
MFPDS
Wire Wire Line
	5300 2500 5950 2500
Text GLabel 5950 2500 2    47   Output ~ 0
RAMOE
Wire Wire Line
	5950 2400 5300 2400
Text GLabel 5950 2400 2    47   Input ~ 0
RW
Wire Wire Line
	5950 2300 5300 2300
Text GLabel 5950 2300 2    47   Input ~ 0
LDS
$Comp
L rosco_m68k-eagle-import:74174N IC6
U 1 1 6A4BA564
P 4700 7750
AR Path="/6A4BA564" Ref="IC6"  Part="1" 
AR Path="/5E53B810/6A4BA564" Ref="IC6"  Part="1" 
F 0 "IC6" H 4400 8275 59  0000 L BNN
F 1 "74174N" H 4400 7150 59  0000 L BNN
F 2 "rosco_m68k:DIL16" H 4700 7750 50  0001 C CNN
F 3 "" H 4700 7750 50  0001 C CNN
	1    4700 7750
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:74174N IC6
U 2 1 6A4BA568
P 14400 4400
AR Path="/6A4BA568" Ref="IC6"  Part="2" 
AR Path="/5E53B810/6A4BA568" Ref="IC6"  Part="2" 
F 0 "IC6" H 14375 4375 59  0000 L BNN
F 1 "74174N" H 14100 3800 59  0001 L BNN
F 2 "rosco_m68k:DIL16" H 14400 4400 50  0001 C CNN
F 3 "" H 14400 4400 50  0001 C CNN
	2    14400 4400
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:C2,5-3 C19
U 1 1 429AAC70
P 13900 4300
AR Path="/429AAC70" Ref="C19"  Part="1" 
AR Path="/5E53B810/429AAC70" Ref="C19"  Part="1" 
F 0 "C19" H 13960 4315 59  0000 L BNN
F 1 "100nF" H 13960 4115 59  0000 L BNN
F 2 "rosco_m68k:C2.5-3" H 13900 4300 50  0001 C CNN
F 3 "" H 13900 4300 50  0001 C CNN
	1    13900 4300
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:CPOL-EUE2.5-5 C18
U 1 1 7627B900
P 13200 4300
AR Path="/7627B900" Ref="C18"  Part="1" 
AR Path="/5E53B810/7627B900" Ref="C18"  Part="1" 
F 0 "C18" H 13245 4319 59  0000 L BNN
F 1 "100uF" H 13245 4119 59  0000 L BNN
F 2 "rosco_m68k:E2,5-5" H 13200 4300 50  0001 C CNN
F 3 "" H 13200 4300 50  0001 C CNN
	1    13200 4300
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:CPOL-EUE2.5-5 C16
U 1 1 C6962C83
P 11600 4300
AR Path="/C6962C83" Ref="C16"  Part="1" 
AR Path="/5E53B810/C6962C83" Ref="C16"  Part="1" 
F 0 "C16" H 11645 4319 59  0000 L BNN
F 1 "100uF" H 11645 4119 59  0000 L BNN
F 2 "rosco_m68k:E2,5-5" H 11600 4300 50  0001 C CNN
F 3 "" H 11600 4300 50  0001 C CNN
	1    11600 4300
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:CPOL-EUE2.5-5 C17
U 1 1 1CA3CA5D
P 12400 4300
AR Path="/1CA3CA5D" Ref="C17"  Part="1" 
AR Path="/5E53B810/1CA3CA5D" Ref="C17"  Part="1" 
F 0 "C17" H 12445 4319 59  0000 L BNN
F 1 "100uF" H 12445 4119 59  0000 L BNN
F 2 "rosco_m68k:E2,5-5" H 12400 4300 50  0001 C CNN
F 3 "" H 12400 4300 50  0001 C CNN
	1    12400 4300
	1    0    0    -1  
$EndComp
$Comp
L rosco_m68k-eagle-import:C2,5-3 C15
U 1 1 82FD5692
P 3600 3200
AR Path="/82FD5692" Ref="C15"  Part="1" 
AR Path="/5E53B810/82FD5692" Ref="C15"  Part="1" 
F 0 "C15" H 3660 3215 59  0000 L BNN
F 1 "100nF" H 3660 3015 59  0000 L BNN
F 2 "rosco_m68k:C2.5-3" H 3600 3200 50  0001 C CNN
F 3 "" H 3600 3200 50  0001 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
Text Notes 4500 8950 0    59   ~ 0
/BOOT LINE GENERATOR
NoConn ~ 5300 2900
NoConn ~ 5200 7450
NoConn ~ 5200 7750
NoConn ~ 5300 2200
Text Notes 12300 10000 0    59   ~ 0
Copyright ©2019-2020 Ross Bamford and Contributors.\nOpen Source Hardware licenced under CERN Open Hardware Licence. \nSee https://github.com/roscopeco/rosco_m68k/blob/master/LICENCE.hardware.txt\nOSHWA UK000006 (https://certification.oshwa.org/uk000006.html)\n
Text Notes 12650 10550 0    59   ~ 0
DTACK & BOOT
Text Notes 15900 10700 0    59   ~ 0
1
$Comp
L power:GND #PWR0125
U 1 1 5FBDB2E9
P 4100 3950
F 0 "#PWR0125" H 4100 3700 50  0001 C CNN
F 1 "GND" H 4105 3777 50  0000 C CNN
F 2 "" H 4100 3950 50  0001 C CNN
F 3 "" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3600 4100 3950
$Comp
L power:VCC #PWR0126
U 1 1 5FBDCF78
P 4100 1300
F 0 "#PWR0126" H 4100 1150 50  0001 C CNN
F 1 "VCC" H 4117 1473 50  0000 C CNN
F 2 "" H 4100 1300 50  0001 C CNN
F 3 "" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1300 4100 1900
$Comp
L power:VCC #PWR0127
U 1 1 5FBDEC22
P 11600 3150
F 0 "#PWR0127" H 11600 3000 50  0001 C CNN
F 1 "VCC" H 11617 3323 50  0000 C CNN
F 2 "" H 11600 3150 50  0001 C CNN
F 3 "" H 11600 3150 50  0001 C CNN
	1    11600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0128
U 1 1 5FBDF31E
P 12400 3150
F 0 "#PWR0128" H 12400 3000 50  0001 C CNN
F 1 "VCC" H 12417 3323 50  0000 C CNN
F 2 "" H 12400 3150 50  0001 C CNN
F 3 "" H 12400 3150 50  0001 C CNN
	1    12400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0129
U 1 1 5FBDF8FC
P 13200 3150
F 0 "#PWR0129" H 13200 3000 50  0001 C CNN
F 1 "VCC" H 13217 3323 50  0000 C CNN
F 2 "" H 13200 3150 50  0001 C CNN
F 3 "" H 13200 3150 50  0001 C CNN
	1    13200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5FBE0135
P 13900 3150
F 0 "#PWR0130" H 13900 3000 50  0001 C CNN
F 1 "VCC" H 13917 3323 50  0000 C CNN
F 2 "" H 13900 3150 50  0001 C CNN
F 3 "" H 13900 3150 50  0001 C CNN
	1    13900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 3150 13900 3900
$Comp
L power:GND #PWR0131
U 1 1 5FBE605E
P 11600 5550
F 0 "#PWR0131" H 11600 5300 50  0001 C CNN
F 1 "GND" H 11605 5377 50  0000 C CNN
F 2 "" H 11600 5550 50  0001 C CNN
F 3 "" H 11600 5550 50  0001 C CNN
	1    11600 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5FBE646B
P 12400 5550
F 0 "#PWR0132" H 12400 5300 50  0001 C CNN
F 1 "GND" H 12405 5377 50  0000 C CNN
F 2 "" H 12400 5550 50  0001 C CNN
F 3 "" H 12400 5550 50  0001 C CNN
	1    12400 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5FBE6E1D
P 13200 5550
F 0 "#PWR0133" H 13200 5300 50  0001 C CNN
F 1 "GND" H 13205 5377 50  0000 C CNN
F 2 "" H 13200 5550 50  0001 C CNN
F 3 "" H 13200 5550 50  0001 C CNN
	1    13200 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5FBE724F
P 14400 5550
F 0 "#PWR0134" H 14400 5300 50  0001 C CNN
F 1 "GND" H 14405 5377 50  0000 C CNN
F 2 "" H 14400 5550 50  0001 C CNN
F 3 "" H 14400 5550 50  0001 C CNN
	1    14400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 5000 14400 5550
Wire Wire Line
	12400 4500 12400 5550
Wire Wire Line
	11600 4500 11600 5550
$Comp
L power:GND #PWR0135
U 1 1 5FBEE028
P 3400 8650
F 0 "#PWR0135" H 3400 8400 50  0001 C CNN
F 1 "GND" H 3405 8477 50  0000 C CNN
F 2 "" H 3400 8650 50  0001 C CNN
F 3 "" H 3400 8650 50  0001 C CNN
	1    3400 8650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0136
U 1 1 5FBEE76A
P 3400 6950
F 0 "#PWR0136" H 3400 6800 50  0001 C CNN
F 1 "VCC" H 3417 7123 50  0000 C CNN
F 2 "" H 3400 6950 50  0001 C CNN
F 3 "" H 3400 6950 50  0001 C CNN
	1    3400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7750 3400 8650
Wire Wire Line
	3400 6950 3400 7350
Wire Wire Line
	13200 4500 13200 5550
Wire Wire Line
	11600 3150 11600 4200
Wire Wire Line
	12400 3150 12400 4200
Wire Wire Line
	13200 3150 13200 4200
$Comp
L rosco_m68k-eagle-import:ATF16V8BP3 IC5
U 1 1 5FE89F94
P 4900 2500
F 0 "IC5" H 4900 3386 59  0000 C CNN
F 1 "ATF16V8BQL" H 4900 3281 59  0000 C CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
Text Notes 4600 3350 0    50   ~ 0
GLUE_LOGIC.PLD
$EndSCHEMATC
