v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 0 0 0 {name=VBB
value=0V}
C {devices/res.sym} 660 -280 0 0 {name=RD
value=10K}
C {devices/nmos4.sym} 220 -150 0 0 {name=M1
w=100UM
l=0.18u
model=MMOD}
C {devices/capa.sym} 440 -400 0 0 {name=C2
value=10PF}
N 220 30 220 -150 {lab=7}
N 220 -150 240 -150 {lab=7}
C {devices/lab_pin.sym} 200 -150 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/gnd.sym} 220 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 240 -180 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} 660 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 240 -120 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_1 sig_type=std_logic lab=1}
