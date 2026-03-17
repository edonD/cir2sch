v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 440 -280 0 0 {name=RC1
value=1K}
C {devices/res.sym} 570 -280 0 0 {name=RC2
value=1K}
C {devices/res.sym} 720 -280 0 0 {name=RB1
value=30K}
C {devices/res.sym} 940 -280 0 0 {name=RB2
value=30K}
C {devices/capa.sym} 960 -190 0 0 {name=C1
value=150PF}
C {devices/capa.sym} 820 -190 0 0 {name=C2
value=150PF}
N 440 -310 570 -310 {lab=6}
N 570 -310 720 -310 {lab=6}
N 440 -250 440 -220 {lab=1}
N 440 -220 960 -220 {lab=1}
N 570 -250 570 -220 {lab=2}
N 570 -220 820 -220 {lab=2}
N 720 -250 820 -250 {lab=3}
N 820 -250 820 -160 {lab=3}
N 940 -250 960 -250 {lab=4}
N 960 -250 960 -160 {lab=4}
C {devices/lab_pin.sym} 940 -310 0 0 {name=l_5 sig_type=std_logic lab=5}
