v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt INV 1 2 3 4} 170 -515 0 0 0.35 0.35 {}
C {devices/pmos4.sym} 220 -400 0 0 {name=M1
w=5u
l=0.18u
model=M_PMOS}
C {devices/nmos4.sym} 440 -150 0 0 {name=M2
w=5u
l=0.18u
model=M_NMOS}
C {devices/vsource.sym} 220 0 0 0 {name=Vgp
value=0.0v}
C {devices/vsource.sym} 350 0 0 0 {name=Vdp
value=0.0v}
C {devices/vsource.sym} 480 0 0 0 {name=Vsp
value=0.0v}
C {devices/vsource.sym} 610 0 0 0 {name=Vbp
value=0.0v}
C {devices/vsource.sym} 740 0 0 0 {name=Vgn
value=0.0v}
C {devices/vsource.sym} 870 0 0 0 {name=Vdn
value=0.0v}
C {devices/vsource.sym} 1000 0 0 0 {name=Vsn
value=0.0v}
C {devices/vsource.sym} 1130 0 0 0 {name=Vbn
value=0.0v}
N 240 -430 240 30 {lab=14}
N 240 30 350 30 {lab=14}
N 200 -400 200 30 {lab=13}
N 200 30 220 30 {lab=13}
N 240 -370 240 30 {lab=15}
N 240 30 480 30 {lab=15}
N 460 -180 460 30 {lab=24}
N 460 30 870 30 {lab=24}
N 420 -150 420 30 {lab=23}
N 420 30 740 30 {lab=23}
N 460 -120 460 30 {lab=25}
N 460 30 1000 30 {lab=25}
N 480 -30 610 -30 {lab=1}
N 1000 -30 1130 -30 {lab=2}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_16 sig_type=std_logic lab=16}
C {devices/lab_pin.sym} 610 30 0 0 {name=l_16 sig_type=std_logic lab=16}
C {devices/lab_pin.sym} 460 -150 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/lab_pin.sym} 1130 30 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/lab_pin.sym} 220 -30 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 740 -30 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 350 -30 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 870 -30 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/iopin.sym} 100 0 0 0 {name=p_1 lab=1}
C {devices/iopin.sym} 100 40 0 0 {name=p_2 lab=2}
C {devices/iopin.sym} 100 80 0 0 {name=p_3 lab=3}
C {devices/iopin.sym} 100 120 0 0 {name=p_4 lab=4}
