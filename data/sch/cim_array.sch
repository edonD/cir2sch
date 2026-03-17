v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CIM Array -- 64x64 Compute-in-Memory Array} 150 -375 0 0 0.5 0.5 {}
T {8T SRAM: 6T storage + 2T decoupled read port} 150 -345 0 0 0.35 0.35 {}
T {Ports: bl blb wl wwl q qb vdd vss} 150 -320 0 0 0.35 0.35 {}
T {Ports: bl pre vdd vss} 150 -295 0 0 0.35 0.35 {}
C {devices/vsource.sym} 200 1060 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 320 1060 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 440 1060 0 0 {name=Vpre
value=PWL(0}
C {devices/noconn.sym} 200 -80 0 0 {name=Xpre0}
C {devices/noconn.sym} 360 -80 0 0 {name=Xpre1}
C {devices/noconn.sym} 520 -80 0 0 {name=Xpre2}
C {devices/noconn.sym} 680 -80 0 0 {name=Xpre3}
C {devices/noconn.sym} 840 -80 0 0 {name=Xpre4}
C {devices/noconn.sym} 1000 -80 0 0 {name=Xpre5}
C {devices/noconn.sym} 1160 -80 0 0 {name=Xpre6}
C {devices/noconn.sym} 1320 -80 0 0 {name=Xpre7}
C {devices/capa.sym} 200 -180 0 0 {name=Cbl0
value=10p}
C {devices/capa.sym} 360 -180 0 0 {name=Cbl1
value=10p}
C {devices/capa.sym} 520 -180 0 0 {name=Cbl2
value=10p}
C {devices/capa.sym} 680 -180 0 0 {name=Cbl3
value=10p}
C {devices/capa.sym} 840 -180 0 0 {name=Cbl4
value=10p}
C {devices/capa.sym} 1000 -180 0 0 {name=Cbl5
value=10p}
C {devices/capa.sym} 1160 -180 0 0 {name=Cbl6
value=10p}
C {devices/capa.sym} 1320 -180 0 0 {name=Cbl7
value=10p}
C {devices/vsource.sym} 1520 0 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 1520 120 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 1520 240 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 1520 360 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 1520 480 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 1520 600 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 1520 720 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 1520 840 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 1620 0 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 1620 120 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 1620 240 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 1620 360 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 1620 480 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 1620 600 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 1620 720 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 1620 840 0 0 {name=Vwwl7
value=0}
C {devices/noconn.sym} 200 0 0 0 {name=Xcell_r0_c0}
C {devices/noconn.sym} 360 0 0 0 {name=Xcell_r0_c1}
C {devices/noconn.sym} 520 0 0 0 {name=Xcell_r0_c2}
C {devices/noconn.sym} 680 0 0 0 {name=Xcell_r0_c3}
C {devices/noconn.sym} 840 0 0 0 {name=Xcell_r0_c4}
C {devices/noconn.sym} 1000 0 0 0 {name=Xcell_r0_c5}
C {devices/noconn.sym} 1160 0 0 0 {name=Xcell_r0_c6}
C {devices/noconn.sym} 1320 0 0 0 {name=Xcell_r0_c7}
C {devices/noconn.sym} 200 120 0 0 {name=Xcell_r1_c0}
C {devices/noconn.sym} 360 120 0 0 {name=Xcell_r1_c1}
C {devices/noconn.sym} 520 120 0 0 {name=Xcell_r1_c2}
C {devices/noconn.sym} 680 120 0 0 {name=Xcell_r1_c3}
C {devices/noconn.sym} 840 120 0 0 {name=Xcell_r1_c4}
C {devices/noconn.sym} 1000 120 0 0 {name=Xcell_r1_c5}
C {devices/noconn.sym} 1160 120 0 0 {name=Xcell_r1_c6}
C {devices/noconn.sym} 1320 120 0 0 {name=Xcell_r1_c7}
C {devices/noconn.sym} 200 240 0 0 {name=Xcell_r2_c0}
C {devices/noconn.sym} 360 240 0 0 {name=Xcell_r2_c1}
C {devices/noconn.sym} 520 240 0 0 {name=Xcell_r2_c2}
C {devices/noconn.sym} 680 240 0 0 {name=Xcell_r2_c3}
C {devices/noconn.sym} 840 240 0 0 {name=Xcell_r2_c4}
C {devices/noconn.sym} 1000 240 0 0 {name=Xcell_r2_c5}
C {devices/noconn.sym} 1160 240 0 0 {name=Xcell_r2_c6}
C {devices/noconn.sym} 1320 240 0 0 {name=Xcell_r2_c7}
C {devices/noconn.sym} 200 360 0 0 {name=Xcell_r3_c0}
C {devices/noconn.sym} 360 360 0 0 {name=Xcell_r3_c1}
C {devices/noconn.sym} 520 360 0 0 {name=Xcell_r3_c2}
C {devices/noconn.sym} 680 360 0 0 {name=Xcell_r3_c3}
C {devices/noconn.sym} 840 360 0 0 {name=Xcell_r3_c4}
C {devices/noconn.sym} 1000 360 0 0 {name=Xcell_r3_c5}
C {devices/noconn.sym} 1160 360 0 0 {name=Xcell_r3_c6}
C {devices/noconn.sym} 1320 360 0 0 {name=Xcell_r3_c7}
C {devices/noconn.sym} 200 480 0 0 {name=Xcell_r4_c0}
C {devices/noconn.sym} 360 480 0 0 {name=Xcell_r4_c1}
C {devices/noconn.sym} 520 480 0 0 {name=Xcell_r4_c2}
C {devices/noconn.sym} 680 480 0 0 {name=Xcell_r4_c3}
C {devices/noconn.sym} 840 480 0 0 {name=Xcell_r4_c4}
C {devices/noconn.sym} 1000 480 0 0 {name=Xcell_r4_c5}
C {devices/noconn.sym} 1160 480 0 0 {name=Xcell_r4_c6}
C {devices/noconn.sym} 1320 480 0 0 {name=Xcell_r4_c7}
C {devices/noconn.sym} 200 600 0 0 {name=Xcell_r5_c0}
C {devices/noconn.sym} 360 600 0 0 {name=Xcell_r5_c1}
C {devices/noconn.sym} 520 600 0 0 {name=Xcell_r5_c2}
C {devices/noconn.sym} 680 600 0 0 {name=Xcell_r5_c3}
C {devices/noconn.sym} 840 600 0 0 {name=Xcell_r5_c4}
C {devices/noconn.sym} 1000 600 0 0 {name=Xcell_r5_c5}
C {devices/noconn.sym} 1160 600 0 0 {name=Xcell_r5_c6}
C {devices/noconn.sym} 1320 600 0 0 {name=Xcell_r5_c7}
C {devices/noconn.sym} 200 720 0 0 {name=Xcell_r6_c0}
C {devices/noconn.sym} 360 720 0 0 {name=Xcell_r6_c1}
C {devices/noconn.sym} 520 720 0 0 {name=Xcell_r6_c2}
C {devices/noconn.sym} 680 720 0 0 {name=Xcell_r6_c3}
C {devices/noconn.sym} 840 720 0 0 {name=Xcell_r6_c4}
C {devices/noconn.sym} 1000 720 0 0 {name=Xcell_r6_c5}
C {devices/noconn.sym} 1160 720 0 0 {name=Xcell_r6_c6}
C {devices/noconn.sym} 1320 720 0 0 {name=Xcell_r6_c7}
C {devices/noconn.sym} 200 840 0 0 {name=Xcell_r7_c0}
C {devices/noconn.sym} 360 840 0 0 {name=Xcell_r7_c1}
C {devices/noconn.sym} 520 840 0 0 {name=Xcell_r7_c2}
C {devices/noconn.sym} 680 840 0 0 {name=Xcell_r7_c3}
C {devices/noconn.sym} 840 840 0 0 {name=Xcell_r7_c4}
C {devices/noconn.sym} 1000 840 0 0 {name=Xcell_r7_c5}
C {devices/noconn.sym} 1160 840 0 0 {name=Xcell_r7_c6}
C {devices/noconn.sym} 1320 840 0 0 {name=Xcell_r7_c7}
T {col0} 200 -60 0 0 0.3 0.3 {}
T {col1} 360 -60 0 0 0.3 0.3 {}
T {col2} 520 -60 0 0 0.3 0.3 {}
T {col3} 680 -60 0 0 0.3 0.3 {}
T {col4} 840 -60 0 0 0.3 0.3 {}
T {col5} 1000 -60 0 0 0.3 0.3 {}
T {col6} 1160 -60 0 0 0.3 0.3 {}
T {col7} 1320 -60 0 0 0.3 0.3 {}
T {row0} 120 0 0 0 0.3 0.3 {}
T {row1} 120 120 0 0 0.3 0.3 {}
T {row2} 120 240 0 0 0.3 0.3 {}
T {row3} 120 360 0 0 0.3 0.3 {}
T {row4} 120 480 0 0 0.3 0.3 {}
T {row5} 120 600 0 0 0.3 0.3 {}
T {row6} 120 720 0 0 0.3 0.3 {}
T {row7} 120 840 0 0 0.3 0.3 {}
T {8x8 Array} 120 -80 0 0 0.35 0.35 {}
N 200 -80 360 -80 {lab=pre}
N 360 -80 520 -80 {lab=pre}
N 520 -80 680 -80 {lab=pre}
N 680 -80 840 -80 {lab=pre}
N 840 -80 1000 -80 {lab=pre}
N 1000 -80 1160 -80 {lab=pre}
N 1160 -80 1320 -80 {lab=pre}
N 200 -80 200 0 {lab=bl0}
N 200 0 200 120 {lab=bl0}
N 200 120 200 240 {lab=bl0}
N 200 240 200 360 {lab=bl0}
N 200 360 200 480 {lab=bl0}
N 200 480 200 600 {lab=bl0}
N 200 600 200 720 {lab=bl0}
N 200 720 200 840 {lab=bl0}
N 200 -80 200 -210 {lab=bl0}
N 360 -80 360 0 {lab=bl1}
N 360 0 360 120 {lab=bl1}
N 360 120 360 240 {lab=bl1}
N 360 240 360 360 {lab=bl1}
N 360 360 360 480 {lab=bl1}
N 360 480 360 600 {lab=bl1}
N 360 600 360 720 {lab=bl1}
N 360 720 360 840 {lab=bl1}
N 360 -80 360 -210 {lab=bl1}
N 520 -80 520 0 {lab=bl2}
N 520 0 520 120 {lab=bl2}
N 520 120 520 240 {lab=bl2}
N 520 240 520 360 {lab=bl2}
N 520 360 520 480 {lab=bl2}
N 520 480 520 600 {lab=bl2}
N 520 600 520 720 {lab=bl2}
N 520 720 520 840 {lab=bl2}
N 520 -80 520 -210 {lab=bl2}
N 680 -80 680 0 {lab=bl3}
N 680 0 680 120 {lab=bl3}
N 680 120 680 240 {lab=bl3}
N 680 240 680 360 {lab=bl3}
N 680 360 680 480 {lab=bl3}
N 680 480 680 600 {lab=bl3}
N 680 600 680 720 {lab=bl3}
N 680 720 680 840 {lab=bl3}
N 680 -80 680 -210 {lab=bl3}
N 840 -80 840 0 {lab=bl4}
N 840 0 840 120 {lab=bl4}
N 840 120 840 240 {lab=bl4}
N 840 240 840 360 {lab=bl4}
N 840 360 840 480 {lab=bl4}
N 840 480 840 600 {lab=bl4}
N 840 600 840 720 {lab=bl4}
N 840 720 840 840 {lab=bl4}
N 840 -80 840 -210 {lab=bl4}
N 1000 -80 1000 0 {lab=bl5}
N 1000 0 1000 120 {lab=bl5}
N 1000 120 1000 240 {lab=bl5}
N 1000 240 1000 360 {lab=bl5}
N 1000 360 1000 480 {lab=bl5}
N 1000 480 1000 600 {lab=bl5}
N 1000 600 1000 720 {lab=bl5}
N 1000 720 1000 840 {lab=bl5}
N 1000 -80 1000 -210 {lab=bl5}
N 1160 -80 1160 0 {lab=bl6}
N 1160 0 1160 120 {lab=bl6}
N 1160 120 1160 240 {lab=bl6}
N 1160 240 1160 360 {lab=bl6}
N 1160 360 1160 480 {lab=bl6}
N 1160 480 1160 600 {lab=bl6}
N 1160 600 1160 720 {lab=bl6}
N 1160 720 1160 840 {lab=bl6}
N 1160 -80 1160 -210 {lab=bl6}
N 1320 -80 1320 0 {lab=bl7}
N 1320 0 1320 120 {lab=bl7}
N 1320 120 1320 240 {lab=bl7}
N 1320 240 1320 360 {lab=bl7}
N 1320 360 1320 480 {lab=bl7}
N 1320 480 1320 600 {lab=bl7}
N 1320 600 1320 720 {lab=bl7}
N 1320 720 1320 840 {lab=bl7}
N 1320 -80 1320 -210 {lab=bl7}
N 1520 -30 1520 0 {lab=wl0}
N 1520 0 1320 0 {lab=wl0}
N 1320 0 1160 0 {lab=wl0}
N 1160 0 1000 0 {lab=wl0}
N 1000 0 840 0 {lab=wl0}
N 840 0 680 0 {lab=wl0}
N 680 0 520 0 {lab=wl0}
N 520 0 360 0 {lab=wl0}
N 360 0 200 0 {lab=wl0}
N 1520 90 1520 120 {lab=wl1}
N 1520 120 1320 120 {lab=wl1}
N 1320 120 1160 120 {lab=wl1}
N 1160 120 1000 120 {lab=wl1}
N 1000 120 840 120 {lab=wl1}
N 840 120 680 120 {lab=wl1}
N 680 120 520 120 {lab=wl1}
N 520 120 360 120 {lab=wl1}
N 360 120 200 120 {lab=wl1}
N 1520 210 1520 240 {lab=wl2}
N 1520 240 1320 240 {lab=wl2}
N 1320 240 1160 240 {lab=wl2}
N 1160 240 1000 240 {lab=wl2}
N 1000 240 840 240 {lab=wl2}
N 840 240 680 240 {lab=wl2}
N 680 240 520 240 {lab=wl2}
N 520 240 360 240 {lab=wl2}
N 360 240 200 240 {lab=wl2}
N 1520 330 1520 360 {lab=wl3}
N 1520 360 1320 360 {lab=wl3}
N 1320 360 1160 360 {lab=wl3}
N 1160 360 1000 360 {lab=wl3}
N 1000 360 840 360 {lab=wl3}
N 840 360 680 360 {lab=wl3}
N 680 360 520 360 {lab=wl3}
N 520 360 360 360 {lab=wl3}
N 360 360 200 360 {lab=wl3}
N 1520 450 1520 480 {lab=wl4}
N 1520 480 1320 480 {lab=wl4}
N 1320 480 1160 480 {lab=wl4}
N 1160 480 1000 480 {lab=wl4}
N 1000 480 840 480 {lab=wl4}
N 840 480 680 480 {lab=wl4}
N 680 480 520 480 {lab=wl4}
N 520 480 360 480 {lab=wl4}
N 360 480 200 480 {lab=wl4}
N 1520 570 1520 600 {lab=wl5}
N 1520 600 1320 600 {lab=wl5}
N 1320 600 1160 600 {lab=wl5}
N 1160 600 1000 600 {lab=wl5}
N 1000 600 840 600 {lab=wl5}
N 840 600 680 600 {lab=wl5}
N 680 600 520 600 {lab=wl5}
N 520 600 360 600 {lab=wl5}
N 360 600 200 600 {lab=wl5}
N 1520 690 1520 720 {lab=wl6}
N 1520 720 1320 720 {lab=wl6}
N 1320 720 1160 720 {lab=wl6}
N 1160 720 1000 720 {lab=wl6}
N 1000 720 840 720 {lab=wl6}
N 840 720 680 720 {lab=wl6}
N 680 720 520 720 {lab=wl6}
N 520 720 360 720 {lab=wl6}
N 360 720 200 720 {lab=wl6}
N 1520 810 1520 840 {lab=wl7}
N 1520 840 1320 840 {lab=wl7}
N 1320 840 1160 840 {lab=wl7}
N 1160 840 1000 840 {lab=wl7}
N 1000 840 840 840 {lab=wl7}
N 840 840 680 840 {lab=wl7}
N 680 840 520 840 {lab=wl7}
N 520 840 360 840 {lab=wl7}
N 360 840 200 840 {lab=wl7}
N 200 0 360 0 {lab=wwl0}
N 360 0 520 0 {lab=wwl0}
N 520 0 680 0 {lab=wwl0}
N 680 0 840 0 {lab=wwl0}
N 840 0 1000 0 {lab=wwl0}
N 1000 0 1160 0 {lab=wwl0}
N 1160 0 1320 0 {lab=wwl0}
N 200 120 360 120 {lab=wwl1}
N 360 120 520 120 {lab=wwl1}
N 520 120 680 120 {lab=wwl1}
N 680 120 840 120 {lab=wwl1}
N 840 120 1000 120 {lab=wwl1}
N 1000 120 1160 120 {lab=wwl1}
N 1160 120 1320 120 {lab=wwl1}
N 200 240 360 240 {lab=wwl2}
N 360 240 520 240 {lab=wwl2}
N 520 240 680 240 {lab=wwl2}
N 680 240 840 240 {lab=wwl2}
N 840 240 1000 240 {lab=wwl2}
N 1000 240 1160 240 {lab=wwl2}
N 1160 240 1320 240 {lab=wwl2}
N 200 360 360 360 {lab=wwl3}
N 360 360 520 360 {lab=wwl3}
N 520 360 680 360 {lab=wwl3}
N 680 360 840 360 {lab=wwl3}
N 840 360 1000 360 {lab=wwl3}
N 1000 360 1160 360 {lab=wwl3}
N 1160 360 1320 360 {lab=wwl3}
N 200 480 360 480 {lab=wwl4}
N 360 480 520 480 {lab=wwl4}
N 520 480 680 480 {lab=wwl4}
N 680 480 840 480 {lab=wwl4}
N 840 480 1000 480 {lab=wwl4}
N 1000 480 1160 480 {lab=wwl4}
N 1160 480 1320 480 {lab=wwl4}
N 200 600 360 600 {lab=wwl5}
N 360 600 520 600 {lab=wwl5}
N 520 600 680 600 {lab=wwl5}
N 680 600 840 600 {lab=wwl5}
N 840 600 1000 600 {lab=wwl5}
N 1000 600 1160 600 {lab=wwl5}
N 1160 600 1320 600 {lab=wwl5}
N 200 720 360 720 {lab=wwl6}
N 360 720 520 720 {lab=wwl6}
N 520 720 680 720 {lab=wwl6}
N 680 720 840 720 {lab=wwl6}
N 840 720 1000 720 {lab=wwl6}
N 1000 720 1160 720 {lab=wwl6}
N 1160 720 1320 720 {lab=wwl6}
N 200 840 360 840 {lab=wwl7}
N 360 840 520 840 {lab=wwl7}
N 520 840 680 840 {lab=wwl7}
N 680 840 840 840 {lab=wwl7}
N 840 840 1000 840 {lab=wwl7}
N 1000 840 1160 840 {lab=wwl7}
N 1160 840 1320 840 {lab=wwl7}
N 200 0 200 120 {lab=blb0}
N 200 120 200 240 {lab=blb0}
N 200 240 200 360 {lab=blb0}
N 200 360 200 480 {lab=blb0}
N 200 480 200 600 {lab=blb0}
N 200 600 200 720 {lab=blb0}
N 200 720 200 840 {lab=blb0}
N 360 0 360 120 {lab=blb1}
N 360 120 360 240 {lab=blb1}
N 360 240 360 360 {lab=blb1}
N 360 360 360 480 {lab=blb1}
N 360 480 360 600 {lab=blb1}
N 360 600 360 720 {lab=blb1}
N 360 720 360 840 {lab=blb1}
N 520 0 520 120 {lab=blb2}
N 520 120 520 240 {lab=blb2}
N 520 240 520 360 {lab=blb2}
N 520 360 520 480 {lab=blb2}
N 520 480 520 600 {lab=blb2}
N 520 600 520 720 {lab=blb2}
N 520 720 520 840 {lab=blb2}
N 680 0 680 120 {lab=blb3}
N 680 120 680 240 {lab=blb3}
N 680 240 680 360 {lab=blb3}
N 680 360 680 480 {lab=blb3}
N 680 480 680 600 {lab=blb3}
N 680 600 680 720 {lab=blb3}
N 680 720 680 840 {lab=blb3}
N 840 0 840 120 {lab=blb4}
N 840 120 840 240 {lab=blb4}
N 840 240 840 360 {lab=blb4}
N 840 360 840 480 {lab=blb4}
N 840 480 840 600 {lab=blb4}
N 840 600 840 720 {lab=blb4}
N 840 720 840 840 {lab=blb4}
N 1000 0 1000 120 {lab=blb5}
N 1000 120 1000 240 {lab=blb5}
N 1000 240 1000 360 {lab=blb5}
N 1000 360 1000 480 {lab=blb5}
N 1000 480 1000 600 {lab=blb5}
N 1000 600 1000 720 {lab=blb5}
N 1000 720 1000 840 {lab=blb5}
N 1160 0 1160 120 {lab=blb6}
N 1160 120 1160 240 {lab=blb6}
N 1160 240 1160 360 {lab=blb6}
N 1160 360 1160 480 {lab=blb6}
N 1160 480 1160 600 {lab=blb6}
N 1160 600 1160 720 {lab=blb6}
N 1160 720 1160 840 {lab=blb6}
N 1320 0 1320 120 {lab=blb7}
N 1320 120 1320 240 {lab=blb7}
N 1320 240 1320 360 {lab=blb7}
N 1320 360 1320 480 {lab=blb7}
N 1320 480 1320 600 {lab=blb7}
N 1320 600 1320 720 {lab=blb7}
N 1320 720 1320 840 {lab=blb7}
C {devices/vdd.sym} 200 1030 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 0 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 120 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 240 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 360 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 480 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 600 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 720 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 360 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 520 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 680 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 840 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1000 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1160 840 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1320 840 0 0 {name=l_vdd lab=VDD}
C {devices/gnd.sym} 200 1090 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 320 1090 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 440 1090 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 200 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 360 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 520 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 680 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 840 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1000 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1160 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1320 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 270 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 390 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 510 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 750 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1520 870 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 270 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 390 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 510 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 630 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 750 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1620 870 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 320 1030 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 0 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 120 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 240 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 360 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 480 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 600 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 720 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 360 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 520 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 680 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 840 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1000 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1160 840 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1320 840 0 0 {name=l_vss lab=VSS}
C {devices/lab_pin.sym} 440 1030 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 1620 -30 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1620 90 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1620 210 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1620 330 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1620 450 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1620 570 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1620 690 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1620 810 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_q_r0c0 sig_type=std_logic lab=q_r0c0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_qb_r0c0 sig_type=std_logic lab=qb_r0c0}
C {devices/lab_pin.sym} 360 0 0 0 {name=l_q_r0c1 sig_type=std_logic lab=q_r0c1}
C {devices/lab_pin.sym} 360 0 0 0 {name=l_qb_r0c1 sig_type=std_logic lab=qb_r0c1}
C {devices/lab_pin.sym} 520 0 0 0 {name=l_q_r0c2 sig_type=std_logic lab=q_r0c2}
C {devices/lab_pin.sym} 520 0 0 0 {name=l_qb_r0c2 sig_type=std_logic lab=qb_r0c2}
C {devices/lab_pin.sym} 680 0 0 0 {name=l_q_r0c3 sig_type=std_logic lab=q_r0c3}
C {devices/lab_pin.sym} 680 0 0 0 {name=l_qb_r0c3 sig_type=std_logic lab=qb_r0c3}
C {devices/lab_pin.sym} 840 0 0 0 {name=l_q_r0c4 sig_type=std_logic lab=q_r0c4}
C {devices/lab_pin.sym} 840 0 0 0 {name=l_qb_r0c4 sig_type=std_logic lab=qb_r0c4}
C {devices/lab_pin.sym} 1000 0 0 0 {name=l_q_r0c5 sig_type=std_logic lab=q_r0c5}
C {devices/lab_pin.sym} 1000 0 0 0 {name=l_qb_r0c5 sig_type=std_logic lab=qb_r0c5}
C {devices/lab_pin.sym} 1160 0 0 0 {name=l_q_r0c6 sig_type=std_logic lab=q_r0c6}
C {devices/lab_pin.sym} 1160 0 0 0 {name=l_qb_r0c6 sig_type=std_logic lab=qb_r0c6}
C {devices/lab_pin.sym} 1320 0 0 0 {name=l_q_r0c7 sig_type=std_logic lab=q_r0c7}
C {devices/lab_pin.sym} 1320 0 0 0 {name=l_qb_r0c7 sig_type=std_logic lab=qb_r0c7}
C {devices/lab_pin.sym} 200 120 0 0 {name=l_q_r1c0 sig_type=std_logic lab=q_r1c0}
C {devices/lab_pin.sym} 200 120 0 0 {name=l_qb_r1c0 sig_type=std_logic lab=qb_r1c0}
C {devices/lab_pin.sym} 360 120 0 0 {name=l_q_r1c1 sig_type=std_logic lab=q_r1c1}
C {devices/lab_pin.sym} 360 120 0 0 {name=l_qb_r1c1 sig_type=std_logic lab=qb_r1c1}
C {devices/lab_pin.sym} 520 120 0 0 {name=l_q_r1c2 sig_type=std_logic lab=q_r1c2}
C {devices/lab_pin.sym} 520 120 0 0 {name=l_qb_r1c2 sig_type=std_logic lab=qb_r1c2}
C {devices/lab_pin.sym} 680 120 0 0 {name=l_q_r1c3 sig_type=std_logic lab=q_r1c3}
C {devices/lab_pin.sym} 680 120 0 0 {name=l_qb_r1c3 sig_type=std_logic lab=qb_r1c3}
C {devices/lab_pin.sym} 840 120 0 0 {name=l_q_r1c4 sig_type=std_logic lab=q_r1c4}
C {devices/lab_pin.sym} 840 120 0 0 {name=l_qb_r1c4 sig_type=std_logic lab=qb_r1c4}
C {devices/lab_pin.sym} 1000 120 0 0 {name=l_q_r1c5 sig_type=std_logic lab=q_r1c5}
C {devices/lab_pin.sym} 1000 120 0 0 {name=l_qb_r1c5 sig_type=std_logic lab=qb_r1c5}
C {devices/lab_pin.sym} 1160 120 0 0 {name=l_q_r1c6 sig_type=std_logic lab=q_r1c6}
C {devices/lab_pin.sym} 1160 120 0 0 {name=l_qb_r1c6 sig_type=std_logic lab=qb_r1c6}
C {devices/lab_pin.sym} 1320 120 0 0 {name=l_q_r1c7 sig_type=std_logic lab=q_r1c7}
C {devices/lab_pin.sym} 1320 120 0 0 {name=l_qb_r1c7 sig_type=std_logic lab=qb_r1c7}
C {devices/lab_pin.sym} 200 240 0 0 {name=l_q_r2c0 sig_type=std_logic lab=q_r2c0}
C {devices/lab_pin.sym} 200 240 0 0 {name=l_qb_r2c0 sig_type=std_logic lab=qb_r2c0}
C {devices/lab_pin.sym} 360 240 0 0 {name=l_q_r2c1 sig_type=std_logic lab=q_r2c1}
C {devices/lab_pin.sym} 360 240 0 0 {name=l_qb_r2c1 sig_type=std_logic lab=qb_r2c1}
C {devices/lab_pin.sym} 520 240 0 0 {name=l_q_r2c2 sig_type=std_logic lab=q_r2c2}
C {devices/lab_pin.sym} 520 240 0 0 {name=l_qb_r2c2 sig_type=std_logic lab=qb_r2c2}
C {devices/lab_pin.sym} 680 240 0 0 {name=l_q_r2c3 sig_type=std_logic lab=q_r2c3}
C {devices/lab_pin.sym} 680 240 0 0 {name=l_qb_r2c3 sig_type=std_logic lab=qb_r2c3}
C {devices/lab_pin.sym} 840 240 0 0 {name=l_q_r2c4 sig_type=std_logic lab=q_r2c4}
C {devices/lab_pin.sym} 840 240 0 0 {name=l_qb_r2c4 sig_type=std_logic lab=qb_r2c4}
C {devices/lab_pin.sym} 1000 240 0 0 {name=l_q_r2c5 sig_type=std_logic lab=q_r2c5}
C {devices/lab_pin.sym} 1000 240 0 0 {name=l_qb_r2c5 sig_type=std_logic lab=qb_r2c5}
C {devices/lab_pin.sym} 1160 240 0 0 {name=l_q_r2c6 sig_type=std_logic lab=q_r2c6}
C {devices/lab_pin.sym} 1160 240 0 0 {name=l_qb_r2c6 sig_type=std_logic lab=qb_r2c6}
C {devices/lab_pin.sym} 1320 240 0 0 {name=l_q_r2c7 sig_type=std_logic lab=q_r2c7}
C {devices/lab_pin.sym} 1320 240 0 0 {name=l_qb_r2c7 sig_type=std_logic lab=qb_r2c7}
C {devices/lab_pin.sym} 200 360 0 0 {name=l_q_r3c0 sig_type=std_logic lab=q_r3c0}
C {devices/lab_pin.sym} 200 360 0 0 {name=l_qb_r3c0 sig_type=std_logic lab=qb_r3c0}
C {devices/lab_pin.sym} 360 360 0 0 {name=l_q_r3c1 sig_type=std_logic lab=q_r3c1}
C {devices/lab_pin.sym} 360 360 0 0 {name=l_qb_r3c1 sig_type=std_logic lab=qb_r3c1}
C {devices/lab_pin.sym} 520 360 0 0 {name=l_q_r3c2 sig_type=std_logic lab=q_r3c2}
C {devices/lab_pin.sym} 520 360 0 0 {name=l_qb_r3c2 sig_type=std_logic lab=qb_r3c2}
C {devices/lab_pin.sym} 680 360 0 0 {name=l_q_r3c3 sig_type=std_logic lab=q_r3c3}
C {devices/lab_pin.sym} 680 360 0 0 {name=l_qb_r3c3 sig_type=std_logic lab=qb_r3c3}
C {devices/lab_pin.sym} 840 360 0 0 {name=l_q_r3c4 sig_type=std_logic lab=q_r3c4}
C {devices/lab_pin.sym} 840 360 0 0 {name=l_qb_r3c4 sig_type=std_logic lab=qb_r3c4}
C {devices/lab_pin.sym} 1000 360 0 0 {name=l_q_r3c5 sig_type=std_logic lab=q_r3c5}
C {devices/lab_pin.sym} 1000 360 0 0 {name=l_qb_r3c5 sig_type=std_logic lab=qb_r3c5}
C {devices/lab_pin.sym} 1160 360 0 0 {name=l_q_r3c6 sig_type=std_logic lab=q_r3c6}
C {devices/lab_pin.sym} 1160 360 0 0 {name=l_qb_r3c6 sig_type=std_logic lab=qb_r3c6}
C {devices/lab_pin.sym} 1320 360 0 0 {name=l_q_r3c7 sig_type=std_logic lab=q_r3c7}
C {devices/lab_pin.sym} 1320 360 0 0 {name=l_qb_r3c7 sig_type=std_logic lab=qb_r3c7}
C {devices/lab_pin.sym} 200 480 0 0 {name=l_q_r4c0 sig_type=std_logic lab=q_r4c0}
C {devices/lab_pin.sym} 200 480 0 0 {name=l_qb_r4c0 sig_type=std_logic lab=qb_r4c0}
C {devices/lab_pin.sym} 360 480 0 0 {name=l_q_r4c1 sig_type=std_logic lab=q_r4c1}
C {devices/lab_pin.sym} 360 480 0 0 {name=l_qb_r4c1 sig_type=std_logic lab=qb_r4c1}
C {devices/lab_pin.sym} 520 480 0 0 {name=l_q_r4c2 sig_type=std_logic lab=q_r4c2}
C {devices/lab_pin.sym} 520 480 0 0 {name=l_qb_r4c2 sig_type=std_logic lab=qb_r4c2}
C {devices/lab_pin.sym} 680 480 0 0 {name=l_q_r4c3 sig_type=std_logic lab=q_r4c3}
C {devices/lab_pin.sym} 680 480 0 0 {name=l_qb_r4c3 sig_type=std_logic lab=qb_r4c3}
C {devices/lab_pin.sym} 840 480 0 0 {name=l_q_r4c4 sig_type=std_logic lab=q_r4c4}
C {devices/lab_pin.sym} 840 480 0 0 {name=l_qb_r4c4 sig_type=std_logic lab=qb_r4c4}
C {devices/lab_pin.sym} 1000 480 0 0 {name=l_q_r4c5 sig_type=std_logic lab=q_r4c5}
C {devices/lab_pin.sym} 1000 480 0 0 {name=l_qb_r4c5 sig_type=std_logic lab=qb_r4c5}
C {devices/lab_pin.sym} 1160 480 0 0 {name=l_q_r4c6 sig_type=std_logic lab=q_r4c6}
C {devices/lab_pin.sym} 1160 480 0 0 {name=l_qb_r4c6 sig_type=std_logic lab=qb_r4c6}
C {devices/lab_pin.sym} 1320 480 0 0 {name=l_q_r4c7 sig_type=std_logic lab=q_r4c7}
C {devices/lab_pin.sym} 1320 480 0 0 {name=l_qb_r4c7 sig_type=std_logic lab=qb_r4c7}
C {devices/lab_pin.sym} 200 600 0 0 {name=l_q_r5c0 sig_type=std_logic lab=q_r5c0}
C {devices/lab_pin.sym} 200 600 0 0 {name=l_qb_r5c0 sig_type=std_logic lab=qb_r5c0}
C {devices/lab_pin.sym} 360 600 0 0 {name=l_q_r5c1 sig_type=std_logic lab=q_r5c1}
C {devices/lab_pin.sym} 360 600 0 0 {name=l_qb_r5c1 sig_type=std_logic lab=qb_r5c1}
C {devices/lab_pin.sym} 520 600 0 0 {name=l_q_r5c2 sig_type=std_logic lab=q_r5c2}
C {devices/lab_pin.sym} 520 600 0 0 {name=l_qb_r5c2 sig_type=std_logic lab=qb_r5c2}
C {devices/lab_pin.sym} 680 600 0 0 {name=l_q_r5c3 sig_type=std_logic lab=q_r5c3}
C {devices/lab_pin.sym} 680 600 0 0 {name=l_qb_r5c3 sig_type=std_logic lab=qb_r5c3}
C {devices/lab_pin.sym} 840 600 0 0 {name=l_q_r5c4 sig_type=std_logic lab=q_r5c4}
C {devices/lab_pin.sym} 840 600 0 0 {name=l_qb_r5c4 sig_type=std_logic lab=qb_r5c4}
C {devices/lab_pin.sym} 1000 600 0 0 {name=l_q_r5c5 sig_type=std_logic lab=q_r5c5}
C {devices/lab_pin.sym} 1000 600 0 0 {name=l_qb_r5c5 sig_type=std_logic lab=qb_r5c5}
C {devices/lab_pin.sym} 1160 600 0 0 {name=l_q_r5c6 sig_type=std_logic lab=q_r5c6}
C {devices/lab_pin.sym} 1160 600 0 0 {name=l_qb_r5c6 sig_type=std_logic lab=qb_r5c6}
C {devices/lab_pin.sym} 1320 600 0 0 {name=l_q_r5c7 sig_type=std_logic lab=q_r5c7}
C {devices/lab_pin.sym} 1320 600 0 0 {name=l_qb_r5c7 sig_type=std_logic lab=qb_r5c7}
C {devices/lab_pin.sym} 200 720 0 0 {name=l_q_r6c0 sig_type=std_logic lab=q_r6c0}
C {devices/lab_pin.sym} 200 720 0 0 {name=l_qb_r6c0 sig_type=std_logic lab=qb_r6c0}
C {devices/lab_pin.sym} 360 720 0 0 {name=l_q_r6c1 sig_type=std_logic lab=q_r6c1}
C {devices/lab_pin.sym} 360 720 0 0 {name=l_qb_r6c1 sig_type=std_logic lab=qb_r6c1}
C {devices/lab_pin.sym} 520 720 0 0 {name=l_q_r6c2 sig_type=std_logic lab=q_r6c2}
C {devices/lab_pin.sym} 520 720 0 0 {name=l_qb_r6c2 sig_type=std_logic lab=qb_r6c2}
C {devices/lab_pin.sym} 680 720 0 0 {name=l_q_r6c3 sig_type=std_logic lab=q_r6c3}
C {devices/lab_pin.sym} 680 720 0 0 {name=l_qb_r6c3 sig_type=std_logic lab=qb_r6c3}
C {devices/lab_pin.sym} 840 720 0 0 {name=l_q_r6c4 sig_type=std_logic lab=q_r6c4}
C {devices/lab_pin.sym} 840 720 0 0 {name=l_qb_r6c4 sig_type=std_logic lab=qb_r6c4}
C {devices/lab_pin.sym} 1000 720 0 0 {name=l_q_r6c5 sig_type=std_logic lab=q_r6c5}
C {devices/lab_pin.sym} 1000 720 0 0 {name=l_qb_r6c5 sig_type=std_logic lab=qb_r6c5}
C {devices/lab_pin.sym} 1160 720 0 0 {name=l_q_r6c6 sig_type=std_logic lab=q_r6c6}
C {devices/lab_pin.sym} 1160 720 0 0 {name=l_qb_r6c6 sig_type=std_logic lab=qb_r6c6}
C {devices/lab_pin.sym} 1320 720 0 0 {name=l_q_r6c7 sig_type=std_logic lab=q_r6c7}
C {devices/lab_pin.sym} 1320 720 0 0 {name=l_qb_r6c7 sig_type=std_logic lab=qb_r6c7}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_q_r7c0 sig_type=std_logic lab=q_r7c0}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_qb_r7c0 sig_type=std_logic lab=qb_r7c0}
C {devices/lab_pin.sym} 360 840 0 0 {name=l_q_r7c1 sig_type=std_logic lab=q_r7c1}
C {devices/lab_pin.sym} 360 840 0 0 {name=l_qb_r7c1 sig_type=std_logic lab=qb_r7c1}
C {devices/lab_pin.sym} 520 840 0 0 {name=l_q_r7c2 sig_type=std_logic lab=q_r7c2}
C {devices/lab_pin.sym} 520 840 0 0 {name=l_qb_r7c2 sig_type=std_logic lab=qb_r7c2}
C {devices/lab_pin.sym} 680 840 0 0 {name=l_q_r7c3 sig_type=std_logic lab=q_r7c3}
C {devices/lab_pin.sym} 680 840 0 0 {name=l_qb_r7c3 sig_type=std_logic lab=qb_r7c3}
C {devices/lab_pin.sym} 840 840 0 0 {name=l_q_r7c4 sig_type=std_logic lab=q_r7c4}
C {devices/lab_pin.sym} 840 840 0 0 {name=l_qb_r7c4 sig_type=std_logic lab=qb_r7c4}
C {devices/lab_pin.sym} 1000 840 0 0 {name=l_q_r7c5 sig_type=std_logic lab=q_r7c5}
C {devices/lab_pin.sym} 1000 840 0 0 {name=l_qb_r7c5 sig_type=std_logic lab=qb_r7c5}
C {devices/lab_pin.sym} 1160 840 0 0 {name=l_q_r7c6 sig_type=std_logic lab=q_r7c6}
C {devices/lab_pin.sym} 1160 840 0 0 {name=l_qb_r7c6 sig_type=std_logic lab=qb_r7c6}
C {devices/lab_pin.sym} 1320 840 0 0 {name=l_q_r7c7 sig_type=std_logic lab=q_r7c7}
C {devices/lab_pin.sym} 1320 840 0 0 {name=l_qb_r7c7 sig_type=std_logic lab=qb_r7c7}
