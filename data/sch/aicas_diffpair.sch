v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 440 -280 0 0 {name=rs1
value=1k}
C {devices/res.sym} 660 -280 0 0 {name=rs2
value=1k}
C {devices/res.sym} 880 -280 0 0 {name=rc1
value=10k}
C {devices/res.sym} 1010 -280 0 0 {name=rc2
value=10k}
C {devices/res.sym} 1160 -280 0 0 {name=rbias
value=20k}
C {devices/vsource.sym} 440 -130 0 0 {name=vcm
value=0}
C {devices/vsource.sym} 570 -130 0 0 {name=vdm
value=0}
C {devices/vsource.sym} 700 -130 0 0 {name=vcc
value=12}
C {devices/vsource.sym} 830 -130 0 0 {name=vee
value=-12}
N 440 -310 440 -100 {lab=11}
N 440 -100 570 -100 {lab=11}
N 660 -250 660 -160 {lab=1}
N 660 -160 570 -160 {lab=1}
N 570 -160 440 -160 {lab=1}
N 880 -250 1010 -250 {lab=8}
N 1010 -250 1160 -250 {lab=8}
N 880 -250 880 -160 {lab=8}
N 880 -160 700 -160 {lab=8}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 660 -310 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 880 -310 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1010 -310 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 1160 -310 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 830 -160 0 0 {name=l_9 sig_type=std_logic lab=9}
