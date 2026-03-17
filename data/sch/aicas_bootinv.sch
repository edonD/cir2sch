v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 270 0 0 {name=Vdd
value=5.0v}
C {devices/vsource.sym} 350 270 0 0 {name=Vss
value=0.0v}
C {devices/vsource.sym} 480 270 0 0 {name=Vin
value=0.0v}
C {devices/nmos4.sym} 220 -150 0 0 {name=M1
w=5u
l=0.18u
model=M_NMOS}
C {devices/nmos4.sym} 220 20 0 0 {name=M2
w=5u
l=0.18u
model=M_NMOS}
C {devices/nmos4.sym} 200 120 0 0 {name=M3
w=5u
l=0.18u
model=M_NMOS}
C {devices/capa.sym} 340 110 0 0 {name=CL
value=0.1pf}
C {devices/capa.sym} 360 0 0 0 {name=CB
value=0.1pf}
N 220 240 220 -10 {lab=1}
N 220 -10 240 -10 {lab=1}
N 240 -10 240 -180 {lab=1}
N 240 -180 240 -150 {lab=1}
N 240 -150 200 -150 {lab=1}
N 350 240 350 150 {lab=2}
N 350 150 220 150 {lab=2}
N 220 150 220 120 {lab=2}
N 220 120 220 -150 {lab=2}
N 220 -150 240 -150 {lab=2}
N 480 240 180 240 {lab=5}
N 180 240 180 120 {lab=5}
N 240 -120 240 20 {lab=3}
N 240 20 200 20 {lab=3}
N 240 -120 240 -30 {lab=3}
N 240 -30 360 -30 {lab=3}
N 240 50 240 20 {lab=4}
N 240 50 240 90 {lab=4}
N 240 90 220 90 {lab=4}
N 240 50 240 80 {lab=4}
N 240 80 340 80 {lab=4}
N 340 80 340 30 {lab=4}
N 340 30 360 30 {lab=4}
C {devices/gnd.sym} 220 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 300 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 340 140 0 0 {name=l_0 lab=GND}
