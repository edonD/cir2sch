v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
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
N 130 -150 310 -150 {lab=Nvf}
N 310 -150 310 30 {lab=Nvf}
N 310 30 240 30 {lab=Nvf}
N 130 -180 310 -180 {lab=Nvd}
N 310 -180 310 0 {lab=Nvd}
N 310 0 240 0 {lab=Nvd}
N 90 -150 350 -150 {lab=Nvg}
N 90 -150 90 30 {lab=Nvg}
N 90 30 200 30 {lab=Nvg}
C {devices/lab_pin.sym} 130 -120 0 0 {name=l_Nvs1 sig_type=std_logic lab=Nvs1}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_Nvs2 sig_type=std_logic lab=Nvs2}
C {devices/lab_pin.sym} 240 60 0 0 {name=l_Nvs3 sig_type=std_logic lab=Nvs3}
