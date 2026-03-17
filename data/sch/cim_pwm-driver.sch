v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 210 -545 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 210 -515 0 0 0.35 0.35 {}
C {devices/vsource.sym} 260 -10 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 390 -10 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 520 -10 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 650 -10 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 260 120 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 390 120 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 520 120 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 650 120 0 0 {name=Vpwm
value=1.8}
C {devices/nmos4.sym} 260 -220 0 0 {name=XMn1
w=1u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 260 -400 0 0 {name=XMp1
w=2u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 540 -220 0 0 {name=XMn2
w=2u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 540 -400 0 0 {name=XMp2
w=4u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 800 -220 0 0 {name=XMn3
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 820 -400 0 0 {name=XMp3
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 940 -160 0 0 {name=Cload
value=100f}
N 240 -220 240 -400 {lab=pwm_in}
N 280 -250 280 -430 {lab=n1}
N 280 -250 280 -220 {lab=n1}
N 280 -220 520 -220 {lab=n1}
N 520 -220 520 -400 {lab=n1}
N 560 -250 560 -430 {lab=n2}
N 560 -250 560 -220 {lab=n2}
N 560 -220 780 -220 {lab=n2}
N 780 -220 780 -400 {lab=n2}
N 780 -400 800 -400 {lab=n2}
N 820 -250 820 -190 {lab=wl}
N 820 -190 940 -190 {lab=wl}
N 820 -250 820 -430 {lab=wl}
N 820 -430 840 -430 {lab=wl}
C {devices/vdd.sym} 260 -40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 260 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 390 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 520 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 650 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 260 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 390 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 520 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 650 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 940 -130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 390 -40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 280 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 820 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 820 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 520 -40 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 650 -40 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 260 90 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 390 90 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 520 90 0 0 {name=l_in3 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 650 90 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 240 -220 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
