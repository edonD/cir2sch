v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 0 0 0 {name=vcc
value=3.3}
C {devices/res.sym} 440 -280 0 0 {name=r5
value=2}
C {devices/res.sym} 570 -280 0 0 {name=r4
value=4}
C {devices/res.sym} 720 -280 0 0 {name=r3
value=8}
C {devices/res.sym} 720 -190 0 0 {name=r2
value=16}
C {devices/res.sym} 840 -170 0 0 {name=r1
value=32}
C {devices/res.sym} 980 -150 0 0 {name=r0
value=64}
C {devices/vsource.sym} 570 0 0 0 {name=vamm
value=0}
C {devices/vsource.sym} 700 0 0 0 {name=Vpulse
value=PULSE}
C {devices/vsource.sym} 830 0 0 0 {name=Vtest
value=PULSE}
C {sar_adc.sym} 1120 -300 0 0 {name=xtest}
T {xtest} 1100 -280 0 0 0.25 0.25 {}
N 440 -310 440 -320 {lab=d5}
N 440 -320 1090 -320 {lab=d5}
N 440 -250 570 -250 {lab=sum}
N 570 -250 720 -250 {lab=sum}
N 720 -250 720 -160 {lab=sum}
N 720 -160 720 -140 {lab=sum}
N 720 -140 840 -140 {lab=sum}
N 840 -140 840 -120 {lab=sum}
N 840 -120 980 -120 {lab=sum}
N 570 -250 570 -30 {lab=sum}
N 570 -310 570 -320 {lab=d4}
N 570 -320 1150 -320 {lab=d4}
N 720 -310 720 -300 {lab=d3}
N 720 -300 1090 -300 {lab=d3}
N 720 -220 720 -300 {lab=d2}
N 720 -300 1150 -300 {lab=d2}
N 840 -200 840 -280 {lab=d1}
N 840 -280 1090 -280 {lab=d1}
N 980 -180 980 -280 {lab=d0}
N 980 -280 1150 -280 {lab=d0}
N 1090 -30 830 -30 {lab=input}
C {devices/vdd.sym} 440 -30 0 0 {name=l_vcc lab=vcc}
C {devices/vdd.sym} 1150 -360 0 0 {name=l_vcc lab=vcc}
C {devices/gnd.sym} 440 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 30 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 700 -30 0 0 {name=l_Start sig_type=std_logic lab=Start}
C {devices/lab_pin.sym} 1090 -340 0 0 {name=l_start sig_type=std_logic lab=start}
C {devices/lab_pin.sym} 1150 -340 0 0 {name=l_valid sig_type=std_logic lab=valid}
C {devices/lab_pin.sym} 1090 -260 0 0 {name=l_clk sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1090 -360 0 0 {name=l_input sig_type=std_logic lab=input}
