v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=v1}
C {devices/res.sym} 440 -280 0 0 {name=r1
value=r=1k}
C {devices/res.sym} 660 -280 0 0 {name=r2
value=r=1k}
C {devices/vsource.sym} 570 -130 0 0 {name=vin
value=1}
N 440 -160 440 -310 {lab=1}
N 660 -250 660 -160 {lab=4}
N 660 -160 570 -160 {lab=4}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_3 sig_type=std_logic lab=3}
