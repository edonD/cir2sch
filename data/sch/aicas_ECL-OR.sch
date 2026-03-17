v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -100 0 0 {name=V2
value=-1.75}
C {devices/vsource.sym} 570 -100 0 0 {name=V1
value=-5.2}
C {devices/res.sym} 1220 -280 0 0 {name=Ra1
value=510}
C {hicumL0V1p1_c_sbt.sym} 1800 -300 0 0 {name=XQ5}
C {hicumL0V1p1_c_sbt.sym} 2020 -300 0 0 {name=XQ4}
C {devices/res.sym} 1360 -250 0 0 {name=R4
value=1.92k}
C {hicumL0V1p1_c_sbt.sym} 1800 -120 0 0 {name=XQ2}
C {hicumL0V1p1_c_sbt.sym} 2020 -120 0 0 {name=XQ1}
C {devices/res.sym} 1480 -260 0 0 {name=R5
value=780}
C {hicumL0V1p1_c_sbt.sym} 1800 60 0 0 {name=XQ3}
C {devices/res.sym} 440 -400 0 0 {name=R2
value=220}
C {devices/res.sym} 660 -400 0 0 {name=R1
value=220}
C {devices/res.sym} 880 -400 0 0 {name=R3
value=575}
C {devices/res.sym} 1600 -260 0 0 {name=Ra2
value=510}
C {devices/vsource.sym} 700 -100 0 0 {name=V3
value=-1.75}
C {devices/res.sym} 1100 -400 0 0 {name=Rt1
value=1G}
T {XQ5} 1780 -280 0 0 0.25 0.25 {}
T {XQ4} 2000 -280 0 0 0.25 0.25 {}
T {XQ2} 1780 -100 0 0 0.25 0.25 {}
T {XQ1} 2000 -100 0 0 0.25 0.25 {}
T {XQ3} 1780 80 0 0 0.25 0.25 {}
N 1220 -250 1220 -220 {lab=VEE}
N 1220 -220 1360 -220 {lab=VEE}
N 1360 -220 1360 -230 {lab=VEE}
N 1360 -230 1480 -230 {lab=VEE}
N 1480 -230 1600 -230 {lab=VEE}
N 1600 -230 1600 -300 {lab=VEE}
N 1600 -300 1830 -300 {lab=VEE}
N 1830 -300 1830 -120 {lab=VEE}
N 1830 -120 1830 60 {lab=VEE}
N 1830 -300 2050 -300 {lab=VEE}
N 2050 -300 2050 -120 {lab=VEE}
N 1830 -320 1830 -140 {lab=Net-_Q1-Pad1_}
N 1830 -140 1770 -140 {lab=Net-_Q1-Pad1_}
N 1770 -140 1990 -140 {lab=Net-_Q1-Pad1_}
N 1770 -300 1770 -290 {lab=A2}
N 1770 -290 1600 -290 {lab=A2}
N 1770 -280 1770 -100 {lab=DT}
N 1770 -100 1770 80 {lab=DT}
N 1770 -280 1990 -280 {lab=DT}
N 1990 -280 1990 -100 {lab=DT}
N 1770 -120 1770 60 {lab=Net-_Q1-Pad3_}
N 1770 -120 1990 -120 {lab=Net-_Q1-Pad3_}
C {devices/lab_pin.sym} 440 -130 0 0 {name=l_IN1 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 2050 -140 0 0 {name=l_IN1 sig_type=std_logic lab=IN1}
C {devices/gnd.sym} 440 -70 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 570 -70 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1770 -320 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1990 -320 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 440 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 660 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 880 -430 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 700 -70 0 0 {name=l_GND lab=GND}
C {devices/gnd.sym} 1100 -370 0 0 {name=l_GND lab=GND}
C {devices/lab_pin.sym} 570 -130 0 0 {name=l_VEE sig_type=std_logic lab=VEE}
C {devices/lab_pin.sym} 1220 -310 0 0 {name=l_A1 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} 1990 -300 0 0 {name=l_A1 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} 660 -370 0 0 {name=l_Net-_Q1-Pad1_ sig_type=std_logic lab=Net-_Q1-Pad1_}
C {devices/lab_pin.sym} 1100 -430 0 0 {name=l_DT sig_type=std_logic lab=DT}
C {devices/lab_pin.sym} 2050 -320 0 0 {name=l_Net-_Q3-Pad1_ sig_type=std_logic lab=Net-_Q3-Pad1_}
C {devices/lab_pin.sym} 1770 40 0 0 {name=l_Net-_Q3-Pad1_ sig_type=std_logic lab=Net-_Q3-Pad1_}
C {devices/lab_pin.sym} 440 -370 0 0 {name=l_Net-_Q3-Pad1_ sig_type=std_logic lab=Net-_Q3-Pad1_}
C {devices/lab_pin.sym} 1360 -280 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 1830 40 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 880 -370 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 1830 -140 0 0 {name=l_IN2 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 1480 -290 0 0 {name=l_Net-_Q1-Pad3_ sig_type=std_logic lab=Net-_Q1-Pad3_}
C {devices/lab_pin.sym} 700 -130 0 0 {name=l_In2 sig_type=std_logic lab=In2}
