v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/res.sym} 440 -280 0 0 {name=Rin
value=1000k}
C {devices/res.sym} 570 -280 0 0 {name=Rfb
value=10000k}
C {MCP6041.sym} 790 -300 0 0 {name=Xop}
T {Xop} 770 -280 0 0 0.25 0.25 {}
N 440 -250 570 -250 {lab=opin}
N 570 -250 570 -320 {lab=opin}
N 570 -320 820 -320 {lab=opin}
N 570 -310 570 -280 {lab=opout}
N 570 -280 760 -280 {lab=opout}
C {devices/vdd.sym} 760 -300 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 760 -320 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 820 -300 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 440 -310 0 0 {name=l_in sig_type=std_logic lab=in}
