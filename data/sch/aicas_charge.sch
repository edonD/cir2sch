v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 0 0 0 {name=VIN
value=0V}
C {devices/vsource.sym} 350 0 0 0 {name=VDD
value=0V}
C {devices/vsource.sym} 480 0 0 0 {name=VBB
value=0V}
C {devices/res.sym} 660 -280 0 0 {name=RD
value=10K}
C {devices/nmos4.sym} 220 -150 0 0 {name=M1
w=100UM
l=0.18u
model=MMOD}
C {devices/vsource.sym} 610 0 0 0 {name=VS
value=0}
C {devices/vsource.sym} 220 130 0 0 {name=VC
value=0}
C {devices/capa.sym} 440 -400 0 0 {name=C2
value=10PF}
N 220 -30 220 -150 {lab=4}
N 220 -150 200 -150 {lab=4}
N 350 -30 350 -180 {lab=5}
N 350 -180 240 -180 {lab=5}
N 350 30 350 -310 {lab=6}
N 350 -310 660 -310 {lab=6}
N 480 30 240 30 {lab=7}
N 240 30 240 -150 {lab=7}
N 240 -120 240 -30 {lab=3}
N 240 -30 610 -30 {lab=3}
C {devices/gnd.sym} 220 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 660 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 610 30 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 220 100 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 220 160 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_1 sig_type=std_logic lab=1}
