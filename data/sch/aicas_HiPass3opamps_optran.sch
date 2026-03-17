v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -10 0 0 {name=V1
value=0}
C {devices/vsource.sym} 570 -10 0 0 {name=V2
value=15}
C {devices/vsource.sym} 700 -10 0 0 {name=V3
value=15}
C {devices/capa.sym} 3600 -280 0 0 {name=C2
value=330n}
C {devices/capa.sym} 3700 -280 0 0 {name=C1
value=330n}
C {devices/capa.sym} 3820 -280 0 0 {name=C3
value=330n}
C {devices/capa.sym} 4440 -280 0 0 {name=C4
value=330n}
C {devices/res.sym} 2660 -250 0 0 {name=R8
value=2780}
C {devices/res.sym} 2310 -250 0 0 {name=R3
value=2780}
C {devices/res.sym} 440 -400 0 0 {name=R2
value=2780}
C {devices/res.sym} 2980 -230 0 0 {name=R1
value=2780}
C {devices/res.sym} 3360 -230 0 0 {name=R6
value=2780}
C {devices/res.sym} 660 -400 0 0 {name=R7
value=2780}
C {devices/res.sym} 2150 -250 0 0 {name=R10
value=10k}
C {devices/res.sym} 880 -400 0 0 {name=R4
value=2780}
C {devices/res.sym} 1100 -400 0 0 {name=R9
value=2780}
C {devices/res.sym} 1320 -400 0 0 {name=R11
value=100k}
C {TL072c.sym} 5580 -300 0 0 {name=XU1}
C {devices/res.sym} 2860 -210 0 0 {name=R5
value=10k}
C {devices/capa.sym} 4560 -280 0 0 {name=C6
value=330n}
C {devices/capa.sym} 4420 -190 0 0 {name=C5
value=330n}
C {devices/capa.sym} 4680 -280 0 0 {name=C7
value=330n}
C {devices/capa.sym} 4800 -280 0 0 {name=C8
value=330n}
C {devices/res.sym} 3480 -250 0 0 {name=R19
value=2780}
C {devices/res.sym} 3240 -250 0 0 {name=R14
value=2780}
C {devices/res.sym} 1540 -400 0 0 {name=R13
value=2780}
C {devices/res.sym} 3840 -200 0 0 {name=R12
value=2780}
C {devices/res.sym} 4200 -230 0 0 {name=R17
value=2780}
C {devices/res.sym} 1760 -400 0 0 {name=R18
value=2780}
C {devices/res.sym} 3100 -250 0 0 {name=R21
value=10k}
C {devices/res.sym} 1980 -400 0 0 {name=R15
value=2780}
C {devices/res.sym} 2200 -400 0 0 {name=R20
value=2780}
C {devices/res.sym} 2420 -400 0 0 {name=R22
value=100k}
C {OPA1656c.sym} 5580 -120 0 0 {name=XU2}
C {devices/res.sym} 3700 -200 0 0 {name=R16
value=10k}
C {devices/capa.sym} 5040 -280 0 0 {name=C10
value=330n}
C {devices/capa.sym} 4780 -160 0 0 {name=C9
value=330n}
C {devices/capa.sym} 5230 -280 0 0 {name=C11
value=330n}
C {devices/capa.sym} 5360 -280 0 0 {name=C12
value=330n}
C {devices/res.sym} 4320 -250 0 0 {name=R30
value=2780}
C {devices/res.sym} 3940 -250 0 0 {name=R25
value=2780}
C {devices/res.sym} 2640 -400 0 0 {name=R24
value=2780}
C {devices/res.sym} 4680 -190 0 0 {name=R23
value=2780}
C {devices/res.sym} 4920 -230 0 0 {name=R28
value=2780}
C {devices/res.sym} 2860 -400 0 0 {name=R29
value=2780}
C {devices/res.sym} 4080 -250 0 0 {name=R32
value=10k}
C {devices/res.sym} 3080 -400 0 0 {name=R26
value=2780}
C {devices/res.sym} 3300 -400 0 0 {name=R31
value=2780}
C {devices/res.sym} 3520 -400 0 0 {name=R33
value=100k}
C {OPA1612c.sym} 5580 60 0 0 {name=XU3}
C {devices/res.sym} 4540 -200 0 0 {name=R27
value=10k}
T {XU1} 5560 -280 0 0 0.25 0.25 {}
T {XU2} 5560 -100 0 0 0.25 0.25 {}
T {XU3} 5560 80 0 0 0.25 0.25 {}
N 5610 -280 5610 -100 {lab=15+}
N 5610 -100 5610 80 {lab=15+}
N 5610 -320 5610 -140 {lab=15-}
N 5610 -140 5610 40 {lab=15-}
N 3600 -250 3600 -310 {lab=Net-_C1-Pad1_}
N 3600 -310 3700 -310 {lab=Net-_C1-Pad1_}
N 2980 -260 2980 -240 {lab=Net-_R1-Pad1_}
N 2980 -240 2860 -240 {lab=Net-_R1-Pad1_}
N 4560 -250 4560 -220 {lab=Net-_C5-Pad1_}
N 4560 -220 4420 -220 {lab=Net-_C5-Pad1_}
N 4680 -250 4800 -250 {lab=Net-_C7-Pad2_}
N 4680 -250 4680 -200 {lab=Net-_C7-Pad2_}
N 4680 -200 4200 -200 {lab=Net-_C7-Pad2_}
N 3840 -230 3700 -230 {lab=Net-_R12-Pad1_}
N 5040 -250 5040 -190 {lab=Net-_C10-Pad2_}
N 5040 -190 4780 -190 {lab=Net-_C10-Pad2_}
N 4780 -190 4780 -160 {lab=Net-_C10-Pad2_}
N 4780 -160 4680 -160 {lab=Net-_C10-Pad2_}
N 5230 -250 5360 -250 {lab=Net-_C11-Pad2_}
N 5230 -250 5230 -200 {lab=Net-_C11-Pad2_}
N 5230 -200 4920 -200 {lab=Net-_C11-Pad2_}
N 4680 -220 4540 -220 {lab=Net-_R23-Pad1_}
N 4540 -220 4540 -230 {lab=Net-_R23-Pad1_}
C {devices/lab_pin.sym} 440 -40 0 0 {name=l_Net-_C1-Pad2_ sig_type=std_logic lab=Net-_C1-Pad2_}
C {devices/lab_pin.sym} 3700 -250 0 0 {name=l_Net-_C1-Pad2_ sig_type=std_logic lab=Net-_C1-Pad2_}
C {devices/lab_pin.sym} 4420 -160 0 0 {name=l_Net-_C1-Pad2_ sig_type=std_logic lab=Net-_C1-Pad2_}
C {devices/lab_pin.sym} 4780 -130 0 0 {name=l_Net-_C1-Pad2_ sig_type=std_logic lab=Net-_C1-Pad2_}
C {devices/gnd.sym} 440 20 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 570 20 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 700 -40 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 880 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1100 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1320 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1540 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1760 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1980 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 2200 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 2420 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 2640 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 2860 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 3080 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 3300 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 3520 -370 0 0 {name=l_GND lab=GND}
C {devices/lab_pin.sym} 570 -40 0 0 {name=l_15+ sig_type=std_logic lab=15+}
C {devices/lab_pin.sym} 700 20 0 0 {name=l_15- sig_type=std_logic lab=15-}
C {devices/lab_pin.sym} 3600 -310 0 0 {name=l_Net-_C2-Pad1_ sig_type=std_logic lab=Net-_C2-Pad1_}
C {devices/lab_pin.sym} 2310 -280 0 0 {name=l_Net-_C2-Pad1_ sig_type=std_logic lab=Net-_C2-Pad1_}
C {devices/lab_pin.sym} 5550 -320 0 0 {name=l_Net-_C2-Pad1_ sig_type=std_logic lab=Net-_C2-Pad1_}
C {devices/lab_pin.sym} 2980 -200 0 0 {name=l_Net-_C1-Pad1_ sig_type=std_logic lab=Net-_C1-Pad1_}
C {devices/lab_pin.sym} 3820 -310 0 0 {name=l_Net-_C3-Pad1_ sig_type=std_logic lab=Net-_C3-Pad1_}
C {devices/lab_pin.sym} 5550 -340 0 0 {name=l_Net-_C3-Pad1_ sig_type=std_logic lab=Net-_C3-Pad1_}
C {devices/lab_pin.sym} 2860 -180 0 0 {name=l_Net-_C3-Pad1_ sig_type=std_logic lab=Net-_C3-Pad1_}
C {devices/lab_pin.sym} 3820 -250 0 0 {name=l_Net-_C3-Pad2_ sig_type=std_logic lab=Net-_C3-Pad2_}
C {devices/lab_pin.sym} 4440 -250 0 0 {name=l_Net-_C3-Pad2_ sig_type=std_logic lab=Net-_C3-Pad2_}
C {devices/lab_pin.sym} 3360 -200 0 0 {name=l_Net-_C3-Pad2_ sig_type=std_logic lab=Net-_C3-Pad2_}
C {devices/lab_pin.sym} 4440 -310 0 0 {name=l_Net-_C4-Pad1_ sig_type=std_logic lab=Net-_C4-Pad1_}
C {devices/lab_pin.sym} 2660 -280 0 0 {name=l_Net-_C4-Pad1_ sig_type=std_logic lab=Net-_C4-Pad1_}
C {devices/lab_pin.sym} 5550 -300 0 0 {name=l_Net-_C4-Pad1_ sig_type=std_logic lab=Net-_C4-Pad1_}
C {devices/lab_pin.sym} 2660 -220 0 0 {name=l_Net-_R7-Pad1_ sig_type=std_logic lab=Net-_R7-Pad1_}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_Net-_R7-Pad1_ sig_type=std_logic lab=Net-_R7-Pad1_}
C {devices/lab_pin.sym} 2310 -220 0 0 {name=l_Net-_R2-Pad1_ sig_type=std_logic lab=Net-_R2-Pad1_}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_Net-_R2-Pad1_ sig_type=std_logic lab=Net-_R2-Pad1_}
C {devices/lab_pin.sym} 880 -370 0 0 {name=l_Net-_R1-Pad1_ sig_type=std_logic lab=Net-_R1-Pad1_}
C {devices/lab_pin.sym} 5610 -340 0 0 {name=l_Net-_R1-Pad1_ sig_type=std_logic lab=Net-_R1-Pad1_}
C {devices/lab_pin.sym} 3360 -260 0 0 {name=l_Net-_R10-Pad1_ sig_type=std_logic lab=Net-_R10-Pad1_}
C {devices/lab_pin.sym} 2150 -280 0 0 {name=l_Net-_R10-Pad1_ sig_type=std_logic lab=Net-_R10-Pad1_}
C {devices/lab_pin.sym} 1100 -370 0 0 {name=l_Net-_R10-Pad1_ sig_type=std_logic lab=Net-_R10-Pad1_}
C {devices/lab_pin.sym} 5610 -300 0 0 {name=l_Net-_R10-Pad1_ sig_type=std_logic lab=Net-_R10-Pad1_}
C {devices/lab_pin.sym} 2150 -220 0 0 {name=l_TL072_OUT sig_type=std_logic lab=TL072_OUT}
C {devices/lab_pin.sym} 1320 -430 0 0 {name=l_TL072_OUT sig_type=std_logic lab=TL072_OUT}
C {devices/lab_pin.sym} 5550 -280 0 0 {name=l_TL072_OUT sig_type=std_logic lab=TL072_OUT}
C {devices/lab_pin.sym} 4560 -310 0 0 {name=l_Net-_C6-Pad1_ sig_type=std_logic lab=Net-_C6-Pad1_}
C {devices/lab_pin.sym} 3240 -280 0 0 {name=l_Net-_C6-Pad1_ sig_type=std_logic lab=Net-_C6-Pad1_}
C {devices/lab_pin.sym} 5550 -140 0 0 {name=l_Net-_C6-Pad1_ sig_type=std_logic lab=Net-_C6-Pad1_}
C {devices/lab_pin.sym} 3840 -170 0 0 {name=l_Net-_C5-Pad1_ sig_type=std_logic lab=Net-_C5-Pad1_}
C {devices/lab_pin.sym} 4680 -310 0 0 {name=l_Net-_C7-Pad1_ sig_type=std_logic lab=Net-_C7-Pad1_}
C {devices/lab_pin.sym} 5550 -160 0 0 {name=l_Net-_C7-Pad1_ sig_type=std_logic lab=Net-_C7-Pad1_}
C {devices/lab_pin.sym} 3700 -170 0 0 {name=l_Net-_C7-Pad1_ sig_type=std_logic lab=Net-_C7-Pad1_}
C {devices/lab_pin.sym} 4800 -310 0 0 {name=l_Net-_C8-Pad1_ sig_type=std_logic lab=Net-_C8-Pad1_}
C {devices/lab_pin.sym} 3480 -280 0 0 {name=l_Net-_C8-Pad1_ sig_type=std_logic lab=Net-_C8-Pad1_}
C {devices/lab_pin.sym} 5550 -120 0 0 {name=l_Net-_C8-Pad1_ sig_type=std_logic lab=Net-_C8-Pad1_}
C {devices/lab_pin.sym} 3480 -220 0 0 {name=l_Net-_R18-Pad1_ sig_type=std_logic lab=Net-_R18-Pad1_}
C {devices/lab_pin.sym} 1760 -430 0 0 {name=l_Net-_R18-Pad1_ sig_type=std_logic lab=Net-_R18-Pad1_}
C {devices/lab_pin.sym} 3240 -220 0 0 {name=l_Net-_R13-Pad1_ sig_type=std_logic lab=Net-_R13-Pad1_}
C {devices/lab_pin.sym} 1540 -430 0 0 {name=l_Net-_R13-Pad1_ sig_type=std_logic lab=Net-_R13-Pad1_}
C {devices/lab_pin.sym} 1980 -370 0 0 {name=l_Net-_R12-Pad1_ sig_type=std_logic lab=Net-_R12-Pad1_}
C {devices/lab_pin.sym} 5610 -160 0 0 {name=l_Net-_R12-Pad1_ sig_type=std_logic lab=Net-_R12-Pad1_}
C {devices/lab_pin.sym} 4200 -260 0 0 {name=l_Net-_R17-Pad1_ sig_type=std_logic lab=Net-_R17-Pad1_}
C {devices/lab_pin.sym} 3100 -280 0 0 {name=l_Net-_R17-Pad1_ sig_type=std_logic lab=Net-_R17-Pad1_}
C {devices/lab_pin.sym} 2200 -370 0 0 {name=l_Net-_R17-Pad1_ sig_type=std_logic lab=Net-_R17-Pad1_}
C {devices/lab_pin.sym} 5610 -120 0 0 {name=l_Net-_R17-Pad1_ sig_type=std_logic lab=Net-_R17-Pad1_}
C {devices/lab_pin.sym} 3100 -220 0 0 {name=l_OPA1656_OUT sig_type=std_logic lab=OPA1656_OUT}
C {devices/lab_pin.sym} 2420 -430 0 0 {name=l_OPA1656_OUT sig_type=std_logic lab=OPA1656_OUT}
C {devices/lab_pin.sym} 5550 -100 0 0 {name=l_OPA1656_OUT sig_type=std_logic lab=OPA1656_OUT}
C {devices/lab_pin.sym} 5040 -310 0 0 {name=l_Net-_C10-Pad1_ sig_type=std_logic lab=Net-_C10-Pad1_}
C {devices/lab_pin.sym} 3940 -280 0 0 {name=l_Net-_C10-Pad1_ sig_type=std_logic lab=Net-_C10-Pad1_}
C {devices/lab_pin.sym} 5550 40 0 0 {name=l_Net-_C10-Pad1_ sig_type=std_logic lab=Net-_C10-Pad1_}
C {devices/lab_pin.sym} 5230 -310 0 0 {name=l_Net-_C11-Pad1_ sig_type=std_logic lab=Net-_C11-Pad1_}
C {devices/lab_pin.sym} 5550 20 0 0 {name=l_Net-_C11-Pad1_ sig_type=std_logic lab=Net-_C11-Pad1_}
C {devices/lab_pin.sym} 4540 -170 0 0 {name=l_Net-_C11-Pad1_ sig_type=std_logic lab=Net-_C11-Pad1_}
C {devices/lab_pin.sym} 5360 -310 0 0 {name=l_Net-_C12-Pad1_ sig_type=std_logic lab=Net-_C12-Pad1_}
C {devices/lab_pin.sym} 4320 -280 0 0 {name=l_Net-_C12-Pad1_ sig_type=std_logic lab=Net-_C12-Pad1_}
C {devices/lab_pin.sym} 5550 60 0 0 {name=l_Net-_C12-Pad1_ sig_type=std_logic lab=Net-_C12-Pad1_}
C {devices/lab_pin.sym} 4320 -220 0 0 {name=l_Net-_R29-Pad1_ sig_type=std_logic lab=Net-_R29-Pad1_}
C {devices/lab_pin.sym} 2860 -430 0 0 {name=l_Net-_R29-Pad1_ sig_type=std_logic lab=Net-_R29-Pad1_}
C {devices/lab_pin.sym} 3940 -220 0 0 {name=l_Net-_R24-Pad1_ sig_type=std_logic lab=Net-_R24-Pad1_}
C {devices/lab_pin.sym} 2640 -430 0 0 {name=l_Net-_R24-Pad1_ sig_type=std_logic lab=Net-_R24-Pad1_}
C {devices/lab_pin.sym} 3080 -370 0 0 {name=l_Net-_R23-Pad1_ sig_type=std_logic lab=Net-_R23-Pad1_}
C {devices/lab_pin.sym} 5610 20 0 0 {name=l_Net-_R23-Pad1_ sig_type=std_logic lab=Net-_R23-Pad1_}
C {devices/lab_pin.sym} 4920 -260 0 0 {name=l_Net-_R28-Pad1_ sig_type=std_logic lab=Net-_R28-Pad1_}
C {devices/lab_pin.sym} 4080 -280 0 0 {name=l_Net-_R28-Pad1_ sig_type=std_logic lab=Net-_R28-Pad1_}
C {devices/lab_pin.sym} 3300 -370 0 0 {name=l_Net-_R28-Pad1_ sig_type=std_logic lab=Net-_R28-Pad1_}
C {devices/lab_pin.sym} 5610 60 0 0 {name=l_Net-_R28-Pad1_ sig_type=std_logic lab=Net-_R28-Pad1_}
C {devices/lab_pin.sym} 4080 -220 0 0 {name=l_OPA1612_OUT sig_type=std_logic lab=OPA1612_OUT}
C {devices/lab_pin.sym} 3520 -430 0 0 {name=l_OPA1612_OUT sig_type=std_logic lab=OPA1612_OUT}
C {devices/lab_pin.sym} 5550 80 0 0 {name=l_OPA1612_OUT sig_type=std_logic lab=OPA1612_OUT}
