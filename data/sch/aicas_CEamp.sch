v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=VBIC
value=Test}
C {devices/vsource.sym} 570 -130 0 0 {name=Vcc
value=5}
C {devices/res.sym} 660 -280 0 0 {name=Rc
value=1k}
C {devices/res.sym} 790 -280 0 0 {name=Rb
value=200k}
C {devices/isource.sym} 700 -130 0 0 {name=I1
value=AC}
C {devices/vsource.sym} 830 -130 0 0 {name=Vmeas
value=0}
C {devices/capa.sym} 440 -400 0 0 {name=Cshunt
value=.1u}
N 570 -160 570 -250 {lab=3}
N 570 -250 660 -250 {lab=3}
N 660 -250 660 -310 {lab=3}
N 660 -310 790 -310 {lab=3}
N 660 -310 660 -100 {lab=2}
N 660 -100 830 -100 {lab=2}
N 790 -250 790 -100 {lab=1}
N 790 -100 700 -100 {lab=1}
N 830 -160 830 -430 {lab=4}
N 830 -430 440 -430 {lab=4}
C {devices/lab_pin.sym} 440 -160 0 0 {name=l_Pole sig_type=std_logic lab=Pole}
C {devices/lab_pin.sym} 440 -100 0 0 {name=l_Zero sig_type=std_logic lab=Zero}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -160 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
