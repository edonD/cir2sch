v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CIM Array -- 64x64 Compute-in-Memory Array} 450 -3900 0 0 0.5 0.5 {}
T {8T SRAM: 6T storage + 2T decoupled read port} 450 -3870 0 0 0.35 0.35 {}
T {Ports: bl blb wl wwl q qb vdd vss} 450 -3845 0 0 0.35 0.35 {}
T {Ports: bl pre vdd vss} 450 -3820 0 0 0.35 0.35 {}
C {devices/vsource.sym} 500 1600 0 0 {name=Vdd
value={supply}}
C {devices/vsource.sym} 660 1600 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 820 1600 0 0 {name=Vpre
value=PWL(0}
C {devices/noconn.sym} 500 -400 0 0 {name=Xpre0}
C {devices/noconn.sym} 760 -400 0 0 {name=Xpre1}
C {devices/noconn.sym} 1020 -400 0 0 {name=Xpre2}
C {devices/noconn.sym} 1280 -400 0 0 {name=Xpre3}
C {devices/noconn.sym} 1540 -400 0 0 {name=Xpre4}
C {devices/noconn.sym} 1800 -400 0 0 {name=Xpre5}
C {devices/noconn.sym} 2060 -400 0 0 {name=Xpre6}
C {devices/noconn.sym} 2320 -400 0 0 {name=Xpre7}
C {devices/capa.sym} 500 -600 0 0 {name=Cbl0
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 760 -600 0 0 {name=Cbl1
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1020 -600 0 0 {name=Cbl2
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1280 -600 0 0 {name=Cbl3
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1540 -600 0 0 {name=Cbl4
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1800 -600 0 0 {name=Cbl5
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 2060 -600 0 0 {name=Cbl6
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 2320 -600 0 0 {name=Cbl7
value={Cbl_extra_ff*1e-15}}
C {devices/vsource.sym} 500 -800 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 500 -1000 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 500 -1200 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 500 -1400 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 500 -1600 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 500 -1800 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 500 -2000 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 500 -2200 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 500 -2400 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 500 -2600 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 500 -2800 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 500 -3000 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 500 -3200 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 500 -3400 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 500 -3600 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 500 -3800 0 0 {name=Vwwl7
value=0}
C {devices/noconn.sym} 500 -200 0 0 {name=Xcell_r0_c0}
C {devices/noconn.sym} 760 -200 0 0 {name=Xcell_r0_c1}
C {devices/noconn.sym} 1020 -200 0 0 {name=Xcell_r0_c2}
C {devices/noconn.sym} 1280 -200 0 0 {name=Xcell_r0_c3}
C {devices/noconn.sym} 1540 -200 0 0 {name=Xcell_r0_c4}
C {devices/noconn.sym} 1800 -200 0 0 {name=Xcell_r0_c5}
C {devices/noconn.sym} 2060 -200 0 0 {name=Xcell_r0_c6}
C {devices/noconn.sym} 2320 -200 0 0 {name=Xcell_r0_c7}
C {devices/noconn.sym} 500 0 0 0 {name=Xcell_r1_c0}
C {devices/noconn.sym} 760 0 0 0 {name=Xcell_r1_c1}
C {devices/noconn.sym} 1020 0 0 0 {name=Xcell_r1_c2}
C {devices/noconn.sym} 1280 0 0 0 {name=Xcell_r1_c3}
C {devices/noconn.sym} 1540 0 0 0 {name=Xcell_r1_c4}
C {devices/noconn.sym} 1800 0 0 0 {name=Xcell_r1_c5}
C {devices/noconn.sym} 2060 0 0 0 {name=Xcell_r1_c6}
C {devices/noconn.sym} 2320 0 0 0 {name=Xcell_r1_c7}
C {devices/noconn.sym} 500 200 0 0 {name=Xcell_r2_c0}
C {devices/noconn.sym} 760 200 0 0 {name=Xcell_r2_c1}
C {devices/noconn.sym} 1020 200 0 0 {name=Xcell_r2_c2}
C {devices/noconn.sym} 1280 200 0 0 {name=Xcell_r2_c3}
C {devices/noconn.sym} 1540 200 0 0 {name=Xcell_r2_c4}
C {devices/noconn.sym} 1800 200 0 0 {name=Xcell_r2_c5}
C {devices/noconn.sym} 2060 200 0 0 {name=Xcell_r2_c6}
C {devices/noconn.sym} 2320 200 0 0 {name=Xcell_r2_c7}
C {devices/noconn.sym} 500 400 0 0 {name=Xcell_r3_c0}
C {devices/noconn.sym} 760 400 0 0 {name=Xcell_r3_c1}
C {devices/noconn.sym} 1020 400 0 0 {name=Xcell_r3_c2}
C {devices/noconn.sym} 1280 400 0 0 {name=Xcell_r3_c3}
C {devices/noconn.sym} 1540 400 0 0 {name=Xcell_r3_c4}
C {devices/noconn.sym} 1800 400 0 0 {name=Xcell_r3_c5}
C {devices/noconn.sym} 2060 400 0 0 {name=Xcell_r3_c6}
C {devices/noconn.sym} 2320 400 0 0 {name=Xcell_r3_c7}
C {devices/noconn.sym} 500 600 0 0 {name=Xcell_r4_c0}
C {devices/noconn.sym} 760 600 0 0 {name=Xcell_r4_c1}
C {devices/noconn.sym} 1020 600 0 0 {name=Xcell_r4_c2}
C {devices/noconn.sym} 1280 600 0 0 {name=Xcell_r4_c3}
C {devices/noconn.sym} 1540 600 0 0 {name=Xcell_r4_c4}
C {devices/noconn.sym} 1800 600 0 0 {name=Xcell_r4_c5}
C {devices/noconn.sym} 2060 600 0 0 {name=Xcell_r4_c6}
C {devices/noconn.sym} 2320 600 0 0 {name=Xcell_r4_c7}
C {devices/noconn.sym} 500 800 0 0 {name=Xcell_r5_c0}
C {devices/noconn.sym} 760 800 0 0 {name=Xcell_r5_c1}
C {devices/noconn.sym} 1020 800 0 0 {name=Xcell_r5_c2}
C {devices/noconn.sym} 1280 800 0 0 {name=Xcell_r5_c3}
C {devices/noconn.sym} 1540 800 0 0 {name=Xcell_r5_c4}
C {devices/noconn.sym} 1800 800 0 0 {name=Xcell_r5_c5}
C {devices/noconn.sym} 2060 800 0 0 {name=Xcell_r5_c6}
C {devices/noconn.sym} 2320 800 0 0 {name=Xcell_r5_c7}
C {devices/noconn.sym} 500 1000 0 0 {name=Xcell_r6_c0}
C {devices/noconn.sym} 760 1000 0 0 {name=Xcell_r6_c1}
C {devices/noconn.sym} 1020 1000 0 0 {name=Xcell_r6_c2}
C {devices/noconn.sym} 1280 1000 0 0 {name=Xcell_r6_c3}
C {devices/noconn.sym} 1540 1000 0 0 {name=Xcell_r6_c4}
C {devices/noconn.sym} 1800 1000 0 0 {name=Xcell_r6_c5}
C {devices/noconn.sym} 2060 1000 0 0 {name=Xcell_r6_c6}
C {devices/noconn.sym} 2320 1000 0 0 {name=Xcell_r6_c7}
C {devices/noconn.sym} 500 1200 0 0 {name=Xcell_r7_c0}
C {devices/noconn.sym} 760 1200 0 0 {name=Xcell_r7_c1}
C {devices/noconn.sym} 1020 1200 0 0 {name=Xcell_r7_c2}
C {devices/noconn.sym} 1280 1200 0 0 {name=Xcell_r7_c3}
C {devices/noconn.sym} 1540 1200 0 0 {name=Xcell_r7_c4}
C {devices/noconn.sym} 1800 1200 0 0 {name=Xcell_r7_c5}
C {devices/noconn.sym} 2060 1200 0 0 {name=Xcell_r7_c6}
C {devices/noconn.sym} 2320 1200 0 0 {name=Xcell_r7_c7}
C {devices/vdd.sym} 500 1570 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 -400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 -200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 400 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 800 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 1000 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 500 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 760 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1020 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1540 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1800 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2060 1200 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 2320 1200 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 500 1630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 1630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 820 1630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 760 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1020 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1280 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1540 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1800 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2060 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 2320 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -770 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -970 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -1170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -1370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -1570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -1770 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -1970 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -2170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -2370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -2570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -2770 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -2970 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -3170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -3370 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -3570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 500 -3770 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 660 1570 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 -400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 -200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 400 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 800 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 1000 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 500 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 760 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1020 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1540 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1800 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2060 1200 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 2320 1200 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 820 1570 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 500 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 760 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1020 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1280 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1540 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1800 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 2060 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 2320 -400 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 500 -400 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 -630 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 760 -400 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 -630 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 1020 -400 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 -630 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 1280 -400 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 -630 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 1540 -400 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 -630 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1800 -400 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 -630 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 2060 -400 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 -630 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 2320 -400 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 -630 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 500 -830 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 500 -1030 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 500 -1230 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 500 -1430 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 500 -1630 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 500 -1830 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 500 -2030 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 500 -2230 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 500 -2430 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 500 -2630 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 500 -2830 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 500 -3030 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 500 -3230 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 500 -3430 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 500 -3630 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 500 -3830 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_q_r0c0 sig_type=std_logic lab=q_r0c0}
C {devices/lab_pin.sym} 500 -200 0 0 {name=l_qb_r0c0 sig_type=std_logic lab=qb_r0c0}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_q_r0c1 sig_type=std_logic lab=q_r0c1}
C {devices/lab_pin.sym} 760 -200 0 0 {name=l_qb_r0c1 sig_type=std_logic lab=qb_r0c1}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_q_r0c2 sig_type=std_logic lab=q_r0c2}
C {devices/lab_pin.sym} 1020 -200 0 0 {name=l_qb_r0c2 sig_type=std_logic lab=qb_r0c2}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_q_r0c3 sig_type=std_logic lab=q_r0c3}
C {devices/lab_pin.sym} 1280 -200 0 0 {name=l_qb_r0c3 sig_type=std_logic lab=qb_r0c3}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_q_r0c4 sig_type=std_logic lab=q_r0c4}
C {devices/lab_pin.sym} 1540 -200 0 0 {name=l_qb_r0c4 sig_type=std_logic lab=qb_r0c4}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_q_r0c5 sig_type=std_logic lab=q_r0c5}
C {devices/lab_pin.sym} 1800 -200 0 0 {name=l_qb_r0c5 sig_type=std_logic lab=qb_r0c5}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_q_r0c6 sig_type=std_logic lab=q_r0c6}
C {devices/lab_pin.sym} 2060 -200 0 0 {name=l_qb_r0c6 sig_type=std_logic lab=qb_r0c6}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_q_r0c7 sig_type=std_logic lab=q_r0c7}
C {devices/lab_pin.sym} 2320 -200 0 0 {name=l_qb_r0c7 sig_type=std_logic lab=qb_r0c7}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_q_r1c0 sig_type=std_logic lab=q_r1c0}
C {devices/lab_pin.sym} 500 0 0 0 {name=l_qb_r1c0 sig_type=std_logic lab=qb_r1c0}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_q_r1c1 sig_type=std_logic lab=q_r1c1}
C {devices/lab_pin.sym} 760 0 0 0 {name=l_qb_r1c1 sig_type=std_logic lab=qb_r1c1}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_q_r1c2 sig_type=std_logic lab=q_r1c2}
C {devices/lab_pin.sym} 1020 0 0 0 {name=l_qb_r1c2 sig_type=std_logic lab=qb_r1c2}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_q_r1c3 sig_type=std_logic lab=q_r1c3}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_qb_r1c3 sig_type=std_logic lab=qb_r1c3}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_q_r1c4 sig_type=std_logic lab=q_r1c4}
C {devices/lab_pin.sym} 1540 0 0 0 {name=l_qb_r1c4 sig_type=std_logic lab=qb_r1c4}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_q_r1c5 sig_type=std_logic lab=q_r1c5}
C {devices/lab_pin.sym} 1800 0 0 0 {name=l_qb_r1c5 sig_type=std_logic lab=qb_r1c5}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_q_r1c6 sig_type=std_logic lab=q_r1c6}
C {devices/lab_pin.sym} 2060 0 0 0 {name=l_qb_r1c6 sig_type=std_logic lab=qb_r1c6}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_q_r1c7 sig_type=std_logic lab=q_r1c7}
C {devices/lab_pin.sym} 2320 0 0 0 {name=l_qb_r1c7 sig_type=std_logic lab=qb_r1c7}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_q_r2c0 sig_type=std_logic lab=q_r2c0}
C {devices/lab_pin.sym} 500 200 0 0 {name=l_qb_r2c0 sig_type=std_logic lab=qb_r2c0}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_q_r2c1 sig_type=std_logic lab=q_r2c1}
C {devices/lab_pin.sym} 760 200 0 0 {name=l_qb_r2c1 sig_type=std_logic lab=qb_r2c1}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_q_r2c2 sig_type=std_logic lab=q_r2c2}
C {devices/lab_pin.sym} 1020 200 0 0 {name=l_qb_r2c2 sig_type=std_logic lab=qb_r2c2}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_q_r2c3 sig_type=std_logic lab=q_r2c3}
C {devices/lab_pin.sym} 1280 200 0 0 {name=l_qb_r2c3 sig_type=std_logic lab=qb_r2c3}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_q_r2c4 sig_type=std_logic lab=q_r2c4}
C {devices/lab_pin.sym} 1540 200 0 0 {name=l_qb_r2c4 sig_type=std_logic lab=qb_r2c4}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_q_r2c5 sig_type=std_logic lab=q_r2c5}
C {devices/lab_pin.sym} 1800 200 0 0 {name=l_qb_r2c5 sig_type=std_logic lab=qb_r2c5}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_q_r2c6 sig_type=std_logic lab=q_r2c6}
C {devices/lab_pin.sym} 2060 200 0 0 {name=l_qb_r2c6 sig_type=std_logic lab=qb_r2c6}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_q_r2c7 sig_type=std_logic lab=q_r2c7}
C {devices/lab_pin.sym} 2320 200 0 0 {name=l_qb_r2c7 sig_type=std_logic lab=qb_r2c7}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_q_r3c0 sig_type=std_logic lab=q_r3c0}
C {devices/lab_pin.sym} 500 400 0 0 {name=l_qb_r3c0 sig_type=std_logic lab=qb_r3c0}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_q_r3c1 sig_type=std_logic lab=q_r3c1}
C {devices/lab_pin.sym} 760 400 0 0 {name=l_qb_r3c1 sig_type=std_logic lab=qb_r3c1}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_q_r3c2 sig_type=std_logic lab=q_r3c2}
C {devices/lab_pin.sym} 1020 400 0 0 {name=l_qb_r3c2 sig_type=std_logic lab=qb_r3c2}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_q_r3c3 sig_type=std_logic lab=q_r3c3}
C {devices/lab_pin.sym} 1280 400 0 0 {name=l_qb_r3c3 sig_type=std_logic lab=qb_r3c3}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_q_r3c4 sig_type=std_logic lab=q_r3c4}
C {devices/lab_pin.sym} 1540 400 0 0 {name=l_qb_r3c4 sig_type=std_logic lab=qb_r3c4}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_q_r3c5 sig_type=std_logic lab=q_r3c5}
C {devices/lab_pin.sym} 1800 400 0 0 {name=l_qb_r3c5 sig_type=std_logic lab=qb_r3c5}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_q_r3c6 sig_type=std_logic lab=q_r3c6}
C {devices/lab_pin.sym} 2060 400 0 0 {name=l_qb_r3c6 sig_type=std_logic lab=qb_r3c6}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_q_r3c7 sig_type=std_logic lab=q_r3c7}
C {devices/lab_pin.sym} 2320 400 0 0 {name=l_qb_r3c7 sig_type=std_logic lab=qb_r3c7}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_q_r4c0 sig_type=std_logic lab=q_r4c0}
C {devices/lab_pin.sym} 500 600 0 0 {name=l_qb_r4c0 sig_type=std_logic lab=qb_r4c0}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_q_r4c1 sig_type=std_logic lab=q_r4c1}
C {devices/lab_pin.sym} 760 600 0 0 {name=l_qb_r4c1 sig_type=std_logic lab=qb_r4c1}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_q_r4c2 sig_type=std_logic lab=q_r4c2}
C {devices/lab_pin.sym} 1020 600 0 0 {name=l_qb_r4c2 sig_type=std_logic lab=qb_r4c2}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_q_r4c3 sig_type=std_logic lab=q_r4c3}
C {devices/lab_pin.sym} 1280 600 0 0 {name=l_qb_r4c3 sig_type=std_logic lab=qb_r4c3}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_q_r4c4 sig_type=std_logic lab=q_r4c4}
C {devices/lab_pin.sym} 1540 600 0 0 {name=l_qb_r4c4 sig_type=std_logic lab=qb_r4c4}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_q_r4c5 sig_type=std_logic lab=q_r4c5}
C {devices/lab_pin.sym} 1800 600 0 0 {name=l_qb_r4c5 sig_type=std_logic lab=qb_r4c5}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_q_r4c6 sig_type=std_logic lab=q_r4c6}
C {devices/lab_pin.sym} 2060 600 0 0 {name=l_qb_r4c6 sig_type=std_logic lab=qb_r4c6}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_q_r4c7 sig_type=std_logic lab=q_r4c7}
C {devices/lab_pin.sym} 2320 600 0 0 {name=l_qb_r4c7 sig_type=std_logic lab=qb_r4c7}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_q_r5c0 sig_type=std_logic lab=q_r5c0}
C {devices/lab_pin.sym} 500 800 0 0 {name=l_qb_r5c0 sig_type=std_logic lab=qb_r5c0}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_q_r5c1 sig_type=std_logic lab=q_r5c1}
C {devices/lab_pin.sym} 760 800 0 0 {name=l_qb_r5c1 sig_type=std_logic lab=qb_r5c1}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_q_r5c2 sig_type=std_logic lab=q_r5c2}
C {devices/lab_pin.sym} 1020 800 0 0 {name=l_qb_r5c2 sig_type=std_logic lab=qb_r5c2}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_q_r5c3 sig_type=std_logic lab=q_r5c3}
C {devices/lab_pin.sym} 1280 800 0 0 {name=l_qb_r5c3 sig_type=std_logic lab=qb_r5c3}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_q_r5c4 sig_type=std_logic lab=q_r5c4}
C {devices/lab_pin.sym} 1540 800 0 0 {name=l_qb_r5c4 sig_type=std_logic lab=qb_r5c4}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_q_r5c5 sig_type=std_logic lab=q_r5c5}
C {devices/lab_pin.sym} 1800 800 0 0 {name=l_qb_r5c5 sig_type=std_logic lab=qb_r5c5}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_q_r5c6 sig_type=std_logic lab=q_r5c6}
C {devices/lab_pin.sym} 2060 800 0 0 {name=l_qb_r5c6 sig_type=std_logic lab=qb_r5c6}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_q_r5c7 sig_type=std_logic lab=q_r5c7}
C {devices/lab_pin.sym} 2320 800 0 0 {name=l_qb_r5c7 sig_type=std_logic lab=qb_r5c7}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_q_r6c0 sig_type=std_logic lab=q_r6c0}
C {devices/lab_pin.sym} 500 1000 0 0 {name=l_qb_r6c0 sig_type=std_logic lab=qb_r6c0}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_q_r6c1 sig_type=std_logic lab=q_r6c1}
C {devices/lab_pin.sym} 760 1000 0 0 {name=l_qb_r6c1 sig_type=std_logic lab=qb_r6c1}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_q_r6c2 sig_type=std_logic lab=q_r6c2}
C {devices/lab_pin.sym} 1020 1000 0 0 {name=l_qb_r6c2 sig_type=std_logic lab=qb_r6c2}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_q_r6c3 sig_type=std_logic lab=q_r6c3}
C {devices/lab_pin.sym} 1280 1000 0 0 {name=l_qb_r6c3 sig_type=std_logic lab=qb_r6c3}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_q_r6c4 sig_type=std_logic lab=q_r6c4}
C {devices/lab_pin.sym} 1540 1000 0 0 {name=l_qb_r6c4 sig_type=std_logic lab=qb_r6c4}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_q_r6c5 sig_type=std_logic lab=q_r6c5}
C {devices/lab_pin.sym} 1800 1000 0 0 {name=l_qb_r6c5 sig_type=std_logic lab=qb_r6c5}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_q_r6c6 sig_type=std_logic lab=q_r6c6}
C {devices/lab_pin.sym} 2060 1000 0 0 {name=l_qb_r6c6 sig_type=std_logic lab=qb_r6c6}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_q_r6c7 sig_type=std_logic lab=q_r6c7}
C {devices/lab_pin.sym} 2320 1000 0 0 {name=l_qb_r6c7 sig_type=std_logic lab=qb_r6c7}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_q_r7c0 sig_type=std_logic lab=q_r7c0}
C {devices/lab_pin.sym} 500 1200 0 0 {name=l_qb_r7c0 sig_type=std_logic lab=qb_r7c0}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_q_r7c1 sig_type=std_logic lab=q_r7c1}
C {devices/lab_pin.sym} 760 1200 0 0 {name=l_qb_r7c1 sig_type=std_logic lab=qb_r7c1}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_q_r7c2 sig_type=std_logic lab=q_r7c2}
C {devices/lab_pin.sym} 1020 1200 0 0 {name=l_qb_r7c2 sig_type=std_logic lab=qb_r7c2}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_q_r7c3 sig_type=std_logic lab=q_r7c3}
C {devices/lab_pin.sym} 1280 1200 0 0 {name=l_qb_r7c3 sig_type=std_logic lab=qb_r7c3}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_q_r7c4 sig_type=std_logic lab=q_r7c4}
C {devices/lab_pin.sym} 1540 1200 0 0 {name=l_qb_r7c4 sig_type=std_logic lab=qb_r7c4}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_q_r7c5 sig_type=std_logic lab=q_r7c5}
C {devices/lab_pin.sym} 1800 1200 0 0 {name=l_qb_r7c5 sig_type=std_logic lab=qb_r7c5}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_q_r7c6 sig_type=std_logic lab=q_r7c6}
C {devices/lab_pin.sym} 2060 1200 0 0 {name=l_qb_r7c6 sig_type=std_logic lab=qb_r7c6}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_q_r7c7 sig_type=std_logic lab=q_r7c7}
C {devices/lab_pin.sym} 2320 1200 0 0 {name=l_qb_r7c7 sig_type=std_logic lab=qb_r7c7}
