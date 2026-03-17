v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt AMP Vinp Vinn VDD VSS Vout} 60 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM1
w=25.97
l=1.2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 1 {name=XM2
w=25.97
l=1.2
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 390 -150 0 0 {name=XM5
w=8.89
l=0.5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 500 30 0 0 {name=XM8
w=6.752
l=0.5
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 610 -150 0 1 {name=XM7
w=88.76
l=0.8
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XM4
w=18.45
l=1.2
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 0 {name=XM3
w=18.45
l=1.2
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XM6
w=60.5
l=0.5
m=2
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/isource.sym} 110 180 0 0 {name=I0
value=20u}
C {devices/capa.sym} 360 -300 0 0 {name=C1
m=1
value=1.25p}
N 130 -180 130 -400 {lab=net1}
N 130 -400 90 -400 {lab=net1}
N 90 -400 310 -400 {lab=net1}
N 310 -400 310 -430 {lab=net1}
N 310 -430 350 -430 {lab=net1}
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
N 590 -180 590 -270 {lab=Vout}
N 590 -270 360 -270 {lab=Vout}
N 360 -270 360 -430 {lab=Vout}
N 360 -430 310 -430 {lab=Vout}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_Vinn sig_type=std_logic lab=Vinn}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 310 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 520 60 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 520 30 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 590 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 590 -150 0 0 {name=l_VSS lab=VSS}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_Vinp sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 110 210 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 350 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 350 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 310 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 110 150 0 0 {name=l_VDD lab=VDD}
C {devices/ipin.sym} -10 -150 0 0 {name=p_Vinp lab=Vinp}
C {devices/ipin.sym} -10 -110 0 0 {name=p_Vinn lab=Vinn}
C {devices/opin.sym} 770 -283 0 0 {name=p_Vout lab=Vout}
