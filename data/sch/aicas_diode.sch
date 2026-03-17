v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1. An operating point at 0.7v forward bias.} 250 -15 0 0 0.35 0.35 {}
T {2. An ac analysis at 0.7v forward bias.} 250 10 0 0 0.35 0.35 {}
T {3. The forward and reverse bias characteristics from -3v to 2v.} 250 35 0 0 0.35 0.35 {}
C {devices/vsource.sym} 300 150 0 0 {name=Vpp
value=0.7v}
C {devices/vsource.sym} 430 150 0 0 {name=Vnn
value=0v}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 180 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 430 120 0 0 {name=l_2 sig_type=std_logic lab=2}
