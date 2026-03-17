v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -250 0 0 {name=VCC
value=5V}
C {devices/vsource.sym} 570 -250 0 0 {name=VIN1A
value=PULSE(0}
C {devices/vsource.sym} 700 -250 0 0 {name=VIN1B
value=PULSE(0}
C {devices/vsource.sym} 830 -250 0 0 {name=VIN2A
value=PULSE(0}
C {devices/vsource.sym} 960 -250 0 0 {name=VIN2B
value=PULSE(0}
C {devices/vsource.sym} 1090 -250 0 0 {name=VIN3A
value=PULSE(0}
C {devices/vsource.sym} 1220 -250 0 0 {name=VIN3B
value=PULSE(0}
C {devices/vsource.sym} 1350 -250 0 0 {name=VIN4A
value=PULSE(0}
C {devices/vsource.sym} 1480 -250 0 0 {name=VIN4B
value=PULSE(0}
C {FOURBIT.sym} 1700 -300 0 0 {name=X1}
C {devices/res.sym} 440 -400 0 0 {name=RBIT0
value=1K}
C {devices/res.sym} 660 -400 0 0 {name=RBIT1
value=1K}
C {devices/res.sym} 880 -400 0 0 {name=RBIT2
value=1K}
C {devices/res.sym} 1100 -400 0 0 {name=RBIT3
value=1K}
C {devices/res.sym} 1320 -400 0 0 {name=RCOUT
value=1K}
T {X1} 1680 -280 0 0 0.25 0.25 {}
N 1090 -280 1090 -340 {lab=5}
N 1090 -340 1670 -340 {lab=5}
N 1220 -280 1220 -340 {lab=6}
N 1220 -340 1730 -340 {lab=6}
N 1350 -280 1350 -320 {lab=7}
N 1350 -320 1670 -320 {lab=7}
N 1480 -280 1480 -320 {lab=8}
N 1480 -320 1730 -320 {lab=8}
N 1730 -260 1730 -430 {lab=13}
N 1730 -430 1320 -430 {lab=13}
C {devices/lab_pin.sym} 440 -280 0 0 {name=l_99 sig_type=std_logic lab=99}
C {devices/lab_pin.sym} 1670 -240 0 0 {name=l_99 sig_type=std_logic lab=99}
C {devices/gnd.sym} 440 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 830 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 960 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1090 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1220 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1350 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1480 -220 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1670 -260 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 880 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1100 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1320 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 570 -280 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 1670 -380 0 0 {name=l_1 sig_type=std_logic lab=1}
C {devices/lab_pin.sym} 700 -280 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 1730 -380 0 0 {name=l_2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 830 -280 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 1670 -360 0 0 {name=l_3 sig_type=std_logic lab=3}
C {devices/lab_pin.sym} 960 -280 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1730 -360 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 1670 -300 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 440 -430 0 0 {name=l_9 sig_type=std_logic lab=9}
C {devices/lab_pin.sym} 1730 -300 0 0 {name=l_10 sig_type=std_logic lab=10}
C {devices/lab_pin.sym} 660 -430 0 0 {name=l_10 sig_type=std_logic lab=10}
C {devices/lab_pin.sym} 1670 -280 0 0 {name=l_11 sig_type=std_logic lab=11}
C {devices/lab_pin.sym} 880 -430 0 0 {name=l_11 sig_type=std_logic lab=11}
C {devices/lab_pin.sym} 1730 -280 0 0 {name=l_12 sig_type=std_logic lab=12}
C {devices/lab_pin.sym} 1100 -430 0 0 {name=l_12 sig_type=std_logic lab=12}
