v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {BSC0500NSI.sym} 1180 -300 0 0 {name=Xopt}
C {devices/vsource.sym} 440 -130 0 0 {name=vd
value=0}
C {devices/res.sym} 440 -280 0 0 {name=rd
value=6m}
C {devices/vsource.sym} 570 -130 0 0 {name=vg
value=0}
C {devices/vsource.sym} 700 -130 0 0 {name=vs
value=0}
C {devices/vsource.sym} 830 -130 0 0 {name=vtc
value=25}
C {devices/vsource.sym} 960 -130 0 0 {name=vjt
value=25}
T {Xopt} 1160 -280 0 0 0.25 0.25 {}
N 1150 -300 1150 -160 {lab=Nvs}
N 1150 -160 700 -160 {lab=Nvs}
N 440 -160 440 -310 {lab=1}
C {devices/lab_pin.sym} 1150 -320 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 1210 -320 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 570 -160 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 1210 -300 0 0 {name=l_Tj sig_type=std_logic lab=Tj}
C {devices/lab_pin.sym} 1150 -280 0 0 {name=l_Tcase sig_type=std_logic lab=Tcase}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 960 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 830 -160 0 0 {name=l_tcase sig_type=std_logic lab=tcase}
C {devices/lab_pin.sym} 960 -160 0 0 {name=l_tj sig_type=std_logic lab=tj}
