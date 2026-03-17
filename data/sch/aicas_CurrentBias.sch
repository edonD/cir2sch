v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt CurrentBias Ibias VDD VDD2 VSS} 60 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 610 -150 0 0 {name=XM1
w=W12
l=L12
m=40
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 390 -150 0 0 {name=XM2
w=W12
l=L12
m=mult_12
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 330 -150 0 0 {name=XM3
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 110 -150 0 0 {name=XM4
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
C {devices/nmos4.sym} 600 -60 0 0 {name=XM8
w=W34
l=L34
m=mult_34
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/res.sym} 690 50 0 0 {name=R0
value=5K}
C {devices/capa.sym} 830 10 0 0 {name=C1
m=1
value=0.01p}
C {devices/capa.sym} 470 -90 0 0 {name=C2
m=1
value=0.15p}
N 630 -180 630 -120 {lab=net1}
N 630 -120 350 -120 {lab=net1}
N 590 -150 590 -120 {lab=net2}
N 590 -120 470 -120 {lab=net2}
N 470 -120 470 -180 {lab=net2}
N 470 -180 410 -180 {lab=net2}
N 410 -180 410 -150 {lab=net2}
N 410 -150 370 -150 {lab=net2}
N 370 -150 370 -120 {lab=net2}
N 370 -120 130 -120 {lab=net2}
N 630 -120 630 20 {lab=net0}
N 630 20 690 20 {lab=net0}
N 690 20 690 -20 {lab=net0}
N 690 -20 830 -20 {lab=net0}
N 350 -180 350 -400 {lab=net3}
N 350 -400 460 -400 {lab=net3}
N 460 -400 460 -430 {lab=net3}
N 460 -430 500 -430 {lab=net3}
N 350 -400 90 -400 {lab=net3}
N 310 -150 310 -180 {lab=net4}
N 310 -180 130 -180 {lab=net4}
N 130 -180 130 -150 {lab=net4}
N 130 -150 90 -150 {lab=net4}
N 130 -180 130 -430 {lab=net4}
N 310 -430 310 -60 {lab=net5}
N 310 -60 580 -60 {lab=net5}
N 580 -60 580 -90 {lab=net5}
N 580 -90 620 -90 {lab=net5}
N 310 -370 310 -400 {lab=VDD2}
C {devices/gnd.sym} 630 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -120 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 410 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 350 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 130 -150 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 620 -60 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 690 80 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 830 40 0 0 {name=l_VSS lab=VSS}
C {devices/gnd.sym} 470 -60 0 0 {name=l_VSS lab=VSS}
C {devices/vdd.sym} 500 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 500 -400 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -370 0 0 {name=l_VDD lab=VDD}
C {devices/vdd.sym} 130 -400 0 0 {name=l_VDD lab=VDD}
C {devices/lab_pin.sym} 620 -30 0 0 {name=l_Ibias sig_type=std_logic lab=Ibias}
C {devices/ipin.sym} -10 -60 0 0 {name=p_Ibias lab=Ibias}
C {devices/iopin.sym} -10 -400 0 0 {name=p_VDD2 lab=VDD2}
