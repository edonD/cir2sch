v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} 250 -500 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} 250 -470 0 0 0.35 0.35 {}
C {devices/vsource.sym} 300 300 0 0 {name=Vdd
value={supply}}
C {devices/vsource.sym} 440 300 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 580 300 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 720 300 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 300 440 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 440 440 0 0 {name=Vin2
value=0}
C {devices/vsource.sym} 580 440 0 0 {name=Vin3
value=0}
C {devices/vsource.sym} 720 440 0 0 {name=Vpwm
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
C {devices/capa.sym} 1600 50 0 0 {name=Cload
value=100f}
N 320 -180 320 -430 {lab=n1}
N 320 -180 320 -150 {lab=n1}
N 320 -150 880 -150 {lab=n1}
N 880 -150 880 -400 {lab=n1}
N 920 -180 920 -430 {lab=n2}
N 920 -180 920 -150 {lab=n2}
N 920 -150 1480 -150 {lab=n2}
N 1480 -150 1480 -400 {lab=n2}
N 1520 -180 1520 -430 {lab=wl}
N 1520 -180 1520 20 {lab=wl}
N 1520 20 1600 20 {lab=wl}
C {devices/vdd.sym} 300 270 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1520 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 300 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 580 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 720 330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 300 470 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 470 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 580 470 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 720 470 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1600 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 270 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 580 270 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 720 270 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 300 410 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 440 410 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 580 410 0 0 {name=l_in3 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 720 410 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 280 -150 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
C {devices/lab_pin.sym} 280 -400 0 0 {name=l_pwm_in sig_type=std_logic lab=pwm_in}
