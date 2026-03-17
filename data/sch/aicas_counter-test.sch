v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {10 bit synchronous digital counter} 250 -420 0 0 0.5 0.5 {}
C {devices/vsource.sym} 300 150 0 0 {name=vclk
value=0}
C {devices/vsource.sym} 430 150 0 0 {name=vres
value=0}
C {devices/vsource.sym} 560 150 0 0 {name=vone
value=1}
C {devices/vsource.sym} 690 150 0 0 {name=vzero
value=0}
C {count10.sym} 910 -300 0 0 {name=XCounter}
C {latch10.sym} 910 -120 0 0 {name=Xlatch}
C {dac10.sym} 910 60 0 0 {name=Xdac}
T {XCounter} 890 -280 0 0 0.25 0.25 {}
T {Xlatch} 890 -100 0 0 0.25 0.25 {}
T {Xdac} 890 80 0 0 0.25 0.25 {}
N 880 -360 940 -360 {lab=done}
N 940 -340 940 -20 {lab=dreset}
N 940 -20 880 -20 {lab=dreset}
N 880 -320 880 -220 {lab=dout1}
N 940 -320 940 -220 {lab=dout2}
N 880 -300 880 -200 {lab=dout3}
N 940 -300 940 -200 {lab=dout4}
N 880 -280 880 -180 {lab=dout5}
N 940 -280 940 -180 {lab=dout6}
N 880 -260 880 -160 {lab=dout7}
N 940 -260 940 -160 {lab=dout8}
N 880 -240 880 -140 {lab=dout9}
N 940 -240 940 -140 {lab=dout10}
N 880 -120 880 0 {lab=dlout1}
N 940 -120 940 0 {lab=dlout2}
N 880 -100 880 20 {lab=dlout3}
N 940 -100 940 20 {lab=dlout4}
N 880 -80 880 40 {lab=dlout5}
N 940 -80 940 40 {lab=dlout6}
N 880 -60 880 60 {lab=dlout7}
N 940 -60 940 60 {lab=dlout8}
N 880 -40 880 80 {lab=dlout9}
N 940 -40 940 80 {lab=dlout10}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_aclk sig_type=std_logic lab=aclk}
C {devices/gnd.sym} 300 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 430 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 180 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 690 180 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 430 120 0 0 {name=l_ars sig_type=std_logic lab=ars}
C {devices/lab_pin.sym} 560 120 0 0 {name=l_aone sig_type=std_logic lab=aone}
C {devices/lab_pin.sym} 690 120 0 0 {name=l_azero sig_type=std_logic lab=azero}
C {devices/lab_pin.sym} 880 -340 0 0 {name=l_dclk sig_type=std_logic lab=dclk}
C {devices/lab_pin.sym} 880 100 0 0 {name=l_adacout sig_type=std_logic lab=adacout}
