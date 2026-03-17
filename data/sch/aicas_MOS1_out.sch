v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 110 180 0 0 {name=vb
value=0}
C {devices/vsource.sym} 240 180 0 0 {name=vd
value=0}
C {devices/vsource.sym} 370 180 0 0 {name=vg
value=0}
C {devices/vsource.sym} 500 180 0 0 {name=vs1
value=0}
C {devices/vsource.sym} 110 310 0 0 {name=vs2
value=0}
C {devices/vsource.sym} 240 310 0 0 {name=vs3
value=0}
C {devices/nmos4.sym} 110 -150 0 0 {name=M1
w=5u
l=0.18u
model=NMOS}
C {devices/nmos4.sym} 330 -150 0 1 {name=M2
w=10u
l=5u
model=NMOS}
C {devices/nmos4.sym} 220 30 0 0 {name=M3
w=5u
l=0.18u
model=NMOS3}
N 240 280 240 60 {lab=Nvs3}
N 310 -150 240 -150 {lab=Nvf}
N 240 -150 130 -150 {lab=Nvf}
N 240 -150 240 30 {lab=Nvf}
N 240 30 110 30 {lab=Nvf}
N 110 30 110 150 {lab=Nvf}
N 130 -180 240 -180 {lab=Nvd}
N 240 -180 310 -180 {lab=Nvd}
N 240 -180 240 0 {lab=Nvd}
N 240 0 240 150 {lab=Nvd}
N 90 -150 200 -150 {lab=Nvg}
N 200 -150 350 -150 {lab=Nvg}
N 200 -150 200 30 {lab=Nvg}
N 200 30 370 30 {lab=Nvg}
N 370 30 370 150 {lab=Nvg}
N 130 -120 130 150 {lab=Nvs1}
N 110 280 310 280 {lab=Nvs2}
C {devices/gnd.sym} 110 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 370 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 110 340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 340 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 500 150 0 0 {name=l_Nvs1 sig_type=std_logic lab=Nvs1}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_Nvs2 sig_type=std_logic lab=Nvs2}
