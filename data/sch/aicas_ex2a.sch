v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/isource.sym} 300 150 0 0 {name=I1
value=-1mA}
C {sub1_in_lib.sym} 650 -300 0 0 {name=X1}
C {devices/isource.sym} 430 150 0 0 {name=I2
value=-1mA}
C {sub2_in_lib.sym} 650 -120 0 0 {name=X2}
T {X1} 630 -280 0 0 0.25 0.25 {}
T {X2} 630 -100 0 0 0.25 0.25 {}
N 430 120 430 -130 {lab=9}
N 430 -130 620 -130 {lab=9}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 620 -310 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 680 -310 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 680 -130 0 0 {name=l_0 lab=GND}
