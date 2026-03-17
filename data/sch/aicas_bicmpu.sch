v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 -250 0 0 {name=VDD
value=5.0V}
C {devices/vsource.sym} 350 -250 0 0 {name=VSS
value=0.0V}
C {devices/vsource.sym} 480 -250 0 0 {name=VIN
value=0.75V}
C {devices/vsource.sym} 610 -250 0 0 {name=VC
value=0.0V}
C {devices/vsource.sym} 740 -250 0 0 {name=VB
value=0.0V}
C {devices/pmos4.sym} 220 -400 0 0 {name=M1
w=10U
l=1U
model=M_PMOS_1}
C {devices/capa.sym} 440 -400 0 0 {name=CL
value=5.0PF}
N 220 -280 220 -370 {lab=1}
N 220 -370 240 -370 {lab=1}
N 240 -370 240 -400 {lab=1}
N 220 -280 610 -280 {lab=1}
N 480 -280 480 -400 {lab=3}
N 480 -400 200 -400 {lab=3}
N 740 -280 740 -430 {lab=5}
N 740 -430 240 -430 {lab=5}
C {devices/gnd.sym} 220 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 350 -280 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 610 -220 0 0 {name=l_11 sig_type=std_logic lab=11}
C {devices/lab_pin.sym} 740 -220 0 0 {name=l_15 sig_type=std_logic lab=15}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_4 sig_type=std_logic lab=4}
