v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {10 bit synchronous digital counter} 470 -420 0 0 0.5 0.5 {}
C {count10.sym} 520 -300 0 0 {name=XCounter}
C {latch10.sym} 520 -120 0 0 {name=Xlatch}
C {dac10.sym} 520 60 0 0 {name=Xdac}
T {XCounter} 500 -280 0 0 0.25 0.25 {}
T {Xlatch} 500 -100 0 0 0.25 0.25 {}
T {Xdac} 500 80 0 0 0.25 0.25 {}
N 490 -360 550 -360 {lab=done}
N 550 -340 550 -20 {lab=dreset}
N 550 -20 490 -20 {lab=dreset}
N 490 -320 490 -220 {lab=dout1}
N 550 -320 550 -220 {lab=dout2}
N 490 -300 490 -200 {lab=dout3}
N 550 -300 550 -200 {lab=dout4}
N 490 -280 490 -180 {lab=dout5}
N 550 -280 550 -180 {lab=dout6}
N 490 -260 490 -160 {lab=dout7}
N 550 -260 550 -160 {lab=dout8}
N 490 -240 490 -140 {lab=dout9}
N 550 -240 550 -140 {lab=dout10}
N 490 -120 490 0 {lab=dlout1}
N 550 -120 550 0 {lab=dlout2}
N 490 -100 490 20 {lab=dlout3}
N 550 -100 550 20 {lab=dlout4}
N 490 -80 490 40 {lab=dlout5}
N 550 -80 550 40 {lab=dlout6}
N 490 -60 490 60 {lab=dlout7}
N 550 -60 550 60 {lab=dlout8}
N 490 -40 490 80 {lab=dlout9}
N 550 -40 550 80 {lab=dlout10}
C {devices/lab_pin.sym} 490 -340 0 0 {name=l_dclk sig_type=std_logic lab=dclk}
C {devices/lab_pin.sym} 490 100 0 0 {name=l_adacout sig_type=std_logic lab=adacout}
