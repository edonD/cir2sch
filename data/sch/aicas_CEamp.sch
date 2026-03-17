v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 660 -280 0 0 {name=Rc
value=1k}
C {devices/res.sym} 790 -280 0 0 {name=Rb
value=200k}
C {devices/isource.sym} 440 -130 0 0 {name=I1
value=AC}
C {devices/capa.sym} 440 -400 0 0 {name=Cshunt
value=.1u}
N 660 -250 660 -310 {lab=3}
N 660 -310 790 -310 {lab=3}
N 790 -250 790 -100 {lab=1}
N 790 -100 440 -100 {lab=1}
C {devices/gnd.sym} 440 -160 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_4 sig_type=std_logic lab=4}
