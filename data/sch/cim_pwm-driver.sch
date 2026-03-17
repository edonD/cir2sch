v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 250 -500 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 250 -470 0 0 0.35 0.35 {}
C {devices/vsource.sym} 300 -10 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 430 -10 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 560 -10 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 690 -10 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 300 120 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 430 120 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 560 120 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 690 120 0 0 {name=Vpwm
value=1.8}
C {devices/nmos4.sym} 300 -220 0 0 {name=XMn1
w=1u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 300 -400 0 0 {name=XMp1
w=2u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 540 -220 0 0 {name=XMn2
w=2u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 540 -400 0 0 {name=XMp2
w=4u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 760 -220 0 0 {name=XMn3
w=4u
l=0.15u
m=1
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 780 -400 0 0 {name=XMp3
w=8u
l=0.15u
m=1
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 900 -160 0 0 {name=Cload
value=100f}
N 320 -250 320 -430 {lab=n1}
N 320 -250 320 -220 {lab=n1}
N 320 -220 520 -220 {lab=n1}
N 520 -220 520 -400 {lab=n1}
N 560 -250 560 -430 {lab=n2}
N 560 -250 560 -220 {lab=n2}
N 560 -220 740 -220 {lab=n2}
N 740 -220 740 -400 {lab=n2}
N 740 -400 760 -400 {lab=n2}
N 780 -250 780 -190 {lab=wl}
N 780 -190 900 -190 {lab=wl}
N 780 -250 780 -430 {lab=wl}
N 780 -430 800 -430 {lab=wl}
C {devices/vdd.sym} 300 -40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 800 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 800 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 300 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 690 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 690 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 -130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 -40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 560 -40 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 690 -40 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 300 90 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 430 90 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 560 90 0 0 {name=l_in3 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 690 90 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 280 -220 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 280 -400 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
