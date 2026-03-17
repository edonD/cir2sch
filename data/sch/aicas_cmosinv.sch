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
C {devices/lab_pin.sym} 240 -430 0 0 {name=l_14 sig_type=std_logic lab=14}
C {devices/lab_pin.sym} 200 -400 0 0 {name=l_13 sig_type=std_logic lab=13}
C {devices/lab_pin.sym} 240 -370 0 0 {name=l_15 sig_type=std_logic lab=15}
C {devices/lab_pin.sym} 240 -400 0 0 {name=l_16 sig_type=std_logic lab=16}
C {devices/lab_pin.sym} 460 -180 0 0 {name=l_24 sig_type=std_logic lab=24}
C {devices/lab_pin.sym} 420 -150 0 0 {name=l_23 sig_type=std_logic lab=23}
C {devices/lab_pin.sym} 460 -120 0 0 {name=l_25 sig_type=std_logic lab=25}
C {devices/lab_pin.sym} 460 -150 0 0 {name=l_26 sig_type=std_logic lab=26}
C {devices/iopin.sym} 100 -440 0 0 {name=p_1 lab=1}
C {devices/iopin.sym} 100 -400 0 0 {name=p_2 lab=2}
C {devices/iopin.sym} 100 -360 0 0 {name=p_3 lab=3}
C {devices/iopin.sym} 100 -320 0 0 {name=p_4 lab=4}
