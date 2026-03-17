v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 170 -545 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 170 -515 0 0 0.35 0.35 {}
C {devices/vsource.sym} 220 -70 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 350 -70 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 480 -70 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 610 -70 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 220 60 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 350 60 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 480 60 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 610 60 0 0 {name=Vpwm
value=1.8}
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
C {devices/nmos4.sym} 500 -220 0 0 {name=XMn2
w=2u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 500 -400 0 0 {name=XMp2
w=4u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/nmos4.sym} 760 -220 0 0 {name=XMn3
w=4u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 780 -400 0 0 {name=XMp3
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 900 -250 0 0 {name=Cload
value=100f}
N 200 -220 200 -400 {lab=pwm_in}
N 240 -250 240 -430 {lab=n1}
N 240 -250 240 -220 {lab=n1}
N 240 -220 480 -220 {lab=n1}
N 480 -220 480 -400 {lab=n1}
N 520 -250 520 -430 {lab=n2}
N 520 -250 520 -220 {lab=n2}
N 520 -220 740 -220 {lab=n2}
N 740 -220 740 -400 {lab=n2}
N 740 -400 760 -400 {lab=n2}
N 780 -250 780 -280 {lab=wl}
N 780 -280 900 -280 {lab=wl}
N 780 -250 780 -430 {lab=wl}
N 780 -430 800 -430 {lab=wl}
C {devices/vdd.sym} 220 -100 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 240 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 800 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 800 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 220 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 610 -40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 220 90 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 90 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 90 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 610 90 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 -100 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 240 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 780 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 480 -100 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 610 -100 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 220 30 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 350 30 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 480 30 0 0 {name=l_in3 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 610 30 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 200 -220 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
