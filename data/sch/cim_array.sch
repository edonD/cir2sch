v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CIM Array -- 64x64 Compute-in-Memory Array} 150 -2260 0 0 0.5 0.5 {}
T {8T SRAM: 6T storage + 2T decoupled read port} 150 -2230 0 0 0.35 0.35 {}
T {Ports: bl blb wl wwl q qb vdd vss} 150 -2205 0 0 0.35 0.35 {}
T {Ports: bl pre vdd vss} 150 -2180 0 0 0.35 0.35 {}
C {devices/vsource.sym} 200 1220 0 0 {name=Vdd
value={supply}}
C {devices/vsource.sym} 320 1220 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 440 1220 0 0 {name=Vpre
value=PWL(0}
C {devices/noconn.sym} 200 -120 0 0 {name=Xpre0}
C {devices/noconn.sym} 380 -120 0 0 {name=Xpre1}
C {devices/noconn.sym} 560 -120 0 0 {name=Xpre2}
C {devices/noconn.sym} 740 -120 0 0 {name=Xpre3}
C {devices/noconn.sym} 920 -120 0 0 {name=Xpre4}
C {devices/noconn.sym} 1100 -120 0 0 {name=Xpre5}
C {devices/noconn.sym} 1280 -120 0 0 {name=Xpre6}
C {devices/noconn.sym} 1460 -120 0 0 {name=Xpre7}
C {devices/capa.sym} 200 -240 0 0 {name=Cbl0
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 380 -240 0 0 {name=Cbl1
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 560 -240 0 0 {name=Cbl2
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 740 -240 0 0 {name=Cbl3
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 920 -240 0 0 {name=Cbl4
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1100 -240 0 0 {name=Cbl5
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1280 -240 0 0 {name=Cbl6
value={Cbl_extra_ff*1e-15}}
C {devices/capa.sym} 1460 -240 0 0 {name=Cbl7
value={Cbl_extra_ff*1e-15}}
C {devices/vsource.sym} 200 -360 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 200 -480 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 200 -600 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 200 -720 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 200 -840 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 200 -960 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 200 -1080 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 200 -1200 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 200 -1320 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 200 -1440 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 200 -1560 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 200 -1680 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 200 -1800 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 200 -1920 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 200 -2040 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 200 -2160 0 0 {name=Vwwl7
value=0}
C {devices/noconn.sym} 200 0 0 0 {name=Xcell_r0_c0}
C {devices/noconn.sym} 380 0 0 0 {name=Xcell_r0_c1}
C {devices/noconn.sym} 560 0 0 0 {name=Xcell_r0_c2}
C {devices/noconn.sym} 740 0 0 0 {name=Xcell_r0_c3}
C {devices/noconn.sym} 920 0 0 0 {name=Xcell_r0_c4}
C {devices/noconn.sym} 1100 0 0 0 {name=Xcell_r0_c5}
C {devices/noconn.sym} 1280 0 0 0 {name=Xcell_r0_c6}
C {devices/noconn.sym} 1460 0 0 0 {name=Xcell_r0_c7}
C {devices/noconn.sym} 200 140 0 0 {name=Xcell_r1_c0}
C {devices/noconn.sym} 380 140 0 0 {name=Xcell_r1_c1}
C {devices/noconn.sym} 560 140 0 0 {name=Xcell_r1_c2}
C {devices/noconn.sym} 740 140 0 0 {name=Xcell_r1_c3}
C {devices/noconn.sym} 920 140 0 0 {name=Xcell_r1_c4}
C {devices/noconn.sym} 1100 140 0 0 {name=Xcell_r1_c5}
C {devices/noconn.sym} 1280 140 0 0 {name=Xcell_r1_c6}
C {devices/noconn.sym} 1460 140 0 0 {name=Xcell_r1_c7}
C {devices/noconn.sym} 200 280 0 0 {name=Xcell_r2_c0}
C {devices/noconn.sym} 380 280 0 0 {name=Xcell_r2_c1}
C {devices/noconn.sym} 560 280 0 0 {name=Xcell_r2_c2}
C {devices/noconn.sym} 740 280 0 0 {name=Xcell_r2_c3}
C {devices/noconn.sym} 920 280 0 0 {name=Xcell_r2_c4}
C {devices/noconn.sym} 1100 280 0 0 {name=Xcell_r2_c5}
C {devices/noconn.sym} 1280 280 0 0 {name=Xcell_r2_c6}
C {devices/noconn.sym} 1460 280 0 0 {name=Xcell_r2_c7}
C {devices/noconn.sym} 200 420 0 0 {name=Xcell_r3_c0}
C {devices/noconn.sym} 380 420 0 0 {name=Xcell_r3_c1}
C {devices/noconn.sym} 560 420 0 0 {name=Xcell_r3_c2}
C {devices/noconn.sym} 740 420 0 0 {name=Xcell_r3_c3}
C {devices/noconn.sym} 920 420 0 0 {name=Xcell_r3_c4}
C {devices/noconn.sym} 1100 420 0 0 {name=Xcell_r3_c5}
C {devices/noconn.sym} 1280 420 0 0 {name=Xcell_r3_c6}
C {devices/noconn.sym} 1460 420 0 0 {name=Xcell_r3_c7}
C {devices/noconn.sym} 200 560 0 0 {name=Xcell_r4_c0}
C {devices/noconn.sym} 380 560 0 0 {name=Xcell_r4_c1}
C {devices/noconn.sym} 560 560 0 0 {name=Xcell_r4_c2}
C {devices/noconn.sym} 740 560 0 0 {name=Xcell_r4_c3}
C {devices/noconn.sym} 920 560 0 0 {name=Xcell_r4_c4}
C {devices/noconn.sym} 1100 560 0 0 {name=Xcell_r4_c5}
C {devices/noconn.sym} 1280 560 0 0 {name=Xcell_r4_c6}
C {devices/noconn.sym} 1460 560 0 0 {name=Xcell_r4_c7}
C {devices/noconn.sym} 200 700 0 0 {name=Xcell_r5_c0}
C {devices/noconn.sym} 380 700 0 0 {name=Xcell_r5_c1}
C {devices/noconn.sym} 560 700 0 0 {name=Xcell_r5_c2}
C {devices/noconn.sym} 740 700 0 0 {name=Xcell_r5_c3}
C {devices/noconn.sym} 920 700 0 0 {name=Xcell_r5_c4}
C {devices/noconn.sym} 1100 700 0 0 {name=Xcell_r5_c5}
C {devices/noconn.sym} 1280 700 0 0 {name=Xcell_r5_c6}
C {devices/noconn.sym} 1460 700 0 0 {name=Xcell_r5_c7}
C {devices/noconn.sym} 200 840 0 0 {name=Xcell_r6_c0}
C {devices/noconn.sym} 380 840 0 0 {name=Xcell_r6_c1}
C {devices/noconn.sym} 560 840 0 0 {name=Xcell_r6_c2}
C {devices/noconn.sym} 740 840 0 0 {name=Xcell_r6_c3}
C {devices/noconn.sym} 920 840 0 0 {name=Xcell_r6_c4}
C {devices/noconn.sym} 1100 840 0 0 {name=Xcell_r6_c5}
C {devices/noconn.sym} 1280 840 0 0 {name=Xcell_r6_c6}
C {devices/noconn.sym} 1460 840 0 0 {name=Xcell_r6_c7}
C {devices/noconn.sym} 200 980 0 0 {name=Xcell_r7_c0}
C {devices/noconn.sym} 380 980 0 0 {name=Xcell_r7_c1}
C {devices/noconn.sym} 560 980 0 0 {name=Xcell_r7_c2}
C {devices/noconn.sym} 740 980 0 0 {name=Xcell_r7_c3}
C {devices/noconn.sym} 920 980 0 0 {name=Xcell_r7_c4}
C {devices/noconn.sym} 1100 980 0 0 {name=Xcell_r7_c5}
C {devices/noconn.sym} 1280 980 0 0 {name=Xcell_r7_c6}
C {devices/noconn.sym} 1460 980 0 0 {name=Xcell_r7_c7}
T {pre0} 180 -100 0 0 0.25 0.25 {}
T {pre1} 360 -100 0 0 0.25 0.25 {}
T {pre2} 540 -100 0 0 0.25 0.25 {}
T {pre3} 720 -100 0 0 0.25 0.25 {}
T {pre4} 900 -100 0 0 0.25 0.25 {}
T {pre5} 1080 -100 0 0 0.25 0.25 {}
T {pre6} 1260 -100 0 0 0.25 0.25 {}
T {pre7} 1440 -100 0 0 0.25 0.25 {}
T {r0_c0} 180 20 0 0 0.25 0.25 {}
T {r0_c1} 360 20 0 0 0.25 0.25 {}
T {r0_c2} 540 20 0 0 0.25 0.25 {}
T {r0_c3} 720 20 0 0 0.25 0.25 {}
T {r0_c4} 900 20 0 0 0.25 0.25 {}
T {r0_c5} 1080 20 0 0 0.25 0.25 {}
T {r0_c6} 1260 20 0 0 0.25 0.25 {}
T {r0_c7} 1440 20 0 0 0.25 0.25 {}
T {r1_c0} 180 160 0 0 0.25 0.25 {}
T {r1_c1} 360 160 0 0 0.25 0.25 {}
T {r1_c2} 540 160 0 0 0.25 0.25 {}
T {r1_c3} 720 160 0 0 0.25 0.25 {}
T {r1_c4} 900 160 0 0 0.25 0.25 {}
T {r1_c5} 1080 160 0 0 0.25 0.25 {}
T {r1_c6} 1260 160 0 0 0.25 0.25 {}
T {r1_c7} 1440 160 0 0 0.25 0.25 {}
T {r2_c0} 180 300 0 0 0.25 0.25 {}
T {r2_c1} 360 300 0 0 0.25 0.25 {}
T {r2_c2} 540 300 0 0 0.25 0.25 {}
T {r2_c3} 720 300 0 0 0.25 0.25 {}
T {r2_c4} 900 300 0 0 0.25 0.25 {}
T {r2_c5} 1080 300 0 0 0.25 0.25 {}
T {r2_c6} 1260 300 0 0 0.25 0.25 {}
T {r2_c7} 1440 300 0 0 0.25 0.25 {}
T {r3_c0} 180 440 0 0 0.25 0.25 {}
T {r3_c1} 360 440 0 0 0.25 0.25 {}
T {r3_c2} 540 440 0 0 0.25 0.25 {}
T {r3_c3} 720 440 0 0 0.25 0.25 {}
T {r3_c4} 900 440 0 0 0.25 0.25 {}
T {r3_c5} 1080 440 0 0 0.25 0.25 {}
T {r3_c6} 1260 440 0 0 0.25 0.25 {}
T {r3_c7} 1440 440 0 0 0.25 0.25 {}
T {r4_c0} 180 580 0 0 0.25 0.25 {}
T {r4_c1} 360 580 0 0 0.25 0.25 {}
T {r4_c2} 540 580 0 0 0.25 0.25 {}
T {r4_c3} 720 580 0 0 0.25 0.25 {}
T {r4_c4} 900 580 0 0 0.25 0.25 {}
T {r4_c5} 1080 580 0 0 0.25 0.25 {}
T {r4_c6} 1260 580 0 0 0.25 0.25 {}
T {r4_c7} 1440 580 0 0 0.25 0.25 {}
T {r5_c0} 180 720 0 0 0.25 0.25 {}
T {r5_c1} 360 720 0 0 0.25 0.25 {}
T {r5_c2} 540 720 0 0 0.25 0.25 {}
T {r5_c3} 720 720 0 0 0.25 0.25 {}
T {r5_c4} 900 720 0 0 0.25 0.25 {}
T {r5_c5} 1080 720 0 0 0.25 0.25 {}
T {r5_c6} 1260 720 0 0 0.25 0.25 {}
T {r5_c7} 1440 720 0 0 0.25 0.25 {}
T {r6_c0} 180 860 0 0 0.25 0.25 {}
T {r6_c1} 360 860 0 0 0.25 0.25 {}
T {r6_c2} 540 860 0 0 0.25 0.25 {}
T {r6_c3} 720 860 0 0 0.25 0.25 {}
T {r6_c4} 900 860 0 0 0.25 0.25 {}
T {r6_c5} 1080 860 0 0 0.25 0.25 {}
T {r6_c6} 1260 860 0 0 0.25 0.25 {}
T {r6_c7} 1440 860 0 0 0.25 0.25 {}
T {r7_c0} 180 1000 0 0 0.25 0.25 {}
T {r7_c1} 360 1000 0 0 0.25 0.25 {}
T {r7_c2} 540 1000 0 0 0.25 0.25 {}
T {r7_c3} 720 1000 0 0 0.25 0.25 {}
T {r7_c4} 900 1000 0 0 0.25 0.25 {}
T {r7_c5} 1080 1000 0 0 0.25 0.25 {}
T {r7_c6} 1260 1000 0 0 0.25 0.25 {}
T {r7_c7} 1440 1000 0 0 0.25 0.25 {}
C {devices/vdd.sym} 200 1190 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 -120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 140 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 280 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 420 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 560 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 700 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 980 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 980 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 200 1250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 320 1250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 1250 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 740 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 920 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1100 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1280 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1460 -210 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -330 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -450 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -570 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -690 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -810 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -930 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1050 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1290 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1410 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1530 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1650 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1770 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -1890 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -2010 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -2130 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 320 1190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 -120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 140 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 280 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 420 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 560 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 700 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 980 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 980 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 440 1190 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 200 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 380 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 560 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 740 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 920 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1100 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1280 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1460 -120 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 200 -120 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 -270 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 380 -120 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 -270 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 560 -120 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 -270 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 740 -120 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 -270 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 920 -120 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 -270 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1100 -120 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 -270 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1280 -120 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 -270 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1460 -120 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 -270 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 200 -390 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 200 -510 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 200 -630 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 200 -750 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 200 -870 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 200 -990 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 200 -1110 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 200 -1230 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 200 -1350 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 200 -1470 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 200 -1590 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 200 -1710 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 200 -1830 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 200 -1950 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 200 -2070 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 200 -2190 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_q_r0c0 sig_type=std_logic lab=q_r0c0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_qb_r0c0 sig_type=std_logic lab=qb_r0c0}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_q_r0c1 sig_type=std_logic lab=q_r0c1}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_qb_r0c1 sig_type=std_logic lab=qb_r0c1}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_q_r0c2 sig_type=std_logic lab=q_r0c2}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_qb_r0c2 sig_type=std_logic lab=qb_r0c2}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_q_r0c3 sig_type=std_logic lab=q_r0c3}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_qb_r0c3 sig_type=std_logic lab=qb_r0c3}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_q_r0c4 sig_type=std_logic lab=q_r0c4}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_qb_r0c4 sig_type=std_logic lab=qb_r0c4}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_q_r0c5 sig_type=std_logic lab=q_r0c5}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_qb_r0c5 sig_type=std_logic lab=qb_r0c5}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_q_r0c6 sig_type=std_logic lab=q_r0c6}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_qb_r0c6 sig_type=std_logic lab=qb_r0c6}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_q_r0c7 sig_type=std_logic lab=q_r0c7}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_qb_r0c7 sig_type=std_logic lab=qb_r0c7}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_q_r1c0 sig_type=std_logic lab=q_r1c0}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_qb_r1c0 sig_type=std_logic lab=qb_r1c0}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_q_r1c1 sig_type=std_logic lab=q_r1c1}
C {devices/lab_pin.sym} 380 140 0 0 {name=l_qb_r1c1 sig_type=std_logic lab=qb_r1c1}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_q_r1c2 sig_type=std_logic lab=q_r1c2}
C {devices/lab_pin.sym} 560 140 0 0 {name=l_qb_r1c2 sig_type=std_logic lab=qb_r1c2}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_q_r1c3 sig_type=std_logic lab=q_r1c3}
C {devices/lab_pin.sym} 740 140 0 0 {name=l_qb_r1c3 sig_type=std_logic lab=qb_r1c3}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_q_r1c4 sig_type=std_logic lab=q_r1c4}
C {devices/lab_pin.sym} 920 140 0 0 {name=l_qb_r1c4 sig_type=std_logic lab=qb_r1c4}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_q_r1c5 sig_type=std_logic lab=q_r1c5}
C {devices/lab_pin.sym} 1100 140 0 0 {name=l_qb_r1c5 sig_type=std_logic lab=qb_r1c5}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_q_r1c6 sig_type=std_logic lab=q_r1c6}
C {devices/lab_pin.sym} 1280 140 0 0 {name=l_qb_r1c6 sig_type=std_logic lab=qb_r1c6}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_q_r1c7 sig_type=std_logic lab=q_r1c7}
C {devices/lab_pin.sym} 1460 140 0 0 {name=l_qb_r1c7 sig_type=std_logic lab=qb_r1c7}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_q_r2c0 sig_type=std_logic lab=q_r2c0}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_qb_r2c0 sig_type=std_logic lab=qb_r2c0}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_q_r2c1 sig_type=std_logic lab=q_r2c1}
C {devices/lab_pin.sym} 380 280 0 0 {name=l_qb_r2c1 sig_type=std_logic lab=qb_r2c1}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_q_r2c2 sig_type=std_logic lab=q_r2c2}
C {devices/lab_pin.sym} 560 280 0 0 {name=l_qb_r2c2 sig_type=std_logic lab=qb_r2c2}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_q_r2c3 sig_type=std_logic lab=q_r2c3}
C {devices/lab_pin.sym} 740 280 0 0 {name=l_qb_r2c3 sig_type=std_logic lab=qb_r2c3}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_q_r2c4 sig_type=std_logic lab=q_r2c4}
C {devices/lab_pin.sym} 920 280 0 0 {name=l_qb_r2c4 sig_type=std_logic lab=qb_r2c4}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_q_r2c5 sig_type=std_logic lab=q_r2c5}
C {devices/lab_pin.sym} 1100 280 0 0 {name=l_qb_r2c5 sig_type=std_logic lab=qb_r2c5}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_q_r2c6 sig_type=std_logic lab=q_r2c6}
C {devices/lab_pin.sym} 1280 280 0 0 {name=l_qb_r2c6 sig_type=std_logic lab=qb_r2c6}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_q_r2c7 sig_type=std_logic lab=q_r2c7}
C {devices/lab_pin.sym} 1460 280 0 0 {name=l_qb_r2c7 sig_type=std_logic lab=qb_r2c7}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_q_r3c0 sig_type=std_logic lab=q_r3c0}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_qb_r3c0 sig_type=std_logic lab=qb_r3c0}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_q_r3c1 sig_type=std_logic lab=q_r3c1}
C {devices/lab_pin.sym} 380 420 0 0 {name=l_qb_r3c1 sig_type=std_logic lab=qb_r3c1}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_q_r3c2 sig_type=std_logic lab=q_r3c2}
C {devices/lab_pin.sym} 560 420 0 0 {name=l_qb_r3c2 sig_type=std_logic lab=qb_r3c2}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_q_r3c3 sig_type=std_logic lab=q_r3c3}
C {devices/lab_pin.sym} 740 420 0 0 {name=l_qb_r3c3 sig_type=std_logic lab=qb_r3c3}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_q_r3c4 sig_type=std_logic lab=q_r3c4}
C {devices/lab_pin.sym} 920 420 0 0 {name=l_qb_r3c4 sig_type=std_logic lab=qb_r3c4}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_q_r3c5 sig_type=std_logic lab=q_r3c5}
C {devices/lab_pin.sym} 1100 420 0 0 {name=l_qb_r3c5 sig_type=std_logic lab=qb_r3c5}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_q_r3c6 sig_type=std_logic lab=q_r3c6}
C {devices/lab_pin.sym} 1280 420 0 0 {name=l_qb_r3c6 sig_type=std_logic lab=qb_r3c6}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_q_r3c7 sig_type=std_logic lab=q_r3c7}
C {devices/lab_pin.sym} 1460 420 0 0 {name=l_qb_r3c7 sig_type=std_logic lab=qb_r3c7}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_q_r4c0 sig_type=std_logic lab=q_r4c0}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_qb_r4c0 sig_type=std_logic lab=qb_r4c0}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_q_r4c1 sig_type=std_logic lab=q_r4c1}
C {devices/lab_pin.sym} 380 560 0 0 {name=l_qb_r4c1 sig_type=std_logic lab=qb_r4c1}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_q_r4c2 sig_type=std_logic lab=q_r4c2}
C {devices/lab_pin.sym} 560 560 0 0 {name=l_qb_r4c2 sig_type=std_logic lab=qb_r4c2}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_q_r4c3 sig_type=std_logic lab=q_r4c3}
C {devices/lab_pin.sym} 740 560 0 0 {name=l_qb_r4c3 sig_type=std_logic lab=qb_r4c3}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_q_r4c4 sig_type=std_logic lab=q_r4c4}
C {devices/lab_pin.sym} 920 560 0 0 {name=l_qb_r4c4 sig_type=std_logic lab=qb_r4c4}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_q_r4c5 sig_type=std_logic lab=q_r4c5}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l_qb_r4c5 sig_type=std_logic lab=qb_r4c5}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_q_r4c6 sig_type=std_logic lab=q_r4c6}
C {devices/lab_pin.sym} 1280 560 0 0 {name=l_qb_r4c6 sig_type=std_logic lab=qb_r4c6}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_q_r4c7 sig_type=std_logic lab=q_r4c7}
C {devices/lab_pin.sym} 1460 560 0 0 {name=l_qb_r4c7 sig_type=std_logic lab=qb_r4c7}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_q_r5c0 sig_type=std_logic lab=q_r5c0}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_qb_r5c0 sig_type=std_logic lab=qb_r5c0}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_q_r5c1 sig_type=std_logic lab=q_r5c1}
C {devices/lab_pin.sym} 380 700 0 0 {name=l_qb_r5c1 sig_type=std_logic lab=qb_r5c1}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_q_r5c2 sig_type=std_logic lab=q_r5c2}
C {devices/lab_pin.sym} 560 700 0 0 {name=l_qb_r5c2 sig_type=std_logic lab=qb_r5c2}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_q_r5c3 sig_type=std_logic lab=q_r5c3}
C {devices/lab_pin.sym} 740 700 0 0 {name=l_qb_r5c3 sig_type=std_logic lab=qb_r5c3}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_q_r5c4 sig_type=std_logic lab=q_r5c4}
C {devices/lab_pin.sym} 920 700 0 0 {name=l_qb_r5c4 sig_type=std_logic lab=qb_r5c4}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_q_r5c5 sig_type=std_logic lab=q_r5c5}
C {devices/lab_pin.sym} 1100 700 0 0 {name=l_qb_r5c5 sig_type=std_logic lab=qb_r5c5}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_q_r5c6 sig_type=std_logic lab=q_r5c6}
C {devices/lab_pin.sym} 1280 700 0 0 {name=l_qb_r5c6 sig_type=std_logic lab=qb_r5c6}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_q_r5c7 sig_type=std_logic lab=q_r5c7}
C {devices/lab_pin.sym} 1460 700 0 0 {name=l_qb_r5c7 sig_type=std_logic lab=qb_r5c7}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_q_r6c0 sig_type=std_logic lab=q_r6c0}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_qb_r6c0 sig_type=std_logic lab=qb_r6c0}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_q_r6c1 sig_type=std_logic lab=q_r6c1}
C {devices/lab_pin.sym} 380 840 0 0 {name=l_qb_r6c1 sig_type=std_logic lab=qb_r6c1}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_q_r6c2 sig_type=std_logic lab=q_r6c2}
C {devices/lab_pin.sym} 560 840 0 0 {name=l_qb_r6c2 sig_type=std_logic lab=qb_r6c2}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_q_r6c3 sig_type=std_logic lab=q_r6c3}
C {devices/lab_pin.sym} 740 840 0 0 {name=l_qb_r6c3 sig_type=std_logic lab=qb_r6c3}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_q_r6c4 sig_type=std_logic lab=q_r6c4}
C {devices/lab_pin.sym} 920 840 0 0 {name=l_qb_r6c4 sig_type=std_logic lab=qb_r6c4}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_q_r6c5 sig_type=std_logic lab=q_r6c5}
C {devices/lab_pin.sym} 1100 840 0 0 {name=l_qb_r6c5 sig_type=std_logic lab=qb_r6c5}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_q_r6c6 sig_type=std_logic lab=q_r6c6}
C {devices/lab_pin.sym} 1280 840 0 0 {name=l_qb_r6c6 sig_type=std_logic lab=qb_r6c6}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_q_r6c7 sig_type=std_logic lab=q_r6c7}
C {devices/lab_pin.sym} 1460 840 0 0 {name=l_qb_r6c7 sig_type=std_logic lab=qb_r6c7}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_q_r7c0 sig_type=std_logic lab=q_r7c0}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_qb_r7c0 sig_type=std_logic lab=qb_r7c0}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_q_r7c1 sig_type=std_logic lab=q_r7c1}
C {devices/lab_pin.sym} 380 980 0 0 {name=l_qb_r7c1 sig_type=std_logic lab=qb_r7c1}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_q_r7c2 sig_type=std_logic lab=q_r7c2}
C {devices/lab_pin.sym} 560 980 0 0 {name=l_qb_r7c2 sig_type=std_logic lab=qb_r7c2}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_q_r7c3 sig_type=std_logic lab=q_r7c3}
C {devices/lab_pin.sym} 740 980 0 0 {name=l_qb_r7c3 sig_type=std_logic lab=qb_r7c3}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_q_r7c4 sig_type=std_logic lab=q_r7c4}
C {devices/lab_pin.sym} 920 980 0 0 {name=l_qb_r7c4 sig_type=std_logic lab=qb_r7c4}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_q_r7c5 sig_type=std_logic lab=q_r7c5}
C {devices/lab_pin.sym} 1100 980 0 0 {name=l_qb_r7c5 sig_type=std_logic lab=qb_r7c5}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_q_r7c6 sig_type=std_logic lab=q_r7c6}
C {devices/lab_pin.sym} 1280 980 0 0 {name=l_qb_r7c6 sig_type=std_logic lab=qb_r7c6}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_q_r7c7 sig_type=std_logic lab=q_r7c7}
C {devices/lab_pin.sym} 1460 980 0 0 {name=l_qb_r7c7 sig_type=std_logic lab=qb_r7c7}
