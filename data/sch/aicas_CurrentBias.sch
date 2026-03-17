v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt CurrentBias Ibias VDD VDD2 VSS} 60 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 330 -150 0 0 {name=XM1
w=W12
l=L12
m=40
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM2
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -280 0 0 {name=XM3
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -280 0 0 {name=XM4
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 480 -400 0 0 {name=XM5
w=W5_6_7
l=L5_6_7
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 110 -400 0 0 {name=XM6
w=W5_6_7
l=L5_6_7
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 330 -400 0 1 {name=XM7
w=W5_6_7
l=L5_6_7
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 600 -150 0 0 {name=XM8
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 410 50 0 0 {name=R0
value=5K}
C {devices/capa.sym} 550 10 0 0 {name=C1
m=1
value=0.01p}
C {devices/capa.sym} 460 -120 0 0 {name=C2
m=1
value=0.15p}
N 350 -180 350 -250 {lab=net1}
N 310 -150 460 -150 {lab=net2}
N 310 -150 310 -180 {lab=net2}
N 310 -180 130 -180 {lab=net2}
N 130 -180 130 -150 {lab=net2}
N 130 -150 90 -150 {lab=net2}
N 130 -180 130 -250 {lab=net2}
N 350 -120 350 20 {lab=net0}
N 350 20 410 20 {lab=net0}
N 410 20 410 -20 {lab=net0}
N 410 -20 550 -20 {lab=net0}
N 310 -280 310 -310 {lab=net4}
N 310 -310 130 -310 {lab=net4}
N 130 -310 130 -280 {lab=net4}
N 130 -280 90 -280 {lab=net4}
N 130 -310 130 -430 {lab=net4}
N 310 -430 310 -150 {lab=net5}
N 310 -150 580 -150 {lab=net5}
N 580 -150 580 -180 {lab=net5}
N 580 -180 620 -180 {lab=net5}
N 310 -370 310 -400 {lab=VDD2}
C {devices/gnd.sym} 350 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 350 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -280 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 620 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 80 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 550 40 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 460 -90 0 0 {name=l_VSS lab=VSS}
C {devices/vdd.sym} 500 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 500 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 620 -120 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/lab_pin.sym} 500 -430 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/lab_pin.sym} 460 -400 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/lab_pin.sym} 350 -400 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/lab_pin.sym} 350 -310 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/lab_pin.sym} 90 -400 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/lab_pin.sym} 460 -430 0 0 {name=l_net3 sig_type=std_logic lab=net3}
C {devices/ipin.sym} -10 -150 0 0 {name=p_Ibias lab=Ibias}
C {devices/iopin.sym} -10 -400 0 0 {name=p_VDD2 lab=VDD2}
