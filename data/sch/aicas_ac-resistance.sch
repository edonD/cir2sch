v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 760 -280 0 0 {name=check
value=use}
C {devices/vsource.sym} 440 200 0 0 {name=Vin
value=5.0}
C {devices/res.sym} 620 -180 0 0 {name=R1
value=1k}
C {devices/capa.sym} 440 -400 0 0 {name=C2
value=1n}
C {devices/res.sym} 540 50 0 0 {name=R2
value=4k}
N 440 170 440 -210 {lab=1}
N 440 -210 620 -210 {lab=1}
N 620 -150 620 20 {lab=2}
N 620 20 540 20 {lab=2}
N 620 -150 620 -430 {lab=2}
N 620 -430 440 -430 {lab=2}
C {devices/lab_pin.sym} 760 -310 0 0 {name=l_for sig_type=std_logic lab=for}
C {devices/lab_pin.sym} 760 -250 0 0 {name=l_proper sig_type=std_logic lab=proper}
C {devices/gnd.sym} 440 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 540 80 0 0 {name=l_0 lab=GND}
