v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/isource.sym} 440 -250 0 0 {name=I1
value=-1mA}
C {sub1.sym} 790 -300 0 0 {name=X1}
C {devices/res.sym} 440 -400 0 0 {name=R2
value=4k}
C {sub_in_lib.sym} 790 -120 0 0 {name=X3}
C {devices/vsource.sym} 570 -250 0 0 {name=Vcheck
value=1.0V}
T {X1} 770 -280 0 0 0.25 0.25 {}
T {X3} 770 -100 0 0 0.25 0.25 {}
N 440 -280 570 -280 {lab=9}
N 440 -280 440 -430 {lab=9}
N 570 -280 570 -310 {lab=9}
N 570 -310 760 -310 {lab=9}
N 760 -310 760 -130 {lab=9}
C {devices/gnd.sym} 440 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 820 -310 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 820 -130 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 570 -220 0 0 {name=l_check0 sig_type=std_logic lab=check0}
