v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 830 -400 0 0 {name=R4
value=10}
C {devices/res.sym} 1370 -280 0 0 {name=R6
value=1k}
C {devices/nmos4.sym} 110 -150 0 0 {name=MQ5
w=5u
l=0.18u
model=NMOS}
C {devices/res.sym} 870 -220 0 0 {name=R15
value=47.5}
C {devices/res.sym} 1250 -250 0 0 {name=R12
value=2.2k}
C {devices/res.sym} 840 -110 0 0 {name=RTH2
value=4.7k}
C {RPOT.sym} 1900 -300 0 0 {name=XP2
value=5k}
C {devices/res.sym} 900 -90 0 0 {name=R21
value=1}
C {devices/res.sym} 700 -130 0 0 {name=R10
value=220}
C {devices/res.sym} 660 -40 0 0 {name=R9
value=220}
C {devices/res.sym} 1280 -400 0 0 {name=R1
value=1k}
C {RPOT.sym} 2020 -120 0 0 {name=XP3
value=200}
C {devices/res.sym} 1590 -280 0 0 {name=R5
value=1k}
C {devices/res.sym} 960 50 0 0 {name=R3
value=10}
C {devices/res.sym} 1150 -400 0 0 {name=R2
value=47.5k}
C {devices/res.sym} 1420 -120 0 0 {name=R19
value=1}
C {devices/res.sym} 1520 -120 0 0 {name=R14
value=47.5}
C {devices/res.sym} 1640 -80 0 0 {name=R20
value=1}
C {devices/nmos4.sym} 610 -150 0 1 {name=MQ4
w=5u
l=0.18u
model=NMOS}
C {devices/res.sym} 1880 -110 0 0 {name=R11
value=2.2k}
C {devices/res.sym} 1040 -130 0 0 {name=RTH1
value=4.7k}
C {RPOT.sym} 1900 60 0 0 {name=XP1
value=5k}
C {devices/res.sym} 1300 -80 0 0 {name=R13
value=47.5}
C {devices/nmos4.sym} 390 -150 0 0 {name=MQ3
w=5u
l=0.18u
model=NMOS}
C {devices/res.sym} 1760 -60 0 0 {name=R18
value=1}
C {devices/res.sym} 1520 -40 0 0 {name=R17
value=1}
C {devices/res.sym} 900 -20 0 0 {name=R7
value=220}
C {devices/res.sym} 780 -10 0 0 {name=R8
value=220}
C {devices/res.sym} 1040 -50 0 0 {name=R22
value=1}
C {devices/res.sym} 1400 -50 0 0 {name=R23
value=1}
C {devices/res.sym} 1160 -20 0 0 {name=R24
value=1}
C {devices/res.sym} 1160 -140 0 0 {name=R16
value=47.5}
C {devices/nmos4.sym} 330 -150 0 1 {name=MQ6
w=5u
l=0.18u
model=NMOS}
C {devices/res.sym} 460 50 0 0 {name=Rl1
value=4}
T {XP2} 1880 -280 0 0 0.25 0.25 {}
T {XP3} 2000 -100 0 0 0.25 0.25 {}
T {XP1} 1880 80 0 0 0.25 0.25 {}
N 700 -100 700 -10 {lab=Net-_P3-Pad1_}
N 700 -10 660 -10 {lab=Net-_P3-Pad1_}
N 660 -10 660 20 {lab=Net-_P3-Pad1_}
N 660 20 780 20 {lab=Net-_P3-Pad1_}
N 780 20 780 10 {lab=Net-_P3-Pad1_}
N 780 10 900 10 {lab=Net-_P3-Pad1_}
N 900 10 900 20 {lab=Net-_P3-Pad1_}
N 900 20 960 20 {lab=Net-_P3-Pad1_}
N 1990 -140 1990 -120 {lab=Net-_P3-Pad1_}
N 1370 -310 1370 -220 {lab=Net-_P2-Pad1_}
N 1370 -220 1250 -220 {lab=Net-_P2-Pad1_}
N 1250 -220 1250 -110 {lab=Net-_P2-Pad1_}
N 1250 -110 1160 -110 {lab=Net-_P2-Pad1_}
N 1370 -250 1370 -20 {lab=-32}
N 1370 -20 1400 -20 {lab=-32}
N 1400 -20 1400 10 {lab=-32}
N 1400 10 1160 10 {lab=-32}
N 1160 10 1160 -20 {lab=-32}
N 1160 -20 1040 -20 {lab=-32}
N 1040 -20 1040 -60 {lab=-32}
N 1040 -60 900 -60 {lab=-32}
N 1930 -320 1930 -300 {lab=-32}
N 1930 -300 1870 -300 {lab=-32}
N 130 -180 310 -180 {lab=out}
N 310 -180 410 -180 {lab=out}
N 410 -180 590 -180 {lab=out}
N 590 -180 590 -160 {lab=out}
N 590 -160 700 -160 {lab=out}
N 700 -160 700 -70 {lab=out}
N 700 -70 660 -70 {lab=out}
N 660 -70 660 -40 {lab=out}
N 660 -40 780 -40 {lab=out}
N 780 -40 780 -50 {lab=out}
N 780 -50 900 -50 {lab=out}
N 410 -180 410 20 {lab=out}
N 410 20 460 20 {lab=out}
N 840 -140 840 -120 {lab=Net-_D1a1-Pad2_}
N 840 -120 900 -120 {lab=Net-_D1a1-Pad2_}
N 900 -120 900 -80 {lab=Net-_D1a1-Pad2_}
N 900 -80 1040 -80 {lab=Net-_D1a1-Pad2_}
N 130 -150 310 -150 {lab=IRFP240}
N 1250 -280 1250 -80 {lab=Net-_R12-Pad1_}
N 1250 -80 840 -80 {lab=Net-_R12-Pad1_}
N 1280 -370 1280 -430 {lab=in}
N 1280 -430 1150 -430 {lab=in}
N 1590 -310 1590 -110 {lab=+32}
N 1590 -110 1640 -110 {lab=+32}
N 1640 -110 1640 -90 {lab=+32}
N 1640 -90 1760 -90 {lab=+32}
N 1640 -110 1640 -70 {lab=+32}
N 1640 -70 1520 -70 {lab=+32}
N 1520 -70 1520 -150 {lab=+32}
N 1520 -150 1420 -150 {lab=+32}
N 1760 -90 1760 60 {lab=+32}
N 1760 60 1870 60 {lab=+32}
N 1870 60 1870 40 {lab=+32}
N 1870 40 1930 40 {lab=+32}
N 1590 -250 1590 -90 {lab=Net-_P1-Pad1_}
N 1590 -90 1520 -90 {lab=Net-_P1-Pad1_}
N 1520 -90 1520 -50 {lab=Net-_P1-Pad1_}
N 1520 -50 1300 -50 {lab=Net-_P1-Pad1_}
N 1880 -80 1880 40 {lab=Net-_P1-Pad1_}
N 1880 40 1870 40 {lab=Net-_P1-Pad1_}
N 1420 -90 1420 -50 {lab=Net-_D4a1-Pad1_}
N 1420 -50 1640 -50 {lab=Net-_D4a1-Pad1_}
N 590 -150 410 -150 {lab=IRFP9240}
N 1760 -30 1760 -10 {lab=Net-_D3a1-Pad1_}
N 1760 -10 1520 -10 {lab=Net-_D3a1-Pad1_}
N 1400 -80 1400 -50 {lab=Net-_D2a1-Pad2_}
N 1400 -50 1160 -50 {lab=Net-_D2a1-Pad2_}
C {devices/gnd.sym} 830 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2050 -140 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 960 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1150 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 80 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 830 -370 0 0 {name=l_Net-_P3-Pad1_ sig_type=std_logic lab=Net-_P3-Pad1_}
C {devices/lab_pin.sym} 870 -190 0 0 {name=l_Net-_P2-Pad1_ sig_type=std_logic lab=Net-_P2-Pad1_}
C {devices/lab_pin.sym} 1870 -320 0 0 {name=l_Net-_P2-Pad1_ sig_type=std_logic lab=Net-_P2-Pad1_}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_Net-_Q5-Pad2_ sig_type=std_logic lab=Net-_Q5-Pad2_}
C {devices/lab_pin.sym} 870 -250 0 0 {name=l_Net-_Q5-Pad2_ sig_type=std_logic lab=Net-_Q5-Pad2_}
C {devices/lab_pin.sym} 130 -120 0 0 {name=l_Net-_D1a1-Pad2_ sig_type=std_logic lab=Net-_D1a1-Pad2_}
C {devices/lab_pin.sym} 1280 -430 0 0 {name=l_Net-_Q1-Pad2_ sig_type=std_logic lab=Net-_Q1-Pad2_}
C {devices/lab_pin.sym} 590 -120 0 0 {name=l_Net-_D4a1-Pad1_ sig_type=std_logic lab=Net-_D4a1-Pad1_}
C {devices/lab_pin.sym} 1520 -150 0 0 {name=l_Net-_Q4-Pad2_ sig_type=std_logic lab=Net-_Q4-Pad2_}
C {devices/lab_pin.sym} 630 -150 0 0 {name=l_Net-_Q4-Pad2_ sig_type=std_logic lab=Net-_Q4-Pad2_}
C {devices/lab_pin.sym} 1880 -140 0 0 {name=l_Net-_R11-Pad1_ sig_type=std_logic lab=Net-_R11-Pad1_}
C {devices/lab_pin.sym} 1040 -100 0 0 {name=l_Net-_R11-Pad1_ sig_type=std_logic lab=Net-_R11-Pad1_}
C {devices/lab_pin.sym} 1040 -160 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 410 -120 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 1300 -110 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 370 -150 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_Net-_D2a1-Pad2_ sig_type=std_logic lab=Net-_D2a1-Pad2_}
C {devices/lab_pin.sym} 1160 -170 0 0 {name=l_Net-_Q6-Pad2_ sig_type=std_logic lab=Net-_Q6-Pad2_}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_Net-_Q6-Pad2_ sig_type=std_logic lab=Net-_Q6-Pad2_}
