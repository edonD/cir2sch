v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Create_Signal} 250 35 0 0 0.35 0.35 {}
C {devices/vsource.sym} 300 150 0 0 {name=VTime
value=0}
C {devices/vsource.sym} 430 150 0 0 {name=Vfreq
value=5.5k}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_VTime sig_type=std_logic lab=VTime}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 180 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 430 120 0 0 {name=l_Vfreq sig_type=std_logic lab=Vfreq}
