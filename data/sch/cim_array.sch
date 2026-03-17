v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CIM Array -- 64x64 Compute-in-Memory Array} 150 -280 0 0 0.5 0.5 {}
T {8T SRAM: 6T storage + 2T decoupled read port} 150 -250 0 0 0.35 0.35 {}
T {Ports: bl blb wl wwl q qb vdd vss} 150 -225 0 0 0.35 0.35 {}
T {Ports: bl pre vdd vss} 150 -200 0 0 0.35 0.35 {}
C {devices/vsource.sym} 200 1220 0 0 {name=Vdd
value=1.8}
C {devices/vsource.sym} 320 1220 0 0 {name=Vss
value=0}
C {devices/vsource.sym} 440 1220 0 0 {name=Vpre
value=PWL(0}
C {devices/noconn.sym} 200 -80 0 0 {name=Xpre0}
C {devices/noconn.sym} 380 -80 0 0 {name=Xpre1}
C {devices/noconn.sym} 560 -80 0 0 {name=Xpre2}
C {devices/noconn.sym} 740 -80 0 0 {name=Xpre3}
C {devices/noconn.sym} 920 -80 0 0 {name=Xpre4}
C {devices/noconn.sym} 1100 -80 0 0 {name=Xpre5}
C {devices/noconn.sym} 1280 -80 0 0 {name=Xpre6}
C {devices/noconn.sym} 1460 -80 0 0 {name=Xpre7}
C {devices/capa.sym} 200 -180 0 0 {name=Cbl0
value=10p}
C {devices/capa.sym} 380 -180 0 0 {name=Cbl1
value=10p}
C {devices/capa.sym} 560 -180 0 0 {name=Cbl2
value=10p}
C {devices/capa.sym} 740 -180 0 0 {name=Cbl3
value=10p}
C {devices/capa.sym} 920 -180 0 0 {name=Cbl4
value=10p}
C {devices/capa.sym} 1100 -180 0 0 {name=Cbl5
value=10p}
C {devices/capa.sym} 1280 -180 0 0 {name=Cbl6
value=10p}
C {devices/capa.sym} 1460 -180 0 0 {name=Cbl7
value=10p}
C {devices/vsource.sym} 1700 0 0 0 {name=Vwl0
value=PWL(0}
C {devices/vsource.sym} 1700 140 0 0 {name=Vwl1
value=PWL(0}
C {devices/vsource.sym} 1700 280 0 0 {name=Vwl2
value=PWL(0}
C {devices/vsource.sym} 1700 420 0 0 {name=Vwl3
value=PWL(0}
C {devices/vsource.sym} 1700 560 0 0 {name=Vwl4
value=PWL(0}
C {devices/vsource.sym} 1700 700 0 0 {name=Vwl5
value=0}
C {devices/vsource.sym} 1700 840 0 0 {name=Vwl6
value=PWL(0}
C {devices/vsource.sym} 1700 980 0 0 {name=Vwl7
value=PWL(0}
C {devices/vsource.sym} 1820 0 0 0 {name=Vwwl0
value=0}
C {devices/vsource.sym} 1820 140 0 0 {name=Vwwl1
value=0}
C {devices/vsource.sym} 1820 280 0 0 {name=Vwwl2
value=0}
C {devices/vsource.sym} 1820 420 0 0 {name=Vwwl3
value=0}
C {devices/vsource.sym} 1820 560 0 0 {name=Vwwl4
value=0}
C {devices/vsource.sym} 1820 700 0 0 {name=Vwwl5
value=0}
C {devices/vsource.sym} 1820 840 0 0 {name=Vwwl6
value=0}
C {devices/vsource.sym} 1820 980 0 0 {name=Vwwl7
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
T {col0} 200 -60 0 0 0.3 0.3 {}
T {col1} 380 -60 0 0 0.3 0.3 {}
T {col2} 560 -60 0 0 0.3 0.3 {}
T {col3} 740 -60 0 0 0.3 0.3 {}
T {col4} 920 -60 0 0 0.3 0.3 {}
T {col5} 1100 -60 0 0 0.3 0.3 {}
T {col6} 1280 -60 0 0 0.3 0.3 {}
T {col7} 1460 -60 0 0 0.3 0.3 {}
T {row0} 120 0 0 0 0.3 0.3 {}
T {row1} 120 140 0 0 0.3 0.3 {}
T {row2} 120 280 0 0 0.3 0.3 {}
T {row3} 120 420 0 0 0.3 0.3 {}
T {row4} 120 560 0 0 0.3 0.3 {}
T {row5} 120 700 0 0 0.3 0.3 {}
T {row6} 120 840 0 0 0.3 0.3 {}
T {row7} 120 980 0 0 0.3 0.3 {}
T {8x8 Array} 120 -80 0 0 0.35 0.35 {}
N 200 -80 380 -80 {lab=pre}
N 380 -80 560 -80 {lab=pre}
N 560 -80 740 -80 {lab=pre}
N 740 -80 920 -80 {lab=pre}
N 920 -80 1100 -80 {lab=pre}
N 1100 -80 1280 -80 {lab=pre}
N 1280 -80 1460 -80 {lab=pre}
N 200 -80 200 0 {lab=bl0}
N 200 -80 200 -210 {lab=bl0}
N 200 0 200 140 {lab=bl0}
N 200 140 200 280 {lab=bl0}
N 200 280 200 420 {lab=bl0}
N 200 420 200 560 {lab=bl0}
N 200 560 200 700 {lab=bl0}
N 200 700 200 840 {lab=bl0}
N 200 840 200 980 {lab=bl0}
N 380 -80 380 0 {lab=bl1}
N 380 -80 380 -210 {lab=bl1}
N 380 0 380 140 {lab=bl1}
N 380 140 380 280 {lab=bl1}
N 380 280 380 420 {lab=bl1}
N 380 420 380 560 {lab=bl1}
N 380 560 380 700 {lab=bl1}
N 380 700 380 840 {lab=bl1}
N 380 840 380 980 {lab=bl1}
N 560 -80 560 0 {lab=bl2}
N 560 -80 560 -210 {lab=bl2}
N 560 0 560 140 {lab=bl2}
N 560 140 560 280 {lab=bl2}
N 560 280 560 420 {lab=bl2}
N 560 420 560 560 {lab=bl2}
N 560 560 560 700 {lab=bl2}
N 560 700 560 840 {lab=bl2}
N 560 840 560 980 {lab=bl2}
N 740 -80 740 0 {lab=bl3}
N 740 -80 740 -210 {lab=bl3}
N 740 0 740 140 {lab=bl3}
N 740 140 740 280 {lab=bl3}
N 740 280 740 420 {lab=bl3}
N 740 420 740 560 {lab=bl3}
N 740 560 740 700 {lab=bl3}
N 740 700 740 840 {lab=bl3}
N 740 840 740 980 {lab=bl3}
N 920 -80 920 0 {lab=bl4}
N 920 -80 920 -210 {lab=bl4}
N 920 0 920 140 {lab=bl4}
N 920 140 920 280 {lab=bl4}
N 920 280 920 420 {lab=bl4}
N 920 420 920 560 {lab=bl4}
N 920 560 920 700 {lab=bl4}
N 920 700 920 840 {lab=bl4}
N 920 840 920 980 {lab=bl4}
N 1100 -80 1100 0 {lab=bl5}
N 1100 -80 1100 -210 {lab=bl5}
N 1100 0 1100 140 {lab=bl5}
N 1100 140 1100 280 {lab=bl5}
N 1100 280 1100 420 {lab=bl5}
N 1100 420 1100 560 {lab=bl5}
N 1100 560 1100 700 {lab=bl5}
N 1100 700 1100 840 {lab=bl5}
N 1100 840 1100 980 {lab=bl5}
N 1280 -80 1280 0 {lab=bl6}
N 1280 -80 1280 -210 {lab=bl6}
N 1280 0 1280 140 {lab=bl6}
N 1280 140 1280 280 {lab=bl6}
N 1280 280 1280 420 {lab=bl6}
N 1280 420 1280 560 {lab=bl6}
N 1280 560 1280 700 {lab=bl6}
N 1280 700 1280 840 {lab=bl6}
N 1280 840 1280 980 {lab=bl6}
N 1460 -80 1460 0 {lab=bl7}
N 1460 -80 1460 -210 {lab=bl7}
N 1460 0 1460 140 {lab=bl7}
N 1460 140 1460 280 {lab=bl7}
N 1460 280 1460 420 {lab=bl7}
N 1460 420 1460 560 {lab=bl7}
N 1460 560 1460 700 {lab=bl7}
N 1460 700 1460 840 {lab=bl7}
N 1460 840 1460 980 {lab=bl7}
N 1700 -30 1700 0 {lab=wl0}
N 1700 0 1460 0 {lab=wl0}
N 1460 0 1280 0 {lab=wl0}
N 1280 0 1100 0 {lab=wl0}
N 1100 0 920 0 {lab=wl0}
N 920 0 740 0 {lab=wl0}
N 740 0 560 0 {lab=wl0}
N 560 0 380 0 {lab=wl0}
N 380 0 200 0 {lab=wl0}
N 1700 110 1700 140 {lab=wl1}
N 1700 140 1460 140 {lab=wl1}
N 1460 140 1280 140 {lab=wl1}
N 1280 140 1100 140 {lab=wl1}
N 1100 140 920 140 {lab=wl1}
N 920 140 740 140 {lab=wl1}
N 740 140 560 140 {lab=wl1}
N 560 140 380 140 {lab=wl1}
N 380 140 200 140 {lab=wl1}
N 1700 250 1700 280 {lab=wl2}
N 1700 280 1460 280 {lab=wl2}
N 1460 280 1280 280 {lab=wl2}
N 1280 280 1100 280 {lab=wl2}
N 1100 280 920 280 {lab=wl2}
N 920 280 740 280 {lab=wl2}
N 740 280 560 280 {lab=wl2}
N 560 280 380 280 {lab=wl2}
N 380 280 200 280 {lab=wl2}
N 1700 390 1700 420 {lab=wl3}
N 1700 420 1460 420 {lab=wl3}
N 1460 420 1280 420 {lab=wl3}
N 1280 420 1100 420 {lab=wl3}
N 1100 420 920 420 {lab=wl3}
N 920 420 740 420 {lab=wl3}
N 740 420 560 420 {lab=wl3}
N 560 420 380 420 {lab=wl3}
N 380 420 200 420 {lab=wl3}
N 1700 530 1700 560 {lab=wl4}
N 1700 560 1460 560 {lab=wl4}
N 1460 560 1280 560 {lab=wl4}
N 1280 560 1100 560 {lab=wl4}
N 1100 560 920 560 {lab=wl4}
N 920 560 740 560 {lab=wl4}
N 740 560 560 560 {lab=wl4}
N 560 560 380 560 {lab=wl4}
N 380 560 200 560 {lab=wl4}
N 1700 670 1700 700 {lab=wl5}
N 1700 700 1460 700 {lab=wl5}
N 1460 700 1280 700 {lab=wl5}
N 1280 700 1100 700 {lab=wl5}
N 1100 700 920 700 {lab=wl5}
N 920 700 740 700 {lab=wl5}
N 740 700 560 700 {lab=wl5}
N 560 700 380 700 {lab=wl5}
N 380 700 200 700 {lab=wl5}
N 1700 810 1700 840 {lab=wl6}
N 1700 840 1460 840 {lab=wl6}
N 1460 840 1280 840 {lab=wl6}
N 1280 840 1100 840 {lab=wl6}
N 1100 840 920 840 {lab=wl6}
N 920 840 740 840 {lab=wl6}
N 740 840 560 840 {lab=wl6}
N 560 840 380 840 {lab=wl6}
N 380 840 200 840 {lab=wl6}
N 1700 950 1700 980 {lab=wl7}
N 1700 980 1460 980 {lab=wl7}
N 1460 980 1280 980 {lab=wl7}
N 1280 980 1100 980 {lab=wl7}
N 1100 980 920 980 {lab=wl7}
N 920 980 740 980 {lab=wl7}
N 740 980 560 980 {lab=wl7}
N 560 980 380 980 {lab=wl7}
N 380 980 200 980 {lab=wl7}
N 200 0 380 0 {lab=wwl0}
N 380 0 560 0 {lab=wwl0}
N 560 0 740 0 {lab=wwl0}
N 740 0 920 0 {lab=wwl0}
N 920 0 1100 0 {lab=wwl0}
N 1100 0 1280 0 {lab=wwl0}
N 1280 0 1460 0 {lab=wwl0}
N 200 140 380 140 {lab=wwl1}
N 380 140 560 140 {lab=wwl1}
N 560 140 740 140 {lab=wwl1}
N 740 140 920 140 {lab=wwl1}
N 920 140 1100 140 {lab=wwl1}
N 1100 140 1280 140 {lab=wwl1}
N 1280 140 1460 140 {lab=wwl1}
N 200 280 380 280 {lab=wwl2}
N 380 280 560 280 {lab=wwl2}
N 560 280 740 280 {lab=wwl2}
N 740 280 920 280 {lab=wwl2}
N 920 280 1100 280 {lab=wwl2}
N 1100 280 1280 280 {lab=wwl2}
N 1280 280 1460 280 {lab=wwl2}
N 200 420 380 420 {lab=wwl3}
N 380 420 560 420 {lab=wwl3}
N 560 420 740 420 {lab=wwl3}
N 740 420 920 420 {lab=wwl3}
N 920 420 1100 420 {lab=wwl3}
N 1100 420 1280 420 {lab=wwl3}
N 1280 420 1460 420 {lab=wwl3}
N 200 560 380 560 {lab=wwl4}
N 380 560 560 560 {lab=wwl4}
N 560 560 740 560 {lab=wwl4}
N 740 560 920 560 {lab=wwl4}
N 920 560 1100 560 {lab=wwl4}
N 1100 560 1280 560 {lab=wwl4}
N 1280 560 1460 560 {lab=wwl4}
N 200 700 380 700 {lab=wwl5}
N 380 700 560 700 {lab=wwl5}
N 560 700 740 700 {lab=wwl5}
N 740 700 920 700 {lab=wwl5}
N 920 700 1100 700 {lab=wwl5}
N 1100 700 1280 700 {lab=wwl5}
N 1280 700 1460 700 {lab=wwl5}
N 200 840 380 840 {lab=wwl6}
N 380 840 560 840 {lab=wwl6}
N 560 840 740 840 {lab=wwl6}
N 740 840 920 840 {lab=wwl6}
N 920 840 1100 840 {lab=wwl6}
N 1100 840 1280 840 {lab=wwl6}
N 1280 840 1460 840 {lab=wwl6}
N 200 980 380 980 {lab=wwl7}
N 380 980 560 980 {lab=wwl7}
N 560 980 740 980 {lab=wwl7}
N 740 980 920 980 {lab=wwl7}
N 920 980 1100 980 {lab=wwl7}
N 1100 980 1280 980 {lab=wwl7}
N 1280 980 1460 980 {lab=wwl7}
N 200 0 200 140 {lab=blb0}
N 200 140 200 280 {lab=blb0}
N 200 280 200 420 {lab=blb0}
N 200 420 200 560 {lab=blb0}
N 200 560 200 700 {lab=blb0}
N 200 700 200 840 {lab=blb0}
N 200 840 200 980 {lab=blb0}
N 380 0 380 140 {lab=blb1}
N 380 140 380 280 {lab=blb1}
N 380 280 380 420 {lab=blb1}
N 380 420 380 560 {lab=blb1}
N 380 560 380 700 {lab=blb1}
N 380 700 380 840 {lab=blb1}
N 380 840 380 980 {lab=blb1}
N 560 0 560 140 {lab=blb2}
N 560 140 560 280 {lab=blb2}
N 560 280 560 420 {lab=blb2}
N 560 420 560 560 {lab=blb2}
N 560 560 560 700 {lab=blb2}
N 560 700 560 840 {lab=blb2}
N 560 840 560 980 {lab=blb2}
N 740 0 740 140 {lab=blb3}
N 740 140 740 280 {lab=blb3}
N 740 280 740 420 {lab=blb3}
N 740 420 740 560 {lab=blb3}
N 740 560 740 700 {lab=blb3}
N 740 700 740 840 {lab=blb3}
N 740 840 740 980 {lab=blb3}
N 920 0 920 140 {lab=blb4}
N 920 140 920 280 {lab=blb4}
N 920 280 920 420 {lab=blb4}
N 920 420 920 560 {lab=blb4}
N 920 560 920 700 {lab=blb4}
N 920 700 920 840 {lab=blb4}
N 920 840 920 980 {lab=blb4}
N 1100 0 1100 140 {lab=blb5}
N 1100 140 1100 280 {lab=blb5}
N 1100 280 1100 420 {lab=blb5}
N 1100 420 1100 560 {lab=blb5}
N 1100 560 1100 700 {lab=blb5}
N 1100 700 1100 840 {lab=blb5}
N 1100 840 1100 980 {lab=blb5}
N 1280 0 1280 140 {lab=blb6}
N 1280 140 1280 280 {lab=blb6}
N 1280 280 1280 420 {lab=blb6}
N 1280 420 1280 560 {lab=blb6}
N 1280 560 1280 700 {lab=blb6}
N 1280 700 1280 840 {lab=blb6}
N 1280 840 1280 980 {lab=blb6}
N 1460 0 1460 140 {lab=blb7}
N 1460 140 1460 280 {lab=blb7}
N 1460 280 1460 420 {lab=blb7}
N 1460 420 1460 560 {lab=blb7}
N 1460 560 1460 700 {lab=blb7}
N 1460 700 1460 840 {lab=blb7}
N 1460 840 1460 980 {lab=blb7}
C {devices/vdd.sym} 200 1190 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 200 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 380 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 560 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 740 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 920 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1100 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1280 -80 0 0 {name=l_vdd lab=VDD}
C {devices/vdd.sym} 1460 -80 0 0 {name=l_vdd lab=VDD}
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
C {devices/gnd.sym} 200 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 380 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 560 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 740 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 920 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1100 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1280 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1460 -150 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 310 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 450 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 590 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 730 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 870 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1700 1010 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 30 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 170 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 310 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 450 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 590 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 730 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 870 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 1820 1010 0 0 {name=l_0 lab=GND}
C {devices/gnd.sym} 320 1190 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 200 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 380 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 560 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 740 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 920 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1100 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1280 -80 0 0 {name=l_vss lab=VSS}
C {devices/gnd.sym} 1460 -80 0 0 {name=l_vss lab=VSS}
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
C {devices/lab_pin.sym} 200 -80 0 0 {name=l_pre sig_type=std_logic lab=pre}
C {devices/lab_pin.sym} 200 -80 0 0 {name=l_bl0 sig_type=std_logic lab=bl0}
C {devices/lab_pin.sym} 380 -80 0 0 {name=l_bl1 sig_type=std_logic lab=bl1}
C {devices/lab_pin.sym} 560 -80 0 0 {name=l_bl2 sig_type=std_logic lab=bl2}
C {devices/lab_pin.sym} 740 -80 0 0 {name=l_bl3 sig_type=std_logic lab=bl3}
C {devices/lab_pin.sym} 920 -80 0 0 {name=l_bl4 sig_type=std_logic lab=bl4}
C {devices/lab_pin.sym} 1100 -80 0 0 {name=l_bl5 sig_type=std_logic lab=bl5}
C {devices/lab_pin.sym} 1280 -80 0 0 {name=l_bl6 sig_type=std_logic lab=bl6}
C {devices/lab_pin.sym} 1460 -80 0 0 {name=l_bl7 sig_type=std_logic lab=bl7}
C {devices/lab_pin.sym} 1700 -30 0 0 {name=l_wl0 sig_type=std_logic lab=wl0}
C {devices/lab_pin.sym} 1700 110 0 0 {name=l_wl1 sig_type=std_logic lab=wl1}
C {devices/lab_pin.sym} 1700 250 0 0 {name=l_wl2 sig_type=std_logic lab=wl2}
C {devices/lab_pin.sym} 1700 390 0 0 {name=l_wl3 sig_type=std_logic lab=wl3}
C {devices/lab_pin.sym} 1700 530 0 0 {name=l_wl4 sig_type=std_logic lab=wl4}
C {devices/lab_pin.sym} 1700 670 0 0 {name=l_wl5 sig_type=std_logic lab=wl5}
C {devices/lab_pin.sym} 1700 810 0 0 {name=l_wl6 sig_type=std_logic lab=wl6}
C {devices/lab_pin.sym} 1700 950 0 0 {name=l_wl7 sig_type=std_logic lab=wl7}
C {devices/lab_pin.sym} 1820 -30 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_wwl0 sig_type=std_logic lab=wwl0}
C {devices/lab_pin.sym} 1820 110 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 200 140 0 0 {name=l_wwl1 sig_type=std_logic lab=wwl1}
C {devices/lab_pin.sym} 1820 250 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 200 280 0 0 {name=l_wwl2 sig_type=std_logic lab=wwl2}
C {devices/lab_pin.sym} 1820 390 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 200 420 0 0 {name=l_wwl3 sig_type=std_logic lab=wwl3}
C {devices/lab_pin.sym} 1820 530 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 200 560 0 0 {name=l_wwl4 sig_type=std_logic lab=wwl4}
C {devices/lab_pin.sym} 1820 670 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 200 700 0 0 {name=l_wwl5 sig_type=std_logic lab=wwl5}
C {devices/lab_pin.sym} 1820 810 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 200 840 0 0 {name=l_wwl6 sig_type=std_logic lab=wwl6}
C {devices/lab_pin.sym} 1820 950 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 200 980 0 0 {name=l_wwl7 sig_type=std_logic lab=wwl7}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_blb0 sig_type=std_logic lab=blb0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_q_r0c0 sig_type=std_logic lab=q_r0c0}
C {devices/lab_pin.sym} 200 0 0 0 {name=l_qb_r0c0 sig_type=std_logic lab=qb_r0c0}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_blb1 sig_type=std_logic lab=blb1}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_q_r0c1 sig_type=std_logic lab=q_r0c1}
C {devices/lab_pin.sym} 380 0 0 0 {name=l_qb_r0c1 sig_type=std_logic lab=qb_r0c1}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_blb2 sig_type=std_logic lab=blb2}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_q_r0c2 sig_type=std_logic lab=q_r0c2}
C {devices/lab_pin.sym} 560 0 0 0 {name=l_qb_r0c2 sig_type=std_logic lab=qb_r0c2}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_blb3 sig_type=std_logic lab=blb3}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_q_r0c3 sig_type=std_logic lab=q_r0c3}
C {devices/lab_pin.sym} 740 0 0 0 {name=l_qb_r0c3 sig_type=std_logic lab=qb_r0c3}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_blb4 sig_type=std_logic lab=blb4}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_q_r0c4 sig_type=std_logic lab=q_r0c4}
C {devices/lab_pin.sym} 920 0 0 0 {name=l_qb_r0c4 sig_type=std_logic lab=qb_r0c4}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_blb5 sig_type=std_logic lab=blb5}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_q_r0c5 sig_type=std_logic lab=q_r0c5}
C {devices/lab_pin.sym} 1100 0 0 0 {name=l_qb_r0c5 sig_type=std_logic lab=qb_r0c5}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_blb6 sig_type=std_logic lab=blb6}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_q_r0c6 sig_type=std_logic lab=q_r0c6}
C {devices/lab_pin.sym} 1280 0 0 0 {name=l_qb_r0c6 sig_type=std_logic lab=qb_r0c6}
C {devices/lab_pin.sym} 1460 0 0 0 {name=l_blb7 sig_type=std_logic lab=blb7}
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
