v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {test ASRC temperature coeff} 250 30 0 0 0.5 0.5 {}
C {devices/vsource.sym} 300 150 0 0 {name=v1}
C {devices/vsource.sym} 430 150 0 0 {name=v2
value=0}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 120 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 430 180 0 0 {name=l_2 sig_type=std_logic lab=2}
