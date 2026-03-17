v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 170 -545 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 170 -515 0 0 0.35 0.35 {}
C {devices/nmos4.sym} 220 -220 0 0 {name=XMn1
w=1u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 220 -400 0 0 {name=XMp1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 480 -220 0 0 {name=XMn2
w=2u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 480 -400 0 0 {name=XMp2
w=4u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 740 -220 0 0 {name=XMn3
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 740 -400 0 0 {name=XMp3
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 880 -250 0 0 {name=Cload
value=100f}
N 200 -220 200 -400 {lab=pwm_in}
N 240 -250 240 -430 {lab=n1}
N 240 -250 240 -220 {lab=n1}
N 240 -220 460 -220 {lab=n1}
N 460 -220 460 -400 {lab=n1}
N 500 -250 500 -430 {lab=n2}
N 500 -250 500 -220 {lab=n2}
N 500 -220 720 -220 {lab=n2}
N 720 -220 720 -400 {lab=n2}
N 760 -250 760 -280 {lab=wl}
N 760 -280 880 -280 {lab=wl}
N 760 -250 760 -430 {lab=wl}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 -370 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 880 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -190 0 0 {name=l_vss lab=VSS}
