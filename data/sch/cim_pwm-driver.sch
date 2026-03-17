v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} -50 -500 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} -50 -470 0 0 0.35 0.35 {}
C {devices/vsource.sym} 0 -400 0 0 {name=Vdd
value={supply}}
C {devices/vsource.sym} 150 -400 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 480 -400 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 0 -200 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 150 -200 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 480 -200 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 50 0 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 210 0 0 0 {name=Vpwm
value={supply}}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 0 0 {name=XMn1
W={Wlogic}
L={Lbuf}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=XMp1
W={2*Wlogic}
L={Lbuf}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 900 -150 0 0 {name=XMn2
W={Wbuf/2}
L={Lbuf}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 900 -400 0 0 {name=XMp2
W={Wbuf}
L={Lbuf}
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1500 -150 0 0 {name=XMn3
W={Wbuf}
L={Lbuf}
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1500 -400 0 0 {name=XMp3
W={2*Wbuf}
L={Lbuf}
spiceprefix=X}
C {devices/capa.sym} 1630 -280 0 0 {name=Cload
value=100f}
N 210 -30 260 -30 {lab=pwm_in}
N 260 -30 260 -190 {lab=pwm_in}
N 280 -150 260 -150 {lab=pwm_in}
N 260 -150 260 -190 {lab=pwm_in}
N 280 -400 260 -400 {lab=pwm_in}
N 260 -400 260 -190 {lab=pwm_in}
N 300 -180 590 -180 {lab=n1}
N 590 -180 590 -290 {lab=n1}
N 300 -430 590 -430 {lab=n1}
N 590 -430 590 -290 {lab=n1}
N 880 -150 590 -150 {lab=n1}
N 590 -150 590 -290 {lab=n1}
N 880 -400 590 -400 {lab=n1}
N 590 -400 590 -290 {lab=n1}
N 900 -180 1190 -180 {lab=n2}
N 1190 -180 1190 -290 {lab=n2}
N 900 -430 1190 -430 {lab=n2}
N 1190 -430 1190 -290 {lab=n2}
N 1480 -150 1190 -150 {lab=n2}
N 1190 -150 1190 -290 {lab=n2}
N 1480 -400 1190 -400 {lab=n2}
N 1190 -400 1190 -290 {lab=n2}
N 1500 -180 1540 -180 {lab=wl}
N 1540 -180 1540 -310 {lab=wl}
N 1500 -430 1540 -430 {lab=wl}
N 1540 -430 1540 -310 {lab=wl}
N 1630 -310 1540 -310 {lab=wl}
C {devices/vdd.sym} 0 -430 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 0 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 150 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 0 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 150 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 50 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 210 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1630 -250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 150 -430 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 300 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 480 -430 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 0 -230 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 150 -230 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 480 -230 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 50 -30 0 0 {name=l_in3 sig_type=std_logic lab=in3}
