v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/capa.sym} 1100 -280 0 0 {name=check}
C {devices/isource.sym} 220 0 0 0 {name=ix1
value=dc=5uA}
C {devices/nmos4.sym} 220 -150 0 0 {name=mx1
w=5u
l=0.18u
model=nmos0v7}
C {devices/isource.sym} 350 0 0 0 {name=ix2
value=dc=5uA}
C {devices/nmos4.sym} 440 -150 0 0 {name=mx2
w=5u
l=0.18u
model=nmos_tst}
C {devices/isource.sym} 480 0 0 0 {name=ix3
value=dc=6uA}
C {devices/nmos4.sym} 660 -150 0 0 {name=mx3
w=5u
l=0.18u
model=nmos0v9}
C {devices/isource.sym} 610 0 0 0 {name=ix4
value=dc=6uA}
C {devices/nmos4.sym} 880 -150 0 0 {name=mx4
w=5u
l=0.18u
model=nmos_tst}
N 220 30 220 -150 {lab=1}
N 220 -150 200 -150 {lab=1}
N 200 -150 200 -180 {lab=1}
N 200 -180 240 -180 {lab=1}
N 350 30 350 -150 {lab=2}
N 350 -150 420 -150 {lab=2}
N 420 -150 420 -180 {lab=2}
N 420 -180 460 -180 {lab=2}
N 480 30 480 -150 {lab=3}
N 480 -150 640 -150 {lab=3}
N 640 -150 640 -180 {lab=3}
N 640 -180 680 -180 {lab=3}
N 610 30 610 -150 {lab=4}
N 610 -150 860 -150 {lab=4}
N 860 -150 860 -180 {lab=4}
N 860 -180 900 -180 {lab=4}
C {devices/lab_pin.sym} 1100 -310 0 0 {name=l_model sig_type=std_logic lab=model}
C {devices/lab_pin.sym} 1100 -250 0 0 {name=l_binning sig_type=std_logic lab=binning}
C {devices/gnd.sym} 220 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 240 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 350 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 -120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 460 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 480 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 680 -120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 680 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 610 -30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 -120 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 900 -150 0 0 {name=l_0 lab=GND}
