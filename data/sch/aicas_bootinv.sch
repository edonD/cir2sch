v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 660 180 0 0 {name=Vdd
value=5.0v}
C {devices/vsource.sym} 790 180 0 0 {name=Vss
value=0.0v}
C {devices/vsource.sym} 920 180 0 0 {name=Vin
value=0.0v}
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
N 790 150 790 30 {lab=2}
N 790 30 900 30 {lab=2}
N 900 30 900 -30 {lab=2}
N 900 -30 640 -30 {lab=2}
N 640 -30 640 -60 {lab=2}
N 920 150 600 150 {lab=5}
N 600 150 600 -60 {lab=5}
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
N 660 -180 680 -180 {lab=1}
N 660 -180 660 30 {lab=1}
N 660 30 660 150 {lab=1}
N 660 30 860 30 {lab=1}
N 860 30 860 0 {lab=1}
N 860 0 900 0 {lab=1}
C {devices/gnd.sym} 660 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 790 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 920 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 760 -30 0 0 {name=l_0 lab=GND}
