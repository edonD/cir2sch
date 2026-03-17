v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt AMP Vinp Vinn VDD VSS Vout} -160 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 110 -280 0 0 {name=XM1
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -280 0 1 {name=XM2
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} -110 -400 0 0 {name=XM3
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XM4
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM5
w=W5
l=0.5
m=mult_5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XM6
w=W6
l=0.5
m=mult_6
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XM7
w=W7
l=L7
m=mult_7
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 220 30 0 0 {name=XM8
w=W8
l=0.5
m=mult_8
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {CurrentBias.sym} 610 -300 0 0 {name=XI1}
C {devices/capa.sym} 390 -320 0 0 {name=C1
m=1
value=1.25p}
T {XI1} 590 -280 0 0 0.25 0.25 {}
N 130 -310 130 -400 {lab=net1}
N 130 -400 90 -400 {lab=net1}
N 90 -400 90 -430 {lab=net1}
N 90 -430 -90 -430 {lab=net1}
N -90 -430 -90 -400 {lab=net1}
N -90 -400 -130 -400 {lab=net1}
N 130 -250 90 -250 {lab=net3}
N 130 -250 130 -180 {lab=net3}
N 90 -310 90 -430 {lab=net2}
N 90 -430 130 -430 {lab=net2}
N 130 -430 130 -400 {lab=net2}
N 130 -400 350 -400 {lab=net2}
N 350 -400 350 -350 {lab=net2}
N 350 -350 390 -350 {lab=net2}
N 90 -150 350 -150 {lab=Ibias}
N 350 -150 350 0 {lab=Ibias}
N 350 0 240 0 {lab=Ibias}
N 240 0 240 30 {lab=Ibias}
N 240 30 200 30 {lab=Ibias}
N 310 -430 310 -290 {lab=Vout}
N 310 -290 390 -290 {lab=Vout}
N 390 -290 390 -180 {lab=Vout}
N 390 -180 310 -180 {lab=Vout}
C {devices/lab_pin.sym} 90 -280 0 0 {name=l_Vinn sig_type=std_logic lab=Vinn}
C {devices/gnd.sym} 130 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 90 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 60 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 240 30 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 640 -300 0 0 {name=l_VSS lab=VSS}
C {devices/lab_pin.sym} 130 -280 0 0 {name=l_Vinp sig_type=std_logic lab=Vinp}
C {devices/vdd.sym} -90 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} -90 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 640 -320 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 580 -300 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 580 -320 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/ipin.sym} -230 -280 0 0 {name=p_Vinp lab=Vinp}
C {devices/ipin.sym} -230 -240 0 0 {name=p_Vinn lab=Vinn}
C {devices/opin.sym} 770 -290 0 0 {name=p_Vout lab=Vout}
