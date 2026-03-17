v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 1100 -280 0 0 {name=Conversion
value=counter}
C {devices/vsource.sym} 440 -130 0 0 {name=vclk
value=pulse(}
C {devices/vsource.sym} 570 -130 0 0 {name=vreset
value=pulse(}
C {devices/vsource.sym} 700 -130 0 0 {name=vhigh
value=1.0}
C {devices/res.sym} 440 -400 0 0 {name=r1
value=1k}
C {devices/res.sym} 660 -400 0 0 {name=r2
value=1k}
C {devices/res.sym} 880 -400 0 0 {name=r3
value=1k}
C {counter.sym} 1320 -300 0 0 {name=x1}
T {x1} 1300 -280 0 0 0.25 0.25 {}
N 440 -160 440 -430 {lab=100}
N 570 -160 570 -430 {lab=200}
N 570 -430 660 -430 {lab=200}
N 700 -160 700 -430 {lab=300}
N 700 -430 880 -430 {lab=300}
C {devices/lab_pin.sym} 1100 -310 0 0 {name=l_of sig_type=std_logic lab=of}
C {devices/lab_pin.sym} 1100 -250 0 0 {name=l_Pspice sig_type=std_logic lab=Pspice}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 880 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 1290 -360 0 0 {name=l_hi sig_type=std_logic lab=hi}
C {devices/lab_pin.sym} 1350 -360 0 0 {name=l_clr sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 1290 -340 0 0 {name=l_clock sig_type=std_logic lab=clock}
C {devices/lab_pin.sym} 1350 -340 0 0 {name=l_q1 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} 1290 -320 0 0 {name=l_q2 sig_type=std_logic lab=q2}
C {devices/lab_pin.sym} 1350 -320 0 0 {name=l_q3 sig_type=std_logic lab=q3}
C {devices/lab_pin.sym} 1290 -300 0 0 {name=l_q4 sig_type=std_logic lab=q4}
C {devices/lab_pin.sym} 1350 -300 0 0 {name=l_q1b sig_type=std_logic lab=q1b}
C {devices/lab_pin.sym} 1290 -280 0 0 {name=l_q2b sig_type=std_logic lab=q2b}
C {devices/lab_pin.sym} 1350 -280 0 0 {name=l_q3b sig_type=std_logic lab=q3b}
C {devices/lab_pin.sym} 1290 -260 0 0 {name=l_q4b sig_type=std_logic lab=q4b}
