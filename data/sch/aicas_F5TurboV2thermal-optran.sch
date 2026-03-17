v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 830 -400 0 0 {name=R2
value=47.5k}
C {devices/res.sym} 1050 -310 0 0 {name=R1
value=1k}
C {devices/res.sym} 2680 -280 0 0 {name=R5
value=1k}
C {devices/res.sym} 1050 -400 0 0 {name=R3
value=10}
C {devices/res.sym} 1270 -400 0 0 {name=R4
value=10}
C {devices/res.sym} 2920 -280 0 0 {name=R6
value=1k}
C {devices/res.sym} 840 -110 0 0 {name=R7
value=220}
C {devices/res.sym} 1080 -80 0 0 {name=R8
value=220}
C {devices/res.sym} 580 -80 0 0 {name=R9
value=220}
C {devices/res.sym} 700 -60 0 0 {name=R10
value=220}
C {devices/res.sym} 2920 -190 0 0 {name=R11
value=2.2k}
C {devices/res.sym} 1960 -210 0 0 {name=R13
value=47.5}
C {devices/res.sym} 1580 -220 0 0 {name=R15
value=47.5}
C {devices/res.sym} 2060 -250 0 0 {name=R12
value=2.2k}
C {devices/res.sym} 1700 -220 0 0 {name=R17
value=1}
C {devices/res.sym} 1500 -120 0 0 {name=R21
value=1}
C {devices/res.sym} 2000 -130 0 0 {name=R18
value=1}
C {devices/res.sym} 1620 -80 0 0 {name=R22
value=1}
C {devices/res.sym} 2120 -140 0 0 {name=R16
value=47.5}
C {devices/res.sym} 2240 -120 0 0 {name=R14
value=47.5}
C {devices/res.sym} 1740 -100 0 0 {name=R19
value=1}
C {devices/res.sym} 1880 -70 0 0 {name=R23
value=1}
C {devices/res.sym} 2120 -70 0 0 {name=R20
value=1}
C {devices/res.sym} 2000 -40 0 0 {name=R24
value=1}
C {devices/res.sym} 1490 -400 0 0 {name=Ra2
value=4}
C {RPOT.sym} 3040 -300 0 0 {name=XP3
value=200}
C {RPOT.sym} 3250 -300 0 0 {name=XP1
value=5k}
C {RPOT.sym} 3030 -120 0 0 {name=XP2
value=5k}
C {devices/vsource.sym} 110 200 0 0 {name=V3
value=0}
C {devices/nmos4.sym} 110 -150 0 0 {name=MQ5
w=5u
l=0.18u
model=Q5tc}
C {devices/nmos4.sym} 610 -150 0 1 {name=MQ4
w=5u
l=0.18u
model=Q4tc}
C {devices/nmos4.sym} 330 -150 0 1 {name=MQ6
w=5u
l=0.18u
model=Q6tc}
C {devices/res.sym} 450 50 0 0 {name=Rj1
value=1G}
C {devices/res.sym} 710 50 0 0 {name=Rj2
value=1G}
C {devices/res.sym} 210 50 0 0 {name=Rj3
value=1G}
C {devices/res.sym} 590 50 0 0 {name=Rj4
value=1G}
C {devices/res.sym} 1700 -310 0 0 {name=Rc2
value=1.2}
C {devices/res.sym} 2560 -260 0 0 {name=Rc4
value=1.2}
C {devices/res.sym} 2440 -230 0 0 {name=Rc6
value=1.2}
C {devices/res.sym} 2680 -210 0 0 {name=Rc8
value=1.2}
C {devices/res.sym} 1820 -260 0 0 {name=Rc1
value=1}
C {devices/res.sym} 2800 -240 0 0 {name=Rc3
value=1}
C {devices/res.sym} 2180 -220 0 0 {name=Rc5
value=1}
C {devices/res.sym} 2320 -220 0 0 {name=Rc7
value=1}
C {devices/vsource.sym} 240 200 0 0 {name=Vt1
value=40}
C {devices/capa.sym} 1710 -400 0 0 {name=Cc1
value=1}
C {devices/capa.sym} 1930 -400 0 0 {name=Cc3
value=1}
C {devices/capa.sym} 2150 -400 0 0 {name=Cc4
value=1}
C {devices/vsource.sym} 370 200 0 0 {name=V1
value=32}
C {devices/vsource.sym} 500 200 0 0 {name=V2
value=-32}
C {th.sym} 3250 -120 0 0 {name=XTH2}
C {th.sym} 3030 60 0 0 {name=XTH1}
C {devices/nmos4.sym} 390 -150 0 0 {name=MQ3
w=5u
l=0.18u
model=Q3tc}
C {devices/vsource.sym} 110 330 0 0 {name=Vs1
value=0}
C {genrelay.sym} 3250 60 0 0 {name=XS1}
C {devices/capa.sym} 2370 -400 0 0 {name=Cc2
value=1}
C {devices/res.sym} 960 -60 0 0 {name=Ra1
value=4}
T {XP3} 3020 -280 0 0 0.25 0.25 {}
T {XP1} 3230 -280 0 0 0.25 0.25 {}
T {XP2} 3010 -100 0 0 0.25 0.25 {}
T {XTH2} 3230 -100 0 0 0.25 0.25 {}
T {XTH1} 3010 80 0 0 0.25 0.25 {}
T {XS1} 3230 80 0 0 0.25 0.25 {}
N 1700 -250 1700 -130 {lab=+32}
N 1700 -130 1740 -130 {lab=+32}
N 1740 -130 1740 -160 {lab=+32}
N 1740 -160 2000 -160 {lab=+32}
N 2000 -160 2000 -100 {lab=+32}
N 2000 -100 2120 -100 {lab=+32}
N 3280 -320 3280 -300 {lab=+32}
N 3280 -300 3220 -300 {lab=+32}
N 840 -80 840 -50 {lab=Net-_P3-Pad1_}
N 840 -50 1080 -50 {lab=Net-_P3-Pad1_}
N 580 -50 580 -30 {lab=Net-_P3-Pad3_}
N 580 -30 700 -30 {lab=Net-_P3-Pad3_}
N 2920 -310 2920 -140 {lab=Net-_P2-Pad1_}
N 2920 -140 3000 -140 {lab=Net-_P2-Pad1_}
N 2060 -220 2060 -110 {lab=Net-_P2-Pad1_}
N 2060 -110 2120 -110 {lab=Net-_P2-Pad1_}
N 2920 -250 2920 -120 {lab=-32}
N 2920 -120 3000 -120 {lab=-32}
N 3000 -120 3000 -140 {lab=-32}
N 3000 -140 3060 -140 {lab=-32}
N 1500 -90 1500 -50 {lab=-32}
N 1500 -50 1620 -50 {lab=-32}
N 1620 -50 1620 -40 {lab=-32}
N 1620 -40 1880 -40 {lab=-32}
N 1880 -40 1880 -10 {lab=-32}
N 1880 -10 2000 -10 {lab=-32}
N 840 -140 840 -90 {lab=out}
N 840 -90 960 -90 {lab=out}
N 960 -90 960 -110 {lab=out}
N 960 -110 1080 -110 {lab=out}
N 840 -140 840 -90 {lab=out}
N 840 -90 700 -90 {lab=out}
N 700 -90 700 -110 {lab=out}
N 700 -110 580 -110 {lab=out}
N 580 -110 580 -180 {lab=out}
N 580 -180 590 -180 {lab=out}
N 590 -180 410 -180 {lab=out}
N 410 -180 310 -180 {lab=out}
N 310 -180 130 -180 {lab=out}
N 2920 -220 2920 60 {lab=Net-_R11-Pad1_}
N 2920 60 3000 60 {lab=Net-_R11-Pad1_}
N 1500 -150 1500 -110 {lab=Net-_D1a1-Pad2_}
N 1500 -110 1620 -110 {lab=Net-_D1a1-Pad2_}
N 1880 -100 1880 -70 {lab=Net-_D2a1-Pad2_}
N 1880 -70 2000 -70 {lab=Net-_D2a1-Pad2_}
N 130 -150 130 20 {lab=Q5tj}
N 130 20 210 20 {lab=Q5tj}
N 590 -150 710 -150 {lab=Q4tj}
N 710 -150 710 20 {lab=Q4tj}
N 310 -150 310 20 {lab=Q6tj}
N 310 20 590 20 {lab=Q6tj}
N 450 20 450 -150 {lab=Q3tj}
N 450 -150 410 -150 {lab=Q3tj}
N 1700 -340 1700 -430 {lab=Q3hs}
N 1700 -430 1710 -430 {lab=Q3hs}
N 1700 -340 1700 -230 {lab=Q3hs}
N 1700 -230 1820 -230 {lab=Q3hs}
N 2560 -230 2560 -200 {lab=Net-_Rc2-Pad2_}
N 2560 -200 2440 -200 {lab=Net-_Rc2-Pad2_}
N 2560 -230 2560 -180 {lab=Net-_Rc2-Pad2_}
N 2560 -180 2680 -180 {lab=Net-_Rc2-Pad2_}
N 2560 -290 2560 -210 {lab=Q4hs}
N 2560 -210 2800 -210 {lab=Q4hs}
N 2560 -290 2560 -430 {lab=Q4hs}
N 2560 -430 2370 -430 {lab=Q4hs}
C {devices/lab_pin.sym} 830 -430 0 0 {name=l_in sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1050 -280 0 0 {name=l_in sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 110 170 0 0 {name=l_in sig_type=std_logic lab=in}
C {devices/gnd.sym} 830 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1050 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1270 -430 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1490 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3070 -320 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 110 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 450 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 710 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 210 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 590 80 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1710 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1930 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2150 -370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 370 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 230 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 110 360 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3280 40 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 3280 60 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2370 -370 0 0 {name=l_0 lab=GND}
C {devices/lab_pin.sym} 1050 -340 0 0 {name=l_Net-_Q1-Pad2_ sig_type=std_logic lab=Net-_Q1-Pad2_}
C {devices/lab_pin.sym} 2680 -310 0 0 {name=l_+32 sig_type=std_logic lab=+32}
C {devices/lab_pin.sym} 370 170 0 0 {name=l_+32 sig_type=std_logic lab=+32}
C {devices/lab_pin.sym} 2680 -250 0 0 {name=l_Net-_P1-Pad1_ sig_type=std_logic lab=Net-_P1-Pad1_}
C {devices/lab_pin.sym} 2920 -160 0 0 {name=l_Net-_P1-Pad1_ sig_type=std_logic lab=Net-_P1-Pad1_}
C {devices/lab_pin.sym} 1960 -180 0 0 {name=l_Net-_P1-Pad1_ sig_type=std_logic lab=Net-_P1-Pad1_}
C {devices/lab_pin.sym} 2240 -90 0 0 {name=l_Net-_P1-Pad1_ sig_type=std_logic lab=Net-_P1-Pad1_}
C {devices/lab_pin.sym} 3220 -320 0 0 {name=l_Net-_P1-Pad1_ sig_type=std_logic lab=Net-_P1-Pad1_}
C {devices/lab_pin.sym} 1050 -430 0 0 {name=l_Net-_P3-Pad1_ sig_type=std_logic lab=Net-_P3-Pad1_}
C {devices/lab_pin.sym} 3010 -320 0 0 {name=l_Net-_P3-Pad1_ sig_type=std_logic lab=Net-_P3-Pad1_}
C {devices/lab_pin.sym} 1270 -370 0 0 {name=l_Net-_P3-Pad3_ sig_type=std_logic lab=Net-_P3-Pad3_}
C {devices/lab_pin.sym} 3010 -300 0 0 {name=l_Net-_P3-Pad3_ sig_type=std_logic lab=Net-_P3-Pad3_}
C {devices/lab_pin.sym} 1580 -190 0 0 {name=l_Net-_P2-Pad1_ sig_type=std_logic lab=Net-_P2-Pad1_}
C {devices/lab_pin.sym} 500 170 0 0 {name=l_-32 sig_type=std_logic lab=-32}
C {devices/lab_pin.sym} 1960 -240 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 370 -150 0 0 {name=l_Net-_Q3-Pad2_ sig_type=std_logic lab=Net-_Q3-Pad2_}
C {devices/lab_pin.sym} 1580 -250 0 0 {name=l_Net-_Q5-Pad2_ sig_type=std_logic lab=Net-_Q5-Pad2_}
C {devices/lab_pin.sym} 90 -150 0 0 {name=l_Net-_Q5-Pad2_ sig_type=std_logic lab=Net-_Q5-Pad2_}
C {devices/lab_pin.sym} 2060 -280 0 0 {name=l_Net-_R12-Pad1_ sig_type=std_logic lab=Net-_R12-Pad1_}
C {devices/lab_pin.sym} 3220 -120 0 0 {name=l_Net-_R12-Pad1_ sig_type=std_logic lab=Net-_R12-Pad1_}
C {devices/lab_pin.sym} 1700 -190 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 2000 -100 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 3000 40 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 410 -120 0 0 {name=l_Net-_D3a1-Pad1_ sig_type=std_logic lab=Net-_D3a1-Pad1_}
C {devices/lab_pin.sym} 130 -120 0 0 {name=l_Net-_D1a1-Pad2_ sig_type=std_logic lab=Net-_D1a1-Pad2_}
C {devices/lab_pin.sym} 3220 -140 0 0 {name=l_Net-_D1a1-Pad2_ sig_type=std_logic lab=Net-_D1a1-Pad2_}
C {devices/lab_pin.sym} 2120 -170 0 0 {name=l_Net-_Q6-Pad2_ sig_type=std_logic lab=Net-_Q6-Pad2_}
C {devices/lab_pin.sym} 350 -150 0 0 {name=l_Net-_Q6-Pad2_ sig_type=std_logic lab=Net-_Q6-Pad2_}
C {devices/lab_pin.sym} 2240 -150 0 0 {name=l_Net-_Q4-Pad2_ sig_type=std_logic lab=Net-_Q4-Pad2_}
C {devices/lab_pin.sym} 630 -150 0 0 {name=l_Net-_Q4-Pad2_ sig_type=std_logic lab=Net-_Q4-Pad2_}
C {devices/lab_pin.sym} 1740 -70 0 0 {name=l_Net-_D4a1-Pad1_ sig_type=std_logic lab=Net-_D4a1-Pad1_}
C {devices/lab_pin.sym} 2120 -40 0 0 {name=l_Net-_D4a1-Pad1_ sig_type=std_logic lab=Net-_D4a1-Pad1_}
C {devices/lab_pin.sym} 590 -120 0 0 {name=l_Net-_D4a1-Pad1_ sig_type=std_logic lab=Net-_D4a1-Pad1_}
C {devices/lab_pin.sym} 310 -120 0 0 {name=l_Net-_D2a1-Pad2_ sig_type=std_logic lab=Net-_D2a1-Pad2_}
C {devices/lab_pin.sym} 1490 -430 0 0 {name=l_Net-_Ra1-Pad2_ sig_type=std_logic lab=Net-_Ra1-Pad2_}
C {devices/lab_pin.sym} 3220 40 0 0 {name=l_Net-_Ra1-Pad2_ sig_type=std_logic lab=Net-_Ra1-Pad2_}
C {devices/lab_pin.sym} 960 -30 0 0 {name=l_Net-_Ra1-Pad2_ sig_type=std_logic lab=Net-_Ra1-Pad2_}
C {devices/lab_pin.sym} 3060 40 0 0 {name=l_Q3hs sig_type=std_logic lab=Q3hs}
C {devices/lab_pin.sym} 1700 -280 0 0 {name=l_Net-_Rc2-Pad2_ sig_type=std_logic lab=Net-_Rc2-Pad2_}
C {devices/lab_pin.sym} 240 170 0 0 {name=l_Net-_Rc2-Pad2_ sig_type=std_logic lab=Net-_Rc2-Pad2_}
C {devices/lab_pin.sym} 2440 -260 0 0 {name=l_Q5hs sig_type=std_logic lab=Q5hs}
C {devices/lab_pin.sym} 2180 -190 0 0 {name=l_Q5hs sig_type=std_logic lab=Q5hs}
C {devices/lab_pin.sym} 1930 -430 0 0 {name=l_Q5hs sig_type=std_logic lab=Q5hs}
C {devices/lab_pin.sym} 3280 -140 0 0 {name=l_Q5hs sig_type=std_logic lab=Q5hs}
C {devices/lab_pin.sym} 2680 -240 0 0 {name=l_Q6hs sig_type=std_logic lab=Q6hs}
C {devices/lab_pin.sym} 2320 -190 0 0 {name=l_Q6hs sig_type=std_logic lab=Q6hs}
C {devices/lab_pin.sym} 2150 -430 0 0 {name=l_Q6hs sig_type=std_logic lab=Q6hs}
C {devices/lab_pin.sym} 1820 -290 0 0 {name=l_Q3tc sig_type=std_logic lab=Q3tc}
C {devices/lab_pin.sym} 2800 -270 0 0 {name=l_Q4tc sig_type=std_logic lab=Q4tc}
C {devices/lab_pin.sym} 2180 -250 0 0 {name=l_Q5tc sig_type=std_logic lab=Q5tc}
C {devices/lab_pin.sym} 2320 -250 0 0 {name=l_Q6tc sig_type=std_logic lab=Q6tc}
C {devices/lab_pin.sym} 110 300 0 0 {name=l_Net-_S1-Pad3_ sig_type=std_logic lab=Net-_S1-Pad3_}
C {devices/lab_pin.sym} 3220 60 0 0 {name=l_Net-_S1-Pad3_ sig_type=std_logic lab=Net-_S1-Pad3_}
