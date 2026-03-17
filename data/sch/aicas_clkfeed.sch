v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 110 200 0 0 {name=VDD
value=5.0V}
C {devices/vsource.sym} 240 200 0 0 {name=VSS
value=0.0V}
C {devices/isource.sym} 370 200 0 0 {name=IIN
value=0.0}
C {devices/vsource.sym} 500 200 0 0 {name=VIN
value=0.0}
C {devices/vsource.sym} 630 200 0 0 {name=VL
value=2.5V}
C {devices/vsource.sym} 760 200 0 0 {name=VCK
value=5.0V}
C {devices/nmos4.sym} 110 -150 0 0 {name=M1
w=5U
l=5U
model=M_NMOS_5}
C {devices/nmos4.sym} 370 -150 0 0 {name=M2
w=10U
l=5U
model=M_NMOS_5}
C {devices/nmos4.sym} 500 -150 0 0 {name=M3
w=5U
l=5U
model=M_NMOS_5}
C {devices/res.sym} 210 50 0 0 {name=RLK1
value=100G}
C {devices/res.sym} 470 50 0 0 {name=RLK2
value=100G}
C {devices/vsource.sym} 890 200 0 0 {name=VD
value=0.0V}
C {devices/vsource.sym} 1020 200 0 0 {name=VG
value=0.0V}
C {devices/vsource.sym} 1150 200 0 0 {name=VS
value=0.0V}
C {devices/vsource.sym} 1280 200 0 0 {name=VB
value=0.0V}
C {devices/pmos4.sym} 220 -550 0 0 {name=M4
w=100U
l=1U
model=M_PMOS_IDEAL}
C {devices/pmos4.sym} 110 -400 0 0 {name=M5
w=100U
l=1U
model=M_PMOS_IDEAL}
C {devices/pmos4.sym} 330 -400 0 1 {name=M6
w=200U
l=1U
model=M_PMOS_IDEAL}
C {devices/isource.sym} 1410 200 0 0 {name=IREF
value=50UA}
N 240 -520 240 -550 {lab=1}
N 240 -520 240 -400 {lab=1}
N 240 -400 310 -400 {lab=1}
N 310 -400 310 -370 {lab=1}
N 310 -370 130 -370 {lab=1}
N 130 -370 130 -400 {lab=1}
N 130 -120 130 -150 {lab=2}
N 130 -120 390 -120 {lab=2}
N 390 -120 390 -150 {lab=2}
N 370 170 500 170 {lab=13}
N 130 -180 130 -150 {lab=3}
N 130 -150 90 -150 {lab=3}
N 130 -180 130 -430 {lab=3}
N 130 -180 130 20 {lab=3}
N 130 20 210 20 {lab=3}
N 760 170 1020 170 {lab=6}
N 350 -150 470 -150 {lab=5}
N 470 -150 470 20 {lab=5}
N 240 -580 240 -550 {lab=7}
N 240 -550 200 -550 {lab=7}
N 200 -550 90 -550 {lab=7}
N 90 -550 90 -400 {lab=7}
N 90 -400 350 -400 {lab=7}
C {devices/lab_pin.sym} 110 170 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 110 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 370 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 630 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 760 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 210 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 470 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1410 230 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 240 170 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 1280 170 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 500 230 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 890 170 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 630 170 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 390 -180 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 310 -430 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1150 170 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 520 -180 0 0 {name=l_23 sig_type=std_logic lab=23}
C {devices/lab_pin.sym} 890 230 0 0 {name=l_23 sig_type=std_logic lab=23}
C {devices/lab_pin.sym} 480 -150 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/lab_pin.sym} 1020 230 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/lab_pin.sym} 520 -120 0 0 {name=l_25 sig_type=std_logic lab=25}
C {devices/lab_pin.sym} 1150 230 0 0 {name=l_25 sig_type=std_logic lab=25}
C {devices/lab_pin.sym} 520 -150 0 0 {name=l_22 sig_type=std_logic lab=22}
C {devices/lab_pin.sym} 1280 230 0 0 {name=l_22 sig_type=std_logic lab=22}
C {devices/lab_pin.sym} 1410 170 0 0 {name=l_7 sig_type=std_logic lab=7}
