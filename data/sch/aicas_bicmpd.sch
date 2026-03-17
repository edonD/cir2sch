v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 0 0 0 {name=VSS
value=0V}
C {devices/vsource.sym} 350 0 0 0 {name=VIN
value=0V}
C {devices/nmos4.sym} 220 -150 0 0 {name=M1
w=4U
l=1U
model=M_NMOS_1}
C {devices/vsource.sym} 480 0 0 0 {name=VD
value=0V}
C {devices/vsource.sym} 610 0 0 0 {name=VBK
value=0V}
C {devices/vsource.sym} 220 130 0 0 {name=VC
value=0V}
C {devices/vsource.sym} 350 130 0 0 {name=VB
value=0V}
C {devices/vsource.sym} 480 130 0 0 {name=VE
value=0V}
C {devices/capa.sym} 440 -280 0 0 {name=CL
value=1PF}
C {devices/vsource.sym} 610 130 0 0 {name=VL
value=0V}
N 220 -30 220 30 {lab=2}
N 220 30 350 30 {lab=2}
N 350 30 610 30 {lab=2}
N 610 30 610 160 {lab=2}
N 610 160 480 160 {lab=2}
N 350 -30 350 -150 {lab=3}
N 350 -150 200 -150 {lab=3}
N 240 -180 480 -180 {lab=8}
N 480 -180 480 30 {lab=8}
N 240 -120 350 -120 {lab=5}
N 350 -120 350 100 {lab=5}
N 440 -250 610 -250 {lab=6}
N 610 -250 610 100 {lab=6}
N 610 -30 610 -150 {lab=11}
N 220 100 480 100 {lab=4}
N 480 100 480 -30 {lab=4}
N 480 -30 480 -310 {lab=4}
N 480 -310 440 -310 {lab=4}
C {devices/gnd.sym} 220 30 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 220 160 0 0 {name=l_10 sig_type=std_logic lab=10}
C {devices/lab_pin.sym} 350 160 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 480 100 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 240 -150 0 0 {name=l_11 sig_type=std_logic lab=11}
