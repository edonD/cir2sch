v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 440 -400 0 0 {name=R1
value=100k}
C {devices/res.sym} 660 -400 0 0 {name=R2
value=100k}
C {devices/res.sym} 880 -400 0 0 {name=R3
value=1K}
C {devices/res.sym} 980 50 0 0 {name=R4
value=1K}
C {devices/isource.sym} 440 200 0 0 {name=I1
value=10u}
C {devices/res.sym} 1200 -400 0 0 {name=RH
value=1G}
N 880 -370 880 20 {lab=R3_N}
N 880 20 980 20 {lab=R3_N}
C {devices/vdd.sym} 880 -430 0 0 {name=l_VCC lab=VCC}
C {devices/vdd.sym} 440 170 0 0 {name=l_VCC lab=VCC}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 980 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1200 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_Q3_C sig_type=std_logic lab=Q3_C}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_Q4_C sig_type=std_logic lab=Q4_C}
C {devices/lab_pin.sym} 440 230 0 0 {name=l_I1_N sig_type=std_logic lab=I1_N}
C {devices/lab_pin.sym} 1200 -430 0 0 {name=l_E1_P sig_type=std_logic lab=E1_P}
