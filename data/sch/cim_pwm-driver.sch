v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PWM Wordline Driver for CIM} -20 -500 0 0 0.5 0.5 {}
T {Converts 4-bit input code to proportional pulse width on wordline} -20 -470 0 0 0.35 0.35 {}
C {devices/vsource.sym} 30 -400 0 0 {name=Vdd
value={supply}}
C {devices/vsource.sym} 160 -400 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 440 -400 0 0 {name=Vclk
value=PULSE(0}
C {devices/vsource.sym} 30 -200 0 0 {name=Vin0
value=0}
C {devices/vsource.sym} 160 -200 0 0 {name=Vin1
value=0}
C {devices/vsource.sym} 440 -200 0 0 {name=Vin2
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
C {devices/capa.sym} 1600 50 0 0 {name=Cload
value=100f}
N 210 -30 210 -150 {lab=pwm_in}
N 210 -150 280 -150 {lab=pwm_in}
N 280 -150 280 -400 {lab=pwm_in}
N 300 -180 300 -430 {lab=n1}
N 300 -180 300 -150 {lab=n1}
N 300 -150 880 -150 {lab=n1}
N 880 -150 880 -400 {lab=n1}
N 900 -180 900 -430 {lab=n2}
N 900 -180 900 -150 {lab=n2}
N 900 -150 1480 -150 {lab=n2}
N 1480 -150 1480 -400 {lab=n2}
N 1500 -180 1500 -430 {lab=wl}
N 1500 -180 1500 20 {lab=wl}
N 1500 20 1600 20 {lab=wl}
C {devices/vdd.sym} 30 -430 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 300 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 900 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1500 -370 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1520 -400 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 30 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 160 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 30 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 160 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 50 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 210 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1600 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 160 -430 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 300 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 320 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 900 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -150 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1500 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1520 -150 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 30 -230 0 0 {name=l_in0 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 160 -230 0 0 {name=l_in1 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 440 -230 0 0 {name=l_in2 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 50 -30 0 0 {name=l_in3 sig_type=std_logic lab=in3}
