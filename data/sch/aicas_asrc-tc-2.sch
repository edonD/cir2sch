v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {test ASRC temperature coeff} 390 -400 0 0 0.5 0.5 {}
C {devices/res.sym} 440 -280 0 0 {name=r2
value=1k}
C {devices/res.sym} 570 -280 0 0 {name=r3
value=r}
N 440 -310 570 -310 {lab=1}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 570 -250 0 0 {name=l_3 sig_type=std_logic lab=3}
