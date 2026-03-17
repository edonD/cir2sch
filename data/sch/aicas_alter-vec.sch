v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {check alter @v1[pulse] = [ 1 2 3 4 5 6 ]} 250 30 0 0 0.5 0.5 {}
C {devices/vsource.sym} 300 150 0 0 {name=v1
value=0.25}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
