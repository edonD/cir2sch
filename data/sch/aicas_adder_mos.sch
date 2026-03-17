v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {.subckt ONEBIT 1 2 3 4 5 6} 470 -415 0 0 0.35 0.35 {}
C {NAND.sym} 520 -300 0 0 {name=X1}
C {NAND.sym} 740 -300 0 0 {name=X2}
C {NAND.sym} 960 -300 0 0 {name=X3}
C {NAND.sym} 520 -120 0 0 {name=X4}
C {NAND.sym} 740 -120 0 0 {name=X5}
C {NAND.sym} 960 -120 0 0 {name=X6}
C {NAND.sym} 520 60 0 0 {name=X7}
C {NAND.sym} 740 60 0 0 {name=X8}
C {NAND.sym} 960 60 0 0 {name=X9}
T {X1} 500 -280 0 0 0.25 0.25 {}
T {X2} 720 -280 0 0 0.25 0.25 {}
T {X3} 940 -280 0 0 0.25 0.25 {}
T {X4} 500 -100 0 0 0.25 0.25 {}
T {X5} 720 -100 0 0 0.25 0.25 {}
T {X6} 940 -100 0 0 0.25 0.25 {}
T {X7} 500 80 0 0 0.25 0.25 {}
T {X8} 720 80 0 0 0.25 0.25 {}
T {X9} 940 80 0 0 0.25 0.25 {}
N 490 -320 710 -320 {lab=1}
N 550 -320 930 -320 {lab=2}
N 490 -300 490 -320 {lab=7}
N 490 -320 770 -320 {lab=7}
N 770 -320 990 -320 {lab=7}
N 550 -300 550 -120 {lab=6}
N 550 -120 550 60 {lab=6}
N 550 -300 770 -300 {lab=6}
N 770 -300 770 -120 {lab=6}
N 770 -120 770 60 {lab=6}
N 770 -300 990 -300 {lab=6}
N 990 -300 990 -120 {lab=6}
N 990 -120 990 60 {lab=6}
N 710 -300 490 -300 {lab=8}
N 490 -300 490 -140 {lab=8}
N 930 -300 550 -300 {lab=9}
N 550 -300 550 -140 {lab=9}
N 490 -120 490 40 {lab=10}
N 490 -120 490 -140 {lab=10}
N 490 -140 770 -140 {lab=10}
N 710 -140 930 -140 {lab=3}
N 710 -120 710 -140 {lab=11}
N 710 -140 990 -140 {lab=11}
N 990 -140 990 40 {lab=11}
N 990 40 930 40 {lab=11}
N 710 -120 710 40 {lab=11}
N 710 40 550 40 {lab=11}
N 930 -120 710 -120 {lab=12}
N 710 -120 710 40 {lab=12}
N 490 60 770 60 {lab=13}
N 770 60 770 40 {lab=13}
C {devices/lab_pin.sym} 990 40 0 0 {name=l_7 sig_type=std_logic lab=7}
C {devices/lab_pin.sym} 710 60 0 0 {name=l_4 sig_type=std_logic lab=4}
C {devices/lab_pin.sym} 930 60 0 0 {name=l_5 sig_type=std_logic lab=5}
C {devices/iopin.sym} 400 -300 0 0 {name=p_1 lab=1}
C {devices/iopin.sym} 400 -260 0 0 {name=p_2 lab=2}
C {devices/iopin.sym} 400 -120 0 0 {name=p_3 lab=3}
C {devices/iopin.sym} 400 60 0 0 {name=p_4 lab=4}
C {devices/iopin.sym} 400 100 0 0 {name=p_5 lab=5}
C {devices/iopin.sym} 400 -80 0 0 {name=p_6 lab=6}
