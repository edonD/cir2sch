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
C {devices/gnd.sym} 110 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 370 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 110 340 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 340 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 310 -150 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 240 30 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 240 -150 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 110 30 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 130 -150 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 110 150 0 0 {name=l_Nvf sig_type=std_logic lab=Nvf}
C {devices/lab_pin.sym} 130 -180 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 310 -180 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 240 -180 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 240 0 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 240 150 0 0 {name=l_Nvd sig_type=std_logic lab=Nvd}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 370 30 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 200 30 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 200 -150 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 370 150 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_Nvg sig_type=std_logic lab=Nvg}
C {devices/lab_pin.sym} 130 -120 0 0 {name=l_Nvs1 sig_type=std_logic lab=Nvs1}
C {devices/lab_pin.sym} 130 150 0 0 {name=l_Nvs1 sig_type=std_logic lab=Nvs1}
C {devices/lab_pin.sym} 500 150 0 0 {name=l_Nvs1 sig_type=std_logic lab=Nvs1}
C {devices/lab_pin.sym} 110 280 0 0 {name=l_Nvs2 sig_type=std_logic lab=Nvs2}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_Nvs2 sig_type=std_logic lab=Nvs2}
C {devices/lab_pin.sym} 310 280 0 0 {name=l_Nvs2 sig_type=std_logic lab=Nvs2}
