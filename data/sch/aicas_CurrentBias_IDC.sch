v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {CurrentBias.sym} 440 -300 0 0 {name=XI1}
C {devices/nmos4.sym} 220 -150 0 0 {name=XM8
w=2
l=0.5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
T {XI1} 420 -280 0 0 0.25 0.25 {}
N 410 -320 410 -180 {lab=Ibias1}
N 410 -180 240 -180 {lab=Ibias1}
N 240 -180 240 -150 {lab=Ibias1}
N 240 -150 200 -150 {lab=Ibias1}
C {devices/gnd.sym} 470 -300 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 -150 0 0 {name=l_VSS lab=VSS}
C {devices/vdd.sym} 470 -320 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 410 -300 0 0 {name=l_VDD2 sig_type=std_logic lab=VDD2}
