v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 660 -400 0 0 {name=R15
value=1k}
C {devices/capa.sym} 710 -160 0 0 {name=C5
value=1u}
C {TL072c.sym} 2180 -300 0 0 {name=XU1}
C {devices/res.sym} 520 40 0 0 {name=R6
value=100k}
C {devices/res.sym} 440 -60 0 0 {name=R17
value=100}
C {devices/nmos4.sym} 200 -150 0 0 {name=M2
w=5u
l=0.18u
model=Tcase2}
C {devices/res.sym} 260 50 0 0 {name=R8
value=0.8}
C {devices/vsource.sym} 220 200 0 0 {name=V1
value=36}
C {devices/res.sym} 320 -150 0 0 {name=R7
value=0.1}
C {devices/capa.sym} 820 -70 0 0 {name=C4
value=10m}
C {devices/nmos4.sym} 440 -150 0 0 {name=M1
w=5u
l=0.18u
model=Tcase1}
C {devices/res.sym} 680 -60 0 0 {name=R16
value=100}
C {devices/capa.sym} 560 -120 0 0 {name=C1
value=1u}
C {devices/capa.sym} 1960 -280 0 0 {name=C2
value=0.33u}
C {devices/vsource.sym} 350 200 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 480 200 0 0 {name=Vamb1
value=25}
C {devices/res.sym} 760 50 0 0 {name=Rl1
value=8}
C {devices/res.sym} 1180 -310 0 0 {name=R13
value=0.2}
C {devices/res.sym} 1300 -260 0 0 {name=R14
value=3}
C {devices/capa.sym} 980 -400 0 0 {name=C7
value=300m}
C {devices/capa.sym} 1200 -400 0 0 {name=C6
value=300m}
C {devices/res.sym} 1420 -310 0 0 {name=R10
value=0.2}
C {devices/res.sym} 1530 -230 0 0 {name=R11
value=3}
C {devices/res.sym} 640 50 0 0 {name=R9
value=1G}
C {devices/res.sym} 380 50 0 0 {name=R12
value=1G}
C {devices/res.sym} 1400 -400 0 0 {name=R2
value=10k}
C {devices/capa.sym} 1560 -340 0 0 {name=C3
value=1u}
C {devices/res.sym} 1740 -400 0 0 {name=R4
value=1k}
C {devices/res.sym} 1360 -120 0 0 {name=R3
value=100k}
C {devices/res.sym} 1570 -550 0 0 {name=R1
value=390k}
C {devices/res.sym} 890 -190 0 0 {name=R5
value=19.5k}
T {XU1} 2160 -280 0 0 0.25 0.25 {}
N 660 -430 660 -190 {lab=out}
N 660 -190 710 -190 {lab=out}
N 710 -190 710 -40 {lab=out}
N 710 -40 820 -40 {lab=out}
N 820 -40 820 20 {lab=out}
N 820 20 760 20 {lab=out}
N 710 -130 710 -100 {lab=Net-_C4-Pad1_}
N 710 -100 820 -100 {lab=Net-_C4-Pad1_}
N 820 -100 820 -220 {lab=Net-_C4-Pad1_}
N 820 -220 890 -220 {lab=Net-_C4-Pad1_}
N 220 -180 220 -120 {lab=Net-_C4-Pad1_}
N 220 -120 320 -120 {lab=Net-_C4-Pad1_}
N 2150 -320 2150 -310 {lab=Net-_C2-Pad1_}
N 2150 -310 1960 -310 {lab=Net-_C2-Pad1_}
N 1400 -430 1400 -370 {lab=Net-_C3-Pad1_}
N 1400 -370 1560 -370 {lab=Net-_C3-Pad1_}
N 1560 -370 1560 -520 {lab=Net-_C3-Pad1_}
N 1560 -520 1570 -520 {lab=Net-_C3-Pad1_}
N 520 10 520 20 {lab=Net-_M2-Pad3_}
N 520 20 260 20 {lab=Net-_M2-Pad3_}
N 260 20 260 -120 {lab=Net-_M2-Pad3_}
N 260 -120 220 -120 {lab=Net-_M2-Pad3_}
N 440 -90 440 -150 {lab=Net-_M2-Pad2_}
N 440 -150 180 -150 {lab=Net-_M2-Pad2_}
N 220 -150 220 80 {lab=Tj2}
N 220 80 380 80 {lab=Tj2}
N 320 -180 460 -180 {lab=Net-_M1-Pad3_}
N 460 -180 460 -120 {lab=Net-_M1-Pad3_}
N 420 -150 420 -90 {lab=Net-_M1-Pad2_}
N 420 -90 680 -90 {lab=Net-_M1-Pad2_}
N 460 -150 640 -150 {lab=Tj1}
N 640 -150 640 80 {lab=Tj1}
N 1300 -290 1300 -260 {lab=Net-_R11-Pad1_}
N 1300 -260 1530 -260 {lab=Net-_R11-Pad1_}
N 1180 -340 1180 -230 {lab=Net-_C7-Pad1_}
N 1180 -230 1300 -230 {lab=Net-_C7-Pad1_}
N 1180 -340 1180 -430 {lab=Net-_C7-Pad1_}
N 1180 -430 980 -430 {lab=Net-_C7-Pad1_}
N 1200 -430 1200 -340 {lab=Net-_C6-Pad1_}
N 1200 -340 1420 -340 {lab=Net-_C6-Pad1_}
N 1420 -340 1420 -200 {lab=Net-_C6-Pad1_}
N 1420 -200 1530 -200 {lab=Net-_C6-Pad1_}
C {devices/gnd.sym} 660 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 2210 -320 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 260 80 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 220 230 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 560 -90 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 350 230 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 480 230 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 760 80 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 980 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1200 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 640 20 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 380 20 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1400 -370 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1560 -310 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1740 -370 0 0 {name=l_GND lab=GND}
C {devices/lab_pin.sym} 2150 -340 0 0 {name=l_Net-_R16-Pad2_ sig_type=std_logic lab=Net-_R16-Pad2_}
C {devices/lab_pin.sym} 680 -30 0 0 {name=l_Net-_R16-Pad2_ sig_type=std_logic lab=Net-_R16-Pad2_}
C {devices/lab_pin.sym} 2210 -340 0 0 {name=l_Net-_R4-Pad1_ sig_type=std_logic lab=Net-_R4-Pad1_}
C {devices/lab_pin.sym} 1740 -430 0 0 {name=l_Net-_R4-Pad1_ sig_type=std_logic lab=Net-_R4-Pad1_}
C {devices/lab_pin.sym} 890 -160 0 0 {name=l_Net-_R4-Pad1_ sig_type=std_logic lab=Net-_R4-Pad1_}
C {devices/lab_pin.sym} 1360 -150 0 0 {name=l_Net-_C2-Pad1_ sig_type=std_logic lab=Net-_C2-Pad1_}
C {devices/lab_pin.sym} 2150 -300 0 0 {name=l_Net-_C3-Pad1_ sig_type=std_logic lab=Net-_C3-Pad1_}
C {devices/lab_pin.sym} 2210 -300 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
C {devices/lab_pin.sym} 520 70 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
C {devices/lab_pin.sym} 1360 -90 0 0 {name=l_Net-_R3-Pad2_ sig_type=std_logic lab=Net-_R3-Pad2_}
C {devices/lab_pin.sym} 2150 -280 0 0 {name=l_Net-_R17-Pad2_ sig_type=std_logic lab=Net-_R17-Pad2_}
C {devices/lab_pin.sym} 440 -30 0 0 {name=l_Net-_R17-Pad2_ sig_type=std_logic lab=Net-_R17-Pad2_}
C {devices/vdd.sym} 2210 -280 0 0 {name=l_VCC lab=VCC}
C {devices/vdd.sym} 220 170 0 0 {name=l_VCC lab=VCC}
C {devices/vdd.sym} 460 -180 0 0 {name=l_VCC lab=VCC}
C {devices/vdd.sym} 560 -150 0 0 {name=l_VCC lab=VCC}
C {devices/vdd.sym} 1570 -580 0 0 {name=l_VCC lab=VCC}
C {devices/lab_pin.sym} 1960 -250 0 0 {name=l_in sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 350 170 0 0 {name=l_in sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 480 170 0 0 {name=l_Net-_R11-Pad1_ sig_type=std_logic lab=Net-_R11-Pad1_}
C {devices/lab_pin.sym} 1180 -280 0 0 {name=l_Tcase2 sig_type=std_logic lab=Tcase2}
C {devices/lab_pin.sym} 1420 -280 0 0 {name=l_Tcase1 sig_type=std_logic lab=Tcase1}
