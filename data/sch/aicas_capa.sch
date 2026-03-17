v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Capa variable sur la base de la thèse de Marc KODRNJA} -50 -425 0 0 0.5 0.5 {}
T {.subckt capa 4 6 5 7 8 0} -50 -395 0 0 0.35 0.35 {}
C {devices/isource.sym} 0 -130 0 0 {name=I0
value=DC}
C {devices/isource.sym} 130 -130 0 0 {name=Ia1
value=DC}
C {devices/isource.sym} 260 -130 0 0 {name=Ia2
value=DC}
C {devices/isource.sym} 390 -130 0 0 {name=Ib1
value=DC}
C {devices/isource.sym} 0 0 0 0 {name=Ib2
value=DC}
C {devices/res.sym} 150 -280 0 0 {name=R1
value=100}
C {devices/res.sym} 0 -280 0 0 {name=R2
value=100}
C {devices/capa.sym} 370 -280 0 0 {name=C1
value=10n}
C {devices/capa.sym} 590 -280 0 0 {name=C2
value=10n}
N 130 -160 130 -310 {lab=15}
N 130 -310 370 -310 {lab=15}
N 260 -160 260 -310 {lab=25}
N 260 -310 590 -310 {lab=25}
N 390 -160 390 -250 {lab=14}
N 390 -250 370 -250 {lab=14}
N 150 -310 0 -310 {lab=4}
C {devices/gnd.sym} 0 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 130 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 390 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 0 30 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 0 -160 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 0 -30 0 0 {name=l_24 sig_type=std_logic lab=24}
C {devices/lab_pin.sym} 590 -250 0 0 {name=l_24 sig_type=std_logic lab=24}
C {devices/lab_pin.sym} 150 -250 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 0 -250 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/iopin.sym} -120 -280 0 0 {name=p_4 lab=4}
C {devices/iopin.sym} -120 -240 0 0 {name=p_6 lab=6}
C {devices/iopin.sym} -120 -200 0 0 {name=p_5 lab=5}
C {devices/iopin.sym} -120 -320 0 0 {name=p_7 lab=7}
C {devices/iopin.sym} -120 -160 0 0 {name=p_8 lab=8}
