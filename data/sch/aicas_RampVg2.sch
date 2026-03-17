v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {BSIMSOI (PD) example} 170 -270 0 0 0.5 0.5 {}
C {devices/vsource.sym} 220 0 0 0 {name=Vd
value=1.5}
C {devices/vsource.sym} 350 0 0 0 {name=Vg
value=0.0}
C {devices/vsource.sym} 480 0 0 0 {name=Ve
value=0.0}
C {devices/vsource.sym} 610 0 0 0 {name=Vs
value=0.0}
C {devices/vsource.sym} 220 130 0 0 {name=Vb
value=0.0}
C {devices/nmos4.sym} 220 -150 0 0 {name=m1
w=5u
l=0.18u
model=n1}
N 220 -30 220 -180 {lab=d}
N 220 -180 240 -180 {lab=d}
N 350 -30 200 -30 {lab=g}
N 200 -30 200 -150 {lab=g}
N 480 -30 480 -150 {lab=e}
N 480 -150 240 -150 {lab=e}
N 610 -30 240 -30 {lab=s}
N 240 -30 240 -120 {lab=s}
C {devices/gnd.sym} 220 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 610 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 220 160 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 220 100 0 0 {name=l_b sig_type=std_logic lab=b}
