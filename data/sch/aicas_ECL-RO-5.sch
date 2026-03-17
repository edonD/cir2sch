v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {nor.sym} 520 -300 0 0 {name=X1}
C {nor.sym} 740 -300 0 0 {name=X2}
C {nor.sym} 960 -300 0 0 {name=X3}
C {nor.sym} 520 -120 0 0 {name=X4}
C {nor.sym} 740 -120 0 0 {name=X5}
C {nor.sym} 960 -120 0 0 {name=X6}
C {nor.sym} 520 60 0 0 {name=X7}
C {nor.sym} 740 60 0 0 {name=X8}
C {nor.sym} 960 60 0 0 {name=X9}
C {devices/vsource.sym} 300 150 0 0 {name=V1
value=-5.2}
T {X1} 500 -280 0 0 0.25 0.25 {}
T {X2} 720 -280 0 0 0.25 0.25 {}
T {X3} 940 -280 0 0 0.25 0.25 {}
T {X4} 500 -100 0 0 0.25 0.25 {}
T {X5} 720 -100 0 0 0.25 0.25 {}
T {X6} 940 -100 0 0 0.25 0.25 {}
T {X7} 500 80 0 0 0.25 0.25 {}
T {X8} 720 80 0 0 0.25 0.25 {}
T {X9} 940 80 0 0 0.25 0.25 {}
N 490 -320 550 -320 {lab=out9}
N 550 -300 550 -320 {lab=out1}
N 550 -320 710 -320 {lab=out1}
N 710 -320 770 -320 {lab=out1}
N 490 -280 490 -100 {lab=vee}
N 490 -100 490 80 {lab=vee}
N 490 -280 710 -280 {lab=vee}
N 710 -280 710 -100 {lab=vee}
N 710 -100 710 80 {lab=vee}
N 710 -280 930 -280 {lab=vee}
N 930 -280 930 -100 {lab=vee}
N 930 -100 930 80 {lab=vee}
N 710 -300 710 -120 {lab=a2}
N 710 -120 930 -120 {lab=a2}
N 770 -300 770 -320 {lab=out2}
N 770 -320 930 -320 {lab=out2}
N 930 -320 990 -320 {lab=out2}
N 490 -120 490 60 {lab=a4}
N 490 60 710 60 {lab=a4}
N 550 -120 550 -140 {lab=out4}
N 550 -140 710 -140 {lab=out4}
N 710 -140 770 -140 {lab=out4}
N 710 -120 710 60 {lab=a5}
N 710 60 930 60 {lab=a5}
N 770 -120 770 -140 {lab=out5}
N 770 -140 930 -140 {lab=out5}
N 930 -140 990 -140 {lab=out5}
N 550 60 550 40 {lab=out7}
N 550 40 710 40 {lab=out7}
N 710 40 770 40 {lab=out7}
N 770 60 770 40 {lab=out8}
N 770 40 930 40 {lab=out8}
N 930 40 990 40 {lab=out8}
C {devices/lab_pin.sym} 990 60 0 0 {name=l_out9 sig_type=std_logic lab=out9}
C {devices/lab_pin.sym} 490 -300 0 0 {name=l_a1 sig_type=std_logic lab=a1}
C {devices/gnd.sym} 550 -280 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 770 -280 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 990 -280 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 550 -100 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 770 -100 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 990 -100 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 550 80 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 770 80 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 990 80 0 0 {name=l_gnd lab=GND}
C {devices/lab_pin.sym} 930 -300 0 0 {name=l_a3 sig_type=std_logic lab=a3}
C {devices/lab_pin.sym} 490 60 0 0 {name=l_a3 sig_type=std_logic lab=a3}
C {devices/lab_pin.sym} 300 120 0 0 {name=l_VEE sig_type=std_logic lab=VEE}
C {devices/gnd.sym} 300 180 0 0 {name=l_GND lab=GND}
C {devices/lab_pin.sym} 990 -300 0 0 {name=l_out3 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 490 -140 0 0 {name=l_out3 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 550 -140 0 0 {name=l_out3 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 990 -140 0 0 {name=l_out3 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 990 -120 0 0 {name=l_out6 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 490 40 0 0 {name=l_out6 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 550 40 0 0 {name=l_out6 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 990 40 0 0 {name=l_out6 sig_type=std_logic lab=out6}
