v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt AMP Vinp Vinn VDD VSS Vout} -210 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 0 -280 0 0 {name=XM1
w=W_12
l=L_12
m=(multi)12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 -280 0 1 {name=XM2
w=W_12
l=L_12
m=(multi)12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM5
w=W_5
l=L_5
m=(multi)5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 30 0 0 {name=XM8
w=W_8
l=L_8
m=(multi)8
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XM7
w=W_7
l=L_7
m=(multi)7
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XM4
w=W_34
l=L_34
m=(multi)34
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} -160 -400 0 0 {name=XM3
w=W_34
l=L_34
m=(multi)34
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XM6
w=W_6
l=L_6
m=(multi)6
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {CurrentBias.sym} 620 -300 0 0 {name=XI1}
C {devices/capa.sym} 400 -320 0 0 {name=C1
m=1
value=1.25p}
T {XI1} 600 -280 0 0 0.25 0.25 {}
N 20 -310 20 -400 {lab=net1}
N 20 -400 90 -400 {lab=net1}
N 90 -400 90 -430 {lab=net1}
N 90 -430 -140 -430 {lab=net1}
N -140 -430 -140 -400 {lab=net1}
N -140 -400 -180 -400 {lab=net1}
N 20 -250 200 -250 {lab=net3}
N 200 -250 200 -180 {lab=net3}
N 200 -180 130 -180 {lab=net3}
N 200 -310 200 -430 {lab=net2}
N 200 -430 130 -430 {lab=net2}
N 200 -310 200 -400 {lab=net2}
N 200 -400 350 -400 {lab=net2}
N 350 -400 350 -350 {lab=net2}
N 350 -350 400 -350 {lab=net2}
N 90 -150 350 -150 {lab=Ibias}
N 350 -150 350 0 {lab=Ibias}
N 350 0 240 0 {lab=Ibias}
N 240 0 240 30 {lab=Ibias}
N 240 30 200 30 {lab=Ibias}
N 310 -180 310 -290 {lab=Vout}
N 310 -290 400 -290 {lab=Vout}
N 400 -290 400 -430 {lab=Vout}
N 400 -430 310 -430 {lab=Vout}
C {devices/lab_pin.sym} -20 -280 0 0 {name=l_Vinn sig_type=std_logic lab=Vinn}
C {devices/gnd.sym} 20 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 200 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 60 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 650 -300 0 0 {name=l_VSS lab=VSS}
C {devices/lab_pin.sym} 240 -280 0 0 {name=l_Vinp sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 590 -320 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} -140 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} -140 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 650 -320 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 590 -300 0 0 {name=l_VDD lab=VDD}
C {devices/ipin.sym} -280 -280 0 0 {name=p_Vinp lab=Vinp}
C {devices/ipin.sym} -280 -240 0 0 {name=p_Vinn lab=Vinn}
C {devices/opin.sym} 780 -290 0 0 {name=p_Vout lab=Vout}
