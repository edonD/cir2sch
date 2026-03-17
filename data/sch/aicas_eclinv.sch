v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {** INPUT STAGE} 390 -395 0 0 0.35 0.35 {}
C {devices/vsource.sym} 440 -130 0 0 {name=VCC
value=0.0V}
C {devices/vsource.sym} 570 -130 0 0 {name=VEE
value=-5.2V}
C {devices/vsource.sym} 700 -130 0 0 {name=VIN
value=-1.25V}
C {devices/vsource.sym} 830 -130 0 0 {name=VRF
value=-1.25V}
C {devices/res.sym} 440 -280 0 0 {name=R1
value=662}
C {devices/res.sym} 570 -280 0 0 {name=R2
value=662}
C {devices/res.sym} 790 -280 0 0 {name=R3
value=2.65K}
C {devices/res.sym} 920 -280 0 0 {name=R4
value=4.06K}
C {devices/res.sym} 1080 -280 0 0 {name=R5
value=4.06K}
N 440 -160 440 -310 {lab=1}
N 440 -310 570 -310 {lab=1}
N 570 -160 570 -250 {lab=2}
N 570 -250 790 -250 {lab=2}
N 790 -250 920 -250 {lab=2}
N 920 -250 1080 -250 {lab=2}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 700 -160 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 830 -160 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 570 -250 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} 790 -310 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 920 -310 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 1080 -310 0 0 {name=l_8 sig_type=std_logic lab=8}
