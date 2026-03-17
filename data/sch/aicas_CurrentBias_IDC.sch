v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 220 0 0 0 {name=V1}
C {devices/vsource.sym} 350 0 0 0 {name=V0}
C {devices/vsource.sym} 480 0 0 0 {name=VMEAS
value=0}
C {devices/vsource.sym} 610 0 0 0 {name=V2}
C {devices/vsource.sym} 220 130 0 0 {name=VMEAS2
value=0}
C {CurrentBias.sym} 830 -300 0 0 {name=XI1}
C {devices/nmos4.sym} 220 -150 0 0 {name=XM8
w=2
l=0.5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
T {XI1} 810 -280 0 0 0.25 0.25 {}
N 350 -30 480 -30 {lab=VDD_SOURCE}
N 610 -30 610 100 {lab=VDD_SOURCE2}
N 610 100 220 100 {lab=VDD_SOURCE2}
N 240 -180 240 -150 {lab=Ibias1}
N 240 -150 200 -150 {lab=Ibias1}
C {devices/gnd.sym} 220 -30 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 860 -300 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 220 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 610 30 0 0 {name=l_0 lab=GND}
C {devices/vdd.sym} 480 30 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 860 -320 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 220 160 0 0 {name=l_VDD2 sig_type=std_logic lab=VDD2}
C {devices/lab_pin.sym} 800 -300 0 0 {name=l_VDD2 sig_type=std_logic lab=VDD2}
C {devices/lab_pin.sym} 800 -320 0 0 {name=l_Ibias1 sig_type=std_logic lab=Ibias1}
