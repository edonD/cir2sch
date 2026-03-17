v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 980 -280 0 0 {name=Complimentary
value=CMOS}
C {devices/vsource.sym} 110 200 0 0 {name=vdd
value=1.2}
C {devices/res.sym} 570 -550 0 0 {name=rdd
value=70m}
C {devices/res.sym} 240 50 0 0 {name=rgnd
value=70m}
C {devices/nmos4.sym} 610 -150 0 1 {name=mpsx
w=5u
l=0.18u
model=pch}
C {devices/nmos4.sym} 110 -150 0 0 {name=mnsx
w=5u
l=0.18u
model=nch}
C {devices/nmos4.sym} 330 -150 0 1 {name=mpdx
w=5u
l=0.18u
model=pch}
C {devices/nmos4.sym} 390 -150 0 0 {name=mndx
w=5u
l=0.18u
model=nch}
C {devices/res.sym} 620 -60 0 0 {name=rs
value=7.789}
C {devices/capa.sym} 760 -180 0 0 {name=cs
value=443f}
C {devices/capa.sym} 860 -60 0 0 {name=coxs
value=2.178p}
C {devices/capa.sym} 740 -40 0 0 {name=coxd
value=2.178p}
C {devices/res.sym} 380 -10 0 0 {name=rsis
value=308}
C {devices/res.sym} 500 0 0 0 {name=rsid
value=308}
C {devices/capa.sym} 620 20 0 0 {name=csis
value=51f}
C {devices/capa.sym} 760 30 0 0 {name=csid
value=51f}
C {devices/capa.sym} 1000 -100 0 0 {name=cp
value=3.4p}
N 570 -520 570 -150 {lab=vdd_ana}
N 570 -150 590 -150 {lab=vdd_ana}
N 590 -150 590 -120 {lab=vdd_ana}
N 590 -120 310 -120 {lab=vdd_ana}
N 310 -120 310 -150 {lab=vdd_ana}
N 240 80 240 20 {lab=gnd_ana}
N 240 20 380 20 {lab=gnd_ana}
N 380 20 380 30 {lab=gnd_ana}
N 380 30 500 30 {lab=gnd_ana}
N 500 30 500 50 {lab=gnd_ana}
N 500 50 620 50 {lab=gnd_ana}
N 620 50 620 60 {lab=gnd_ana}
N 620 60 760 60 {lab=gnd_ana}
N 380 20 380 -120 {lab=gnd_ana}
N 380 -120 410 -120 {lab=gnd_ana}
N 410 -120 410 -150 {lab=gnd_ana}
N 410 -120 130 -120 {lab=gnd_ana}
N 130 -120 130 -150 {lab=gnd_ana}
N 590 -180 590 -210 {lab=v_plus}
N 590 -210 760 -210 {lab=v_plus}
N 760 -210 760 -90 {lab=v_plus}
N 760 -90 860 -90 {lab=v_plus}
N 860 -90 860 -130 {lab=v_plus}
N 860 -130 1000 -130 {lab=v_plus}
N 590 -180 590 -150 {lab=v_plus}
N 590 -150 370 -150 {lab=v_plus}
N 370 -150 350 -150 {lab=v_plus}
N 350 -150 350 -180 {lab=v_plus}
N 350 -180 130 -180 {lab=v_plus}
N 630 -150 630 -30 {lab=v_minus}
N 630 -30 620 -30 {lab=v_minus}
N 630 -150 760 -150 {lab=v_minus}
N 760 -150 760 -70 {lab=v_minus}
N 760 -70 740 -70 {lab=v_minus}
N 630 -150 410 -150 {lab=v_minus}
N 410 -150 410 -180 {lab=v_minus}
N 410 -180 310 -180 {lab=v_minus}
N 310 -180 310 -150 {lab=v_minus}
N 310 -150 90 -150 {lab=v_minus}
N 740 -70 1000 -70 {lab=v_minus}
N 860 -30 860 -10 {lab=is}
N 860 -10 620 -10 {lab=is}
N 620 -10 620 -40 {lab=is}
N 620 -40 380 -40 {lab=is}
N 740 -10 740 0 {lab=id}
N 740 0 760 0 {lab=id}
N 740 -10 740 -30 {lab=id}
N 740 -30 500 -30 {lab=id}
C {devices/lab_pin.sym} 980 -310 0 0 {name=l_Cross sig_type=std_logic lab=Cross}
C {devices/lab_pin.sym} 980 -250 0 0 {name=l_Quad sig_type=std_logic lab=Quad}
C {devices/vdd.sym} 110 170 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 570 -580 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 110 230 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 240 20 0 0 {name=l_gnd lab=GND}
C {devices/lab_pin.sym} 620 -90 0 0 {name=l_i1 sig_type=std_logic lab=i1}
