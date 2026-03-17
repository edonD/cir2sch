v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=vcc
value=50}
C {devices/vsource.sym} 570 -130 0 0 {name=vin
value=1}
C {devices/capa.sym} 440 -280 0 0 {name=ccouple
value=1}
C {devices/isource.sym} 700 -130 0 0 {name=ibias
value=100uA}
C {devices/res.sym} 660 -280 0 0 {name=rload
value=1k}
N 440 -160 440 -310 {lab=4}
N 440 -310 660 -310 {lab=4}
N 570 -160 570 -310 {lab=1}
N 570 -310 440 -310 {lab=1}
N 440 -250 440 -100 {lab=2}
N 440 -100 700 -100 {lab=2}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -160 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 660 -250 0 0 {name=l_3 sig_type=std_logic lab=3}
