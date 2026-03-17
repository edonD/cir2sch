v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {test ASRC temperature coeff} 390 -400 0 0 0.5 0.5 {}
C {devices/vsource.sym} 440 -130 0 0 {name=v0}
C {devices/vsource.sym} 570 -130 0 0 {name=v1}
C {devices/res.sym} 440 -280 0 0 {name=r2
value=1k}
C {devices/vsource.sym} 700 -130 0 0 {name=v2}
C {devices/res.sym} 570 -280 0 0 {name=r3
value=r}
C {devices/vsource.sym} 830 -130 0 0 {name=v3}
N 570 -160 570 -310 {lab=1}
N 570 -310 440 -310 {lab=1}
N 440 -250 440 -160 {lab=2}
N 440 -160 700 -160 {lab=2}
N 570 -250 570 -160 {lab=3}
N 570 -160 830 -160 {lab=3}
C {devices/lab_pin.sym} 440 -160 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l_0 lab=GND}
