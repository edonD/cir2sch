v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 660 -280 0 0 {name=COLPITT'S}
C {devices/res.sym} 440 -400 0 0 {name=R1
value=1}
C {devices/vsource.sym} 440 -130 0 0 {name=VCC
value=5}
C {devices/res.sym} 880 -280 0 0 {name=RL
value=750}
C {devices/capa.sym} 1010 -280 0 0 {name=C1
value=500P}
C {devices/capa.sym} 1160 -280 0 0 {name=C2
value=4500P}
C {devices/res.sym} 1300 -280 0 0 {name=RE
value=4.65K}
C {devices/vsource.sym} 570 -130 0 0 {name=VEE
value=-15}
N 880 -310 1160 -310 {lab=4}
N 880 -250 880 -310 {lab=2}
N 880 -310 1010 -310 {lab=2}
N 1010 -250 1160 -250 {lab=3}
N 1160 -250 1160 -310 {lab=3}
N 1160 -310 1300 -310 {lab=3}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_OSCILLATOR sig_type=std_logic lab=OSCILLATOR}
C {devices/lab_pin.sym} 660 -250 0 0 {name=l_CIRCUIT sig_type=std_logic lab=CIRCUIT}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 440 -160 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1300 -250 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/lab_pin.sym} 570 -160 0 0 {name=l_6 sig_type=std_logic lab=6}
