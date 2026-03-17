v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=vtamb
value=27}
C {devices/vsource.sym} 570 -130 0 0 {name=v1
value=0.7}
C {devices/res.sym} 440 -400 0 0 {name=R1
value=100}
C {devices/res.sym} 660 -280 0 0 {name=Rtj
value=100}
N 440 -160 440 -250 {lab=tamb}
N 440 -250 660 -250 {lab=tamb}
N 570 -160 440 -160 {lab=1}
N 440 -160 440 -430 {lab=1}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_tj sig_type=std_logic lab=tj}
