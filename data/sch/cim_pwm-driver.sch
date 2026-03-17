v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 150 -500 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 150 -470 0 0 0.35 0.35 {}
C {devices/vsource.sym} 200 -10 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 330 -10 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 460 -10 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 590 -10 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 200 120 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 330 120 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 460 120 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 590 120 0 0 {name=Vpwm
value=1.8}
C {devices/nmos4.sym} 200 -220 0 0 {name=XMn1
w=1u
l=0.15u
model=sky130_fd_pr__nfet_01v8
spiceprefix=X}
C {devices/pmos4.sym} 200 -400 0 0 {name=XMp1
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
C {devices/pmos4.sym} 760 -400 0 0 {name=XMp3
w=8u
l=0.15u
model=sky130_fd_pr__pfet_01v8
spiceprefix=X}
C {devices/capa.sym} 880 -160 0 0 {name=Cload
value=100f}
N 180 -220 180 -400 {lab=pwm_in}
N 220 -250 220 -430 {lab=n1}
N 220 -250 220 -220 {lab=n1}
N 220 -220 460 -220 {lab=n1}
N 460 -220 460 -400 {lab=n1}
N 500 -250 500 -430 {lab=n2}
N 500 -250 500 -220 {lab=n2}
N 500 -220 720 -220 {lab=n2}
N 720 -220 720 -400 {lab=n2}
N 720 -400 740 -400 {lab=n2}
N 760 -250 760 -190 {lab=wl}
N 760 -190 880 -190 {lab=wl}
N 760 -250 760 -430 {lab=wl}
N 760 -430 780 -430 {lab=wl}
C {devices/vdd.sym} 200 -40 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 220 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 780 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 780 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 200 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 20 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 880 -130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 330 -40 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 220 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -220 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -220 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 460 -40 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 590 -40 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 200 90 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 330 90 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 460 90 0 0 {name=l_in3 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 590 90 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 180 -220 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
