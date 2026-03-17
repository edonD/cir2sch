v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=VCC
value=5v}
C {devices/vsource.sym} 570 -130 0 0 {name=VEE
value=0v}
C {devices/res.sym} 440 -280 0 0 {name=RCP
value=10k}
C {devices/res.sym} 570 -280 0 0 {name=RCN
value=10k}
C {devices/vsource.sym} 700 -130 0 0 {name=VBBP
value=3v}
C {devices/vsource.sym} 830 -130 0 0 {name=VBBN
value=3v}
C {devices/isource.sym} 440 0 0 0 {name=IEE
value=0.1mA}
N 440 -160 440 -310 {lab=1}
N 440 -310 570 -310 {lab=1}
N 570 -160 570 30 {lab=2}
N 570 30 440 30 {lab=2}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 440 -250 0 0 {name=l_11 sig_type=std_logic lab=11}
C {devices/lab_pin.sym} 570 -250 0 0 {name=l_21 sig_type=std_logic lab=21}
C {devices/lab_pin.sym} 700 -160 0 0 {name=l_12 sig_type=std_logic lab=12}
C {devices/lab_pin.sym} 830 -160 0 0 {name=l_22 sig_type=std_logic lab=22}
C {devices/lab_pin.sym} 440 -30 0 0 {name=l_13 sig_type=std_logic lab=13}
