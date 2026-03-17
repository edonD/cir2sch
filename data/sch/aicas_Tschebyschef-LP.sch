v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {* Example S--parameters of a Tschebyschef Low Pass filter} 390 -520 0 0 0.5 0.5 {}
C {devices/capa.sym} 440 -400 0 0 {name=C1
value=33.2p}
C {devices/capa.sym} 660 -400 0 0 {name=C2
value=57.2p}
C {devices/capa.sym} 880 -400 0 0 {name=C3
value=33.2p}
C {devices/vsource.sym} 440 -250 0 0 {name=V1
value=0}
C {devices/vsource.sym} 570 -250 0 0 {name=V2
value=0}
N 440 -430 440 -280 {lab=in}
N 880 -430 880 -280 {lab=out}
N 880 -280 570 -280 {lab=out}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 880 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -220 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_2 sig_type=std_logic lab=2}
