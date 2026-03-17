v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 830 -280 0 0 {name=Complimentary
value=CMOS}
C {devices/vsource.sym} 110 200 0 0 {name=vdd
value=1.2}
C {devices/res.sym} 570 -550 0 0 {name=rdd
value=70m}
C {devices/res.sym} 350 50 0 0 {name=rgnd
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
C {devices/res.sym} 360 -60 0 0 {name=rs
value=7.789}
C {devices/capa.sym} 400 -150 0 0 {name=cs
value=443f}
C {devices/capa.sym} 740 -60 0 0 {name=coxs
value=2.178p}
C {devices/capa.sym} 620 -50 0 0 {name=coxd
value=2.178p}
C {devices/res.sym} 860 -10 0 0 {name=rsis
value=308}
C {devices/res.sym} 480 0 0 0 {name=rsid
value=308}
C {devices/capa.sym} 720 20 0 0 {name=csis
value=51f}
C {devices/capa.sym} 600 30 0 0 {name=csid
value=51f}
C {devices/capa.sym} 540 -150 0 0 {name=cp
value=3.4p}
N 570 -520 570 -150 {lab=vdd_ana}
N 570 -150 590 -150 {lab=vdd_ana}
N 590 -150 590 -120 {lab=vdd_ana}
N 590 -120 310 -120 {lab=vdd_ana}
N 310 -120 310 -150 {lab=vdd_ana}
N 350 80 350 30 {lab=gnd_ana}
N 350 30 480 30 {lab=gnd_ana}
N 480 30 480 60 {lab=gnd_ana}
N 480 60 600 60 {lab=gnd_ana}
N 600 60 600 50 {lab=gnd_ana}
N 600 50 720 50 {lab=gnd_ana}
N 720 50 720 20 {lab=gnd_ana}
N 720 20 860 20 {lab=gnd_ana}
N 480 30 480 -120 {lab=gnd_ana}
N 480 -120 410 -120 {lab=gnd_ana}
N 410 -120 410 -150 {lab=gnd_ana}
N 410 -120 130 -120 {lab=gnd_ana}
N 130 -120 130 -150 {lab=gnd_ana}
N 590 -180 540 -180 {lab=v_plus}
N 540 -180 400 -180 {lab=v_plus}
N 400 -180 400 -150 {lab=v_plus}
N 400 -150 370 -150 {lab=v_plus}
N 370 -150 350 -150 {lab=v_plus}
N 590 -180 590 -90 {lab=v_plus}
N 590 -90 740 -90 {lab=v_plus}
N 350 -150 350 -180 {lab=v_plus}
N 350 -180 130 -180 {lab=v_plus}
N 630 -150 630 -80 {lab=v_minus}
N 630 -80 620 -80 {lab=v_minus}
N 630 -150 630 -120 {lab=v_minus}
N 630 -120 540 -120 {lab=v_minus}
N 540 -120 400 -120 {lab=v_minus}
N 400 -120 400 -180 {lab=v_minus}
N 400 -180 410 -180 {lab=v_minus}
N 410 -180 310 -180 {lab=v_minus}
N 400 -120 400 -30 {lab=v_minus}
N 400 -30 360 -30 {lab=v_minus}
N 310 -180 310 -150 {lab=v_minus}
N 310 -150 90 -150 {lab=v_minus}
N 740 -30 740 -10 {lab=is}
N 740 -10 720 -10 {lab=is}
N 740 -30 740 -40 {lab=is}
N 740 -40 860 -40 {lab=is}
N 620 -20 620 0 {lab=id}
N 620 0 600 0 {lab=id}
N 620 -20 620 -30 {lab=id}
N 620 -30 480 -30 {lab=id}
C {devices/lab_pin.sym} 830 -310 0 0 {name=l_Cross sig_type=std_logic lab=Cross}
C {devices/lab_pin.sym} 830 -250 0 0 {name=l_Quad sig_type=std_logic lab=Quad}
C {devices/vdd.sym} 110 170 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 570 -580 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 110 230 0 0 {name=l_gnd lab=GND}
C {devices/gnd.sym} 350 20 0 0 {name=l_gnd lab=GND}
C {devices/lab_pin.sym} 360 -90 0 0 {name=l_i1 sig_type=std_logic lab=i1}
