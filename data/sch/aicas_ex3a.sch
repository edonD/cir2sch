v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/isource.sym} 300 150 0 0 {name=I1
value=-1mA}
C {sub1_in_lib.sym} 910 -300 0 0 {name=X1}
C {devices/vsource.sym} 430 150 0 0 {name=Vcheck1
value=1.0V}
C {devices/isource.sym} 560 150 0 0 {name=I2
value=-1mA}
C {sub2_in_lib.sym} 910 -120 0 0 {name=X2}
C {devices/vsource.sym} 690 150 0 0 {name=Vcheck2
value=2.0V}
T {X1} 890 -280 0 0 0.25 0.25 {}
T {X2} 890 -100 0 0 0.25 0.25 {}
N 300 120 430 120 {lab=7}
N 560 120 690 120 {lab=9}
N 690 120 690 -130 {lab=9}
N 690 -130 880 -130 {lab=9}
C {devices/lab_pin.sym} 880 -310 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 940 -310 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 940 -130 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 430 180 0 0 {name=l_check1 sig_type=std_logic lab=check1}
C {devices/lab_pin.sym} 690 180 0 0 {name=l_check2 sig_type=std_logic lab=check2}
