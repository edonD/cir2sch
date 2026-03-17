v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 680 -280 0 0 {name=R1
value=1k}
C {devices/res.sym} 820 -250 0 0 {name=R2
value=1k}
C {devices/res.sym} 420 -400 0 0 {name=R3
value=1k}
C {devices/capa.sym} 940 -210 0 0 {name=C2
value=1u}
C {devices/capa.sym} 560 -340 0 0 {name=C3
value=1u}
N 680 -250 680 -280 {lab=2}
N 680 -280 820 -280 {lab=2}
N 820 -280 820 -240 {lab=2}
N 820 -240 940 -240 {lab=2}
N 820 -220 820 -180 {lab=3}
N 820 -180 940 -180 {lab=3}
N 420 -430 420 -370 {lab=3}
N 420 -370 560 -370 {lab=3}
C {devices/lab_pin.sym} 680 -310 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 420 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 -310 0 0 {name=l_0 lab=GND}
