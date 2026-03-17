v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/nmos4.sym} 880 30 0 0 {name=M1
w=5u
l=0.18u
model=M_NMOS}
C {devices/nmos4.sym} 660 -150 0 0 {name=M2
w=5u
l=0.18u
model=M_NMOS}
C {devices/nmos4.sym} 620 -60 0 0 {name=M3
w=5u
l=0.18u
model=M_NMOS}
C {devices/capa.sym} 760 -60 0 0 {name=CL
value=0.1pf}
C {devices/capa.sym} 890 -80 0 0 {name=CB
value=0.1pf}
N 900 30 900 -30 {lab=2}
N 900 -30 640 -30 {lab=2}
N 640 -30 640 -60 {lab=2}
N 900 60 900 -110 {lab=3}
N 900 -110 890 -110 {lab=3}
N 890 -110 890 -150 {lab=3}
N 890 -150 640 -150 {lab=3}
N 680 -120 680 -150 {lab=4}
N 680 -120 680 -90 {lab=4}
N 680 -90 640 -90 {lab=4}
N 680 -120 680 -90 {lab=4}
N 680 -90 760 -90 {lab=4}
N 760 -90 760 -50 {lab=4}
N 760 -50 890 -50 {lab=4}
C {devices/gnd.sym} 760 -30 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 600 -60 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/lab_pin.sym} 860 -180 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 680 -180 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 900 0 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 860 30 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 900 30 0 0 {name=l_1 sig_type=std_logic lab=1}
