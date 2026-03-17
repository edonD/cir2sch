v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt AMP Vinp Vinn VDD VSS Vout} 60 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM1
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XM2
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XM3
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
C {devices/nmos4.sym} 390 -150 0 0 {name=XM5
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
C {devices/nmos4.sym} 610 -150 0 1 {name=XM7
w=W7
l=L7
m=mult_7
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 500 30 0 0 {name=XM8
w=W8
l=0.5
m=mult_8
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/isource.sym} 110 180 0 0 {name=I0
value=20u}
C {devices/capa.sym} 360 -300 0 0 {name=C1
m=1
value=0.5p}
N 130 -180 130 -430 {lab=net1}
N 130 -430 130 -400 {lab=net1}
N 130 -400 90 -400 {lab=net1}
N 130 -120 310 -120 {lab=net3}
N 310 -120 310 -180 {lab=net3}
N 310 -180 410 -180 {lab=net3}
N 310 -180 310 -330 {lab=net2}
N 310 -330 360 -330 {lab=net2}
N 360 -330 360 -400 {lab=net2}
N 360 -400 350 -400 {lab=net2}
N 350 -400 350 -430 {lab=net2}
N 350 -430 130 -430 {lab=net2}
N 370 -150 630 -150 {lab=Ibias}
N 630 -150 630 0 {lab=Ibias}
N 630 0 520 0 {lab=Ibias}
N 520 0 520 30 {lab=Ibias}
N 520 30 480 30 {lab=Ibias}
N 310 -430 310 -270 {lab=Vout}
N 310 -270 360 -270 {lab=Vout}
N 360 -270 360 -180 {lab=Vout}
N 360 -180 590 -180 {lab=Vout}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_Vinn sig_type=std_logic lab=Vinn}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 590 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 590 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 520 60 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 520 30 0 0 {name=l_VSS lab=VSS}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_Vinp sig_type=std_logic lab=Vinp}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 110 150 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 110 210 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/ipin.sym} -10 -150 0 0 {name=p_Vinp lab=Vinp}
C {devices/ipin.sym} -10 -110 0 0 {name=p_Vinn lab=Vinn}
C {devices/opin.sym} 770 -283 0 0 {name=p_Vout lab=Vout}
