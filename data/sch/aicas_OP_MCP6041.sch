v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 440 -130 0 0 {name=V1
value=2.2}
C {devices/vsource.sym} 570 -130 0 0 {name=V2
value=-2.2}
C {devices/vsource.sym} 700 -130 0 0 {name=Vin
value=0}
C {devices/res.sym} 440 -280 0 0 {name=Rin
value=1000k}
C {devices/res.sym} 570 -280 0 0 {name=Rfb
value=10000k}
C {MCP6041.sym} 920 -300 0 0 {name=Xop}
T {Xop} 900 -280 0 0 0.25 0.25 {}
N 700 -160 700 -310 {lab=in}
N 700 -310 440 -310 {lab=in}
N 440 -250 570 -250 {lab=opin}
N 570 -250 570 -320 {lab=opin}
N 570 -320 950 -320 {lab=opin}
N 570 -310 890 -310 {lab=opout}
N 890 -310 890 -280 {lab=opout}
C {devices/vdd.sym} 440 -160 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 890 -300 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 440 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 700 -100 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 890 -320 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 570 -160 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 950 -300 0 0 {name=l_vss lab=VSS}
