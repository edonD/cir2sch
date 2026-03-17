v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Capa variable sur la base de la thèse de Marc KODRNJA} 100 -425 0 0 0.5 0.5 {}
T {.subckt capa 4 6 5 7 8 0} 100 -395 0 0 0.35 0.35 {}
C {devices/vsource.sym} 150 -30 0 0 {name=Vref1
value=3}
C {devices/vsource.sym} 280 -30 0 0 {name=Vref2
value=3}
C {devices/vsource.sym} 410 -30 0 0 {name=Vdp
value=7}
C {devices/isource.sym} 540 -30 0 0 {name=I0
value=DC}
C {devices/isource.sym} 670 -30 0 0 {name=Ia1
value=DC}
C {devices/isource.sym} 800 -30 0 0 {name=Ia2
value=DC}
C {devices/isource.sym} 930 -30 0 0 {name=Ib1
value=DC}
C {devices/isource.sym} 1060 -30 0 0 {name=Ib2
value=DC}
C {devices/res.sym} 150 -280 0 0 {name=R1
value=100}
C {devices/res.sym} 150 -180 0 0 {name=R2
value=100}
C {devices/capa.sym} 370 -280 0 0 {name=C1
value=10n}
C {devices/capa.sym} 590 -280 0 0 {name=C2
value=10n}
N 670 -60 670 -310 {lab=15}
N 670 -310 370 -310 {lab=15}
N 800 -60 800 -310 {lab=25}
N 800 -310 590 -310 {lab=25}
N 1060 -60 590 -60 {lab=24}
N 590 -60 590 -250 {lab=24}
N 150 -310 150 -210 {lab=4}
C {devices/lab_pin.sym} 150 -60 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/gnd.sym} 150 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 280 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 410 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 540 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 670 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 800 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 930 0 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1060 0 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 280 -60 0 0 {name=l_16 sig_type=std_logic lab=16}
C {devices/lab_pin.sym} 410 -60 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 540 -60 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 930 -60 0 0 {name=l_14 sig_type=std_logic lab=14}
C {devices/lab_pin.sym} 370 -250 0 0 {name=l_14 sig_type=std_logic lab=14}
C {devices/lab_pin.sym} 150 -250 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 150 -150 0 0 {name=l_6 sig_type=std_logic lab=6}
C {devices/iopin.sym} 30 -230 0 0 {name=p_4 lab=4}
C {devices/iopin.sym} 30 -180 0 0 {name=p_6 lab=6}
C {devices/iopin.sym} 30 -280 0 0 {name=p_5 lab=5}
C {devices/iopin.sym} 30 -30 0 0 {name=p_7 lab=7}
C {devices/iopin.sym} 30 -320 0 0 {name=p_8 lab=8}
