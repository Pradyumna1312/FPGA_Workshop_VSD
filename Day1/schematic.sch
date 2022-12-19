# File saved with Nlview 7.0r4  2019-12-20 bk=1.5203 VDI=41 GEI=36 GUI=JA:10.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new counter_noVIO work:counter_noVIO:NOFILE -nosplit
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol CARRY4 hdi_primitives BOX pin CI input.left pin CYINIT input.left pinBus CO output.right [3:0] pinBus O output.right [3:0] pinBus DI input.left [3:0] pinBus S input.left [3:0] fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 1160
load port rst input -pg 1 -lvl 0 -x 0 -y 1500
load portBus count output [7:0] -attr @name count[7:0] -pg 1 -lvl 34 -x 7790 -y 1070
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 240 -y 1160
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1160
load inst count[0]_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 16 -x 4350 -y 1360
load inst count[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -x 4690 -y 1330
load inst count[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 20 -x 5050 -y 1290
load inst count[3]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 22 -x 5430 -y 1350
load inst count[4]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 24 -x 5850 -y 1330
load inst count[5]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 26 -x 6270 -y 1310
load inst count[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 29 -x 6870 -y 1560
load inst count[7]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 31 -x 7250 -y 1500
load inst count[7]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 28 -x 6710 -y 1330
load inst count_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1070
load inst count_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1140
load inst count_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1210
load inst count_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1280
load inst count_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1350
load inst count_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1450
load inst count_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1590
load inst count_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 33 -x 7590 -y 1660
load inst count_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 17 -x 4520 -y 1360
load inst count_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 19 -x 4860 -y 1300
load inst count_reg[2] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 21 -x 5220 -y 1310
load inst count_reg[3] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 23 -x 5620 -y 1400
load inst count_reg[4] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 25 -x 6040 -y 1380
load inst count_reg[5] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 27 -x 6480 -y 1530
load inst count_reg[6] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 30 -x 7060 -y 1650
load inst count_reg[7] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 32 -x 7440 -y 1690
load inst delay_count[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 240 -y 1470
load inst delay_count[0]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -x 4000 -y 1050
load inst delay_count[0]_i_4 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -x 810 -y 1390
load inst delay_count[0]_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3760 -y 700
load inst delay_count[0]_i_6 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3760 -y 870
load inst delay_count[0]_i_7 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3760 -y 1050
load inst delay_count[0]_i_8 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3760 -y 1270
load inst delay_count_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 530 -y 1190
load inst delay_count_reg[0]_i_2 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr DI @attr V=B\"0001\" -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 1110 -y 920
load inst delay_count_reg[10] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1460 -y 990
load inst delay_count_reg[11] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1460 -y 1140
load inst delay_count_reg[12] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1810 -y 110
load inst delay_count_reg[12]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 8 -x 2180 -y 720
load inst delay_count_reg[13] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1810 -y 260
load inst delay_count_reg[14] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1810 -y 460
load inst delay_count_reg[15] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1810 -y 610
load inst delay_count_reg[16] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2180 -y 90
load inst delay_count_reg[16]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 9 -x 2550 -y 740
load inst delay_count_reg[17] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2180 -y 240
load inst delay_count_reg[18] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2180 -y 440
load inst delay_count_reg[19] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2180 -y 590
load inst delay_count_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 810 -y 930
load inst delay_count_reg[20] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2550 -y 130
load inst delay_count_reg[20]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 10 -x 2860 -y 720
load inst delay_count_reg[21] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2550 -y 280
load inst delay_count_reg[22] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2550 -y 460
load inst delay_count_reg[23] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2550 -y 610
load inst delay_count_reg[24] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 12 -x 3480 -y 900
load inst delay_count_reg[24]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 11 -x 3130 -y 720
load inst delay_count_reg[25] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 12 -x 3480 -y 1100
load inst delay_count_reg[2] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 810 -y 1110
load inst delay_count_reg[3] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 810 -y 1290
load inst delay_count_reg[4] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1110 -y 280
load inst delay_count_reg[4]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 6 -x 1460 -y 700
load inst delay_count_reg[5] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1110 -y 430
load inst delay_count_reg[6] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1110 -y 580
load inst delay_count_reg[7] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 1110 -y 730
load inst delay_count_reg[8] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1460 -y 400
load inst delay_count_reg[8]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1810 -y 720
load inst delay_count_reg[9] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1460 -y 600
load inst div_clk_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -x 4190 -y 1230
load inst div_clk_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 16 -x 4350 -y 1230
load inst rst_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1500
load net <const0> -ground -pin delay_count_reg[0]_i_2 CI -pin delay_count_reg[0]_i_2 CYINIT -pin delay_count_reg[0]_i_2 DI[3] -pin delay_count_reg[0]_i_2 DI[2] -pin delay_count_reg[0]_i_2 DI[1] -pin delay_count_reg[12]_i_1 CYINIT -pin delay_count_reg[12]_i_1 DI[3] -pin delay_count_reg[12]_i_1 DI[2] -pin delay_count_reg[12]_i_1 DI[1] -pin delay_count_reg[12]_i_1 DI[0] -pin delay_count_reg[16]_i_1 CYINIT -pin delay_count_reg[16]_i_1 DI[3] -pin delay_count_reg[16]_i_1 DI[2] -pin delay_count_reg[16]_i_1 DI[1] -pin delay_count_reg[16]_i_1 DI[0] -pin delay_count_reg[20]_i_1 CYINIT -pin delay_count_reg[20]_i_1 DI[3] -pin delay_count_reg[20]_i_1 DI[2] -pin delay_count_reg[20]_i_1 DI[1] -pin delay_count_reg[20]_i_1 DI[0] -pin delay_count_reg[24]_i_1 CYINIT -pin delay_count_reg[24]_i_1 DI[3] -pin delay_count_reg[24]_i_1 DI[2] -pin delay_count_reg[24]_i_1 DI[1] -pin delay_count_reg[24]_i_1 DI[0] -pin delay_count_reg[24]_i_1 S[3] -pin delay_count_reg[24]_i_1 S[2] -pin delay_count_reg[4]_i_1 CYINIT -pin delay_count_reg[4]_i_1 DI[3] -pin delay_count_reg[4]_i_1 DI[2] -pin delay_count_reg[4]_i_1 DI[1] -pin delay_count_reg[4]_i_1 DI[0] -pin delay_count_reg[8]_i_1 CYINIT -pin delay_count_reg[8]_i_1 DI[3] -pin delay_count_reg[8]_i_1 DI[2] -pin delay_count_reg[8]_i_1 DI[1] -pin delay_count_reg[8]_i_1 DI[0] -pin div_clk_reg R
load net <const1> -power -attr @rip(#000000) 0 -pin count_reg[0] CE -pin count_reg[1] CE -pin count_reg[2] CE -pin count_reg[3] CE -pin count_reg[4] CE -pin count_reg[5] CE -pin count_reg[6] CE -pin count_reg[7] CE -pin delay_count_reg[0] CE -pin delay_count_reg[0]_i_2 DI[0] -pin delay_count_reg[10] CE -pin delay_count_reg[11] CE -pin delay_count_reg[12] CE -pin delay_count_reg[13] CE -pin delay_count_reg[14] CE -pin delay_count_reg[15] CE -pin delay_count_reg[16] CE -pin delay_count_reg[17] CE -pin delay_count_reg[18] CE -pin delay_count_reg[19] CE -pin delay_count_reg[1] CE -pin delay_count_reg[20] CE -pin delay_count_reg[21] CE -pin delay_count_reg[22] CE -pin delay_count_reg[23] CE -pin delay_count_reg[24] CE -pin delay_count_reg[25] CE -pin delay_count_reg[2] CE -pin delay_count_reg[3] CE -pin delay_count_reg[4] CE -pin delay_count_reg[5] CE -pin delay_count_reg[6] CE -pin delay_count_reg[7] CE -pin delay_count_reg[8] CE -pin delay_count_reg[9] CE -pin div_clk_reg CE
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 1160
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 1160
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin delay_count_reg[0] C -pin delay_count_reg[10] C -pin delay_count_reg[11] C -pin delay_count_reg[12] C -pin delay_count_reg[13] C -pin delay_count_reg[14] C -pin delay_count_reg[15] C -pin delay_count_reg[16] C -pin delay_count_reg[17] C -pin delay_count_reg[18] C -pin delay_count_reg[19] C -pin delay_count_reg[1] C -pin delay_count_reg[20] C -pin delay_count_reg[21] C -pin delay_count_reg[22] C -pin delay_count_reg[23] C -pin delay_count_reg[24] C -pin delay_count_reg[25] C -pin delay_count_reg[2] C -pin delay_count_reg[3] C -pin delay_count_reg[4] C -pin delay_count_reg[5] C -pin delay_count_reg[6] C -pin delay_count_reg[7] C -pin delay_count_reg[8] C -pin delay_count_reg[9] C -pin div_clk_reg C
netloc clk_IBUF_BUFG 1 2 14 420 1270 680 810 960 810 1330 500 1660 360 2070 320 2420 890 NJ 890 NJ 890 3390 1200 NJ 1200 NJ 1200 NJ 1200 N
load net count[0] -attr @rip(#000000) 0 -port count[0] -pin count_OBUF[0]_inst O
load net count[1] -attr @rip(#000000) 1 -port count[1] -pin count_OBUF[1]_inst O
load net count[2] -attr @rip(#000000) 2 -port count[2] -pin count_OBUF[2]_inst O
load net count[3] -attr @rip(#000000) 3 -port count[3] -pin count_OBUF[3]_inst O
load net count[4] -attr @rip(#000000) 4 -port count[4] -pin count_OBUF[4]_inst O
load net count[5] -attr @rip(#000000) 5 -port count[5] -pin count_OBUF[5]_inst O
load net count[6] -attr @rip(#000000) 6 -port count[6] -pin count_OBUF[6]_inst O
load net count[7] -attr @rip(#000000) 7 -port count[7] -pin count_OBUF[7]_inst O
load net count[7]_i_2_n_0 -pin count[6]_i_1 I0 -pin count[7]_i_1 I1 -pin count[7]_i_2 O
netloc count[7]_i_2_n_0 1 28 3 6810 1530 NJ 1530 NJ
load net count_OBUF[0] -pin count[0]_i_1 I0 -pin count[1]_i_1 I0 -pin count[2]_i_1 I1 -pin count[3]_i_1 I1 -pin count[4]_i_1 I2 -pin count[5]_i_1 I2 -pin count[7]_i_2 I2 -pin count_OBUF[0]_inst I -pin count_reg[0] Q
netloc count_OBUF[0] 1 15 18 4310 1460 NJ 1460 4630 1400 NJ 1400 4990 1420 NJ 1420 5350 1260 NJ 1260 5790 1260 NJ 1260 6230 1260 NJ 1260 6670 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ
load net count_OBUF[1] -pin count[1]_i_1 I1 -pin count[2]_i_1 I0 -pin count[3]_i_1 I2 -pin count[4]_i_1 I1 -pin count[5]_i_1 I3 -pin count[7]_i_2 I3 -pin count_OBUF[1]_inst I -pin count_reg[1] Q
netloc count_OBUF[1] 1 17 16 4650 1420 NJ 1420 4970 1440 NJ 1440 5370 1480 NJ 1480 5750 1460 NJ 1460 6190 1480 6410J 1430 6610 1140 NJ 1140 NJ 1140 NJ 1140 NJ 1140 NJ
load net count_OBUF[2] -pin count[2]_i_1 I2 -pin count[3]_i_1 I0 -pin count[4]_i_1 I3 -pin count[5]_i_1 I1 -pin count[7]_i_2 I1 -pin count_OBUF[2]_inst I -pin count_reg[2] Q
netloc count_OBUF[2] 1 19 14 5010 1400 NJ 1400 5330 1240 NJ 1240 5770 1480 NJ 1480 6210 1460 6370J 1410 6590 1210 NJ 1210 NJ 1210 NJ 1210 NJ 1210 NJ
load net count_OBUF[3] -pin count[3]_i_1 I3 -pin count[4]_i_1 I0 -pin count[5]_i_1 I4 -pin count[7]_i_2 I4 -pin count_OBUF[3]_inst I -pin count_reg[3] Q
netloc count_OBUF[3] 1 21 12 5390 1280 NJ 1280 5730 1280 NJ 1280 6170 1280 NJ 1280 6630 1280 NJ 1280 NJ 1280 NJ 1280 NJ 1280 NJ
load net count_OBUF[4] -pin count[4]_i_1 I4 -pin count[5]_i_1 I0 -pin count[7]_i_2 I0 -pin count_OBUF[4]_inst I -pin count_reg[4] Q
netloc count_OBUF[4] 1 23 10 5810 1240 NJ 1240 6150 1240 NJ 1240 6650 1300 NJ 1300 NJ 1300 NJ 1300 NJ 1300 7550J
load net count_OBUF[5] -pin count[5]_i_1 I5 -pin count[7]_i_2 I5 -pin count_OBUF[5]_inst I -pin count_reg[5] Q
netloc count_OBUF[5] 1 25 8 6230 1610 NJ 1610 6650 1480 NJ 1480 NJ 1480 7170J 1450 NJ 1450 NJ
load net count_OBUF[6] -pin count[6]_i_1 I1 -pin count[7]_i_1 I0 -pin count_OBUF[6]_inst I -pin count_reg[6] Q
netloc count_OBUF[6] 1 28 5 6830 1510 NJ 1510 7190 1590 NJ 1590 NJ
load net count_OBUF[7] -pin count[7]_i_1 I2 -pin count_OBUF[7]_inst I -pin count_reg[7] Q
netloc count_OBUF[7] 1 30 3 7210 1470 NJ 1470 7550
load net delay_count[0]_i_1_n_0 -pin delay_count[0]_i_1 O -pin delay_count_reg[0] R -pin delay_count_reg[10] R -pin delay_count_reg[11] R -pin delay_count_reg[12] R -pin delay_count_reg[13] R -pin delay_count_reg[14] R -pin delay_count_reg[15] R -pin delay_count_reg[16] R -pin delay_count_reg[17] R -pin delay_count_reg[18] R -pin delay_count_reg[19] R -pin delay_count_reg[1] R -pin delay_count_reg[20] R -pin delay_count_reg[21] R -pin delay_count_reg[22] R -pin delay_count_reg[23] R -pin delay_count_reg[24] R -pin delay_count_reg[25] R -pin delay_count_reg[2] R -pin delay_count_reg[3] R -pin delay_count_reg[4] R -pin delay_count_reg[5] R -pin delay_count_reg[6] R -pin delay_count_reg[7] R -pin delay_count_reg[8] R -pin delay_count_reg[9] R
netloc delay_count[0]_i_1_n_0 1 2 10 440 1310 700 830 980 870 1350 850 1700 850 2050 850 2440 910 NJ 910 NJ 910 3310
load net delay_count[0]_i_4_n_0 -attr @rip(#000000) 0 -pin delay_count[0]_i_4 O -pin delay_count_reg[0]_i_2 S[0]
load net delay_count[0]_i_5_n_0 -pin delay_count[0]_i_3 I0 -pin delay_count[0]_i_5 O
netloc delay_count[0]_i_5_n_0 1 13 1 3930 750n
load net delay_count[0]_i_6_n_0 -pin delay_count[0]_i_3 I1 -pin delay_count[0]_i_6 O
netloc delay_count[0]_i_6_n_0 1 13 1 3910 920n
load net delay_count[0]_i_7_n_0 -pin delay_count[0]_i_3 I2 -pin delay_count[0]_i_7 O
netloc delay_count[0]_i_7_n_0 1 13 1 N 1100
load net delay_count[0]_i_8_n_0 -pin delay_count[0]_i_3 I3 -pin delay_count[0]_i_8 O
netloc delay_count[0]_i_8_n_0 1 13 1 3910 1120n
load net delay_count_reg[0] -pin delay_count[0]_i_3 I4 -pin delay_count[0]_i_4 I0 -pin delay_count_reg[0] Q
netloc delay_count_reg[0] 1 3 11 660 1190 NJ 1190 1350J 1220 NJ 1220 NJ 1220 NJ 1220 NJ 1220 NJ 1220 NJ 1220 NJ 1220 3930
load net delay_count_reg[0]_i_2_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[0]_i_2 CO[3] -pin delay_count_reg[4]_i_1 CI
load net delay_count_reg[0]_i_2_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[0]_i_2 CO[2]
load net delay_count_reg[0]_i_2_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[0]_i_2 CO[1]
load net delay_count_reg[0]_i_2_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[0]_i_2 CO[0]
load net delay_count_reg[0]_i_2_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[0]_i_2 O[3] -pin delay_count_reg[3] D
load net delay_count_reg[0]_i_2_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[0]_i_2 O[2] -pin delay_count_reg[2] D
load net delay_count_reg[0]_i_2_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[0]_i_2 O[1] -pin delay_count_reg[1] D
load net delay_count_reg[0]_i_2_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[0] D -pin delay_count_reg[0]_i_2 O[0]
load net delay_count_reg[10] -attr @rip(#000000) 2 -pin delay_count[0]_i_8 I0 -pin delay_count_reg[10] Q -pin delay_count_reg[8]_i_1 S[2]
load net delay_count_reg[11] -attr @rip(#000000) 3 -pin delay_count[0]_i_8 I1 -pin delay_count_reg[11] Q -pin delay_count_reg[8]_i_1 S[3]
load net delay_count_reg[12] -attr @rip(#000000) 0 -pin delay_count[0]_i_8 I5 -pin delay_count_reg[12] Q -pin delay_count_reg[12]_i_1 S[0]
load net delay_count_reg[12]_i_1_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[12]_i_1 CO[3] -pin delay_count_reg[16]_i_1 CI
load net delay_count_reg[12]_i_1_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[12]_i_1 CO[2]
load net delay_count_reg[12]_i_1_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[12]_i_1 CO[1]
load net delay_count_reg[12]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[12]_i_1 CO[0]
load net delay_count_reg[12]_i_1_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[12]_i_1 O[3] -pin delay_count_reg[15] D
load net delay_count_reg[12]_i_1_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[12]_i_1 O[2] -pin delay_count_reg[14] D
load net delay_count_reg[12]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[12]_i_1 O[1] -pin delay_count_reg[13] D
load net delay_count_reg[12]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[12] D -pin delay_count_reg[12]_i_1 O[0]
load net delay_count_reg[13] -attr @rip(#000000) 1 -pin delay_count[0]_i_8 I4 -pin delay_count_reg[12]_i_1 S[1] -pin delay_count_reg[13] Q
load net delay_count_reg[14] -attr @rip(#000000) 2 -pin delay_count[0]_i_7 I2 -pin delay_count_reg[12]_i_1 S[2] -pin delay_count_reg[14] Q
load net delay_count_reg[15] -attr @rip(#000000) 3 -pin delay_count[0]_i_7 I3 -pin delay_count_reg[12]_i_1 S[3] -pin delay_count_reg[15] Q
load net delay_count_reg[16] -attr @rip(#000000) 0 -pin delay_count[0]_i_7 I0 -pin delay_count_reg[16] Q -pin delay_count_reg[16]_i_1 S[0]
load net delay_count_reg[16]_i_1_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[16]_i_1 CO[3] -pin delay_count_reg[20]_i_1 CI
load net delay_count_reg[16]_i_1_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[16]_i_1 CO[2]
load net delay_count_reg[16]_i_1_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[16]_i_1 CO[1]
load net delay_count_reg[16]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[16]_i_1 CO[0]
load net delay_count_reg[16]_i_1_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[16]_i_1 O[3] -pin delay_count_reg[19] D
load net delay_count_reg[16]_i_1_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[16]_i_1 O[2] -pin delay_count_reg[18] D
load net delay_count_reg[16]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[16]_i_1 O[1] -pin delay_count_reg[17] D
load net delay_count_reg[16]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[16] D -pin delay_count_reg[16]_i_1 O[0]
load net delay_count_reg[17] -attr @rip(#000000) 1 -pin delay_count[0]_i_7 I1 -pin delay_count_reg[16]_i_1 S[1] -pin delay_count_reg[17] Q
load net delay_count_reg[18] -attr @rip(#000000) 2 -pin delay_count[0]_i_7 I5 -pin delay_count_reg[16]_i_1 S[2] -pin delay_count_reg[18] Q
load net delay_count_reg[19] -attr @rip(#000000) 3 -pin delay_count[0]_i_7 I4 -pin delay_count_reg[16]_i_1 S[3] -pin delay_count_reg[19] Q
load net delay_count_reg[1] -attr @rip(#000000) 1 -pin delay_count[0]_i_3 I5 -pin delay_count_reg[0]_i_2 S[1] -pin delay_count_reg[1] Q
load net delay_count_reg[20] -attr @rip(#000000) 0 -pin delay_count[0]_i_6 I2 -pin delay_count_reg[20] Q -pin delay_count_reg[20]_i_1 S[0]
load net delay_count_reg[20]_i_1_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[20]_i_1 CO[3] -pin delay_count_reg[24]_i_1 CI
load net delay_count_reg[20]_i_1_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[20]_i_1 CO[2]
load net delay_count_reg[20]_i_1_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[20]_i_1 CO[1]
load net delay_count_reg[20]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[20]_i_1 CO[0]
load net delay_count_reg[20]_i_1_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[20]_i_1 O[3] -pin delay_count_reg[23] D
load net delay_count_reg[20]_i_1_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[20]_i_1 O[2] -pin delay_count_reg[22] D
load net delay_count_reg[20]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[20]_i_1 O[1] -pin delay_count_reg[21] D
load net delay_count_reg[20]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[20] D -pin delay_count_reg[20]_i_1 O[0]
load net delay_count_reg[21] -attr @rip(#000000) 1 -pin delay_count[0]_i_6 I3 -pin delay_count_reg[20]_i_1 S[1] -pin delay_count_reg[21] Q
load net delay_count_reg[22] -attr @rip(#000000) 2 -pin delay_count[0]_i_6 I0 -pin delay_count_reg[20]_i_1 S[2] -pin delay_count_reg[22] Q
load net delay_count_reg[23] -attr @rip(#000000) 3 -pin delay_count[0]_i_6 I1 -pin delay_count_reg[20]_i_1 S[3] -pin delay_count_reg[23] Q
load net delay_count_reg[24] -attr @rip(#000000) 0 -pin delay_count[0]_i_6 I5 -pin delay_count_reg[24] Q -pin delay_count_reg[24]_i_1 S[0]
load net delay_count_reg[24]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[24]_i_1 CO[0]
netloc delay_count_reg[24]_i_1_n_3 1 11 1 N 750
load net delay_count_reg[24]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[24]_i_1 O[1] -pin delay_count_reg[25] D
load net delay_count_reg[24]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[24] D -pin delay_count_reg[24]_i_1 O[0]
load net delay_count_reg[25] -attr @rip(#000000) 1 -pin delay_count[0]_i_6 I4 -pin delay_count_reg[24]_i_1 S[1] -pin delay_count_reg[25] Q
load net delay_count_reg[2] -attr @rip(#000000) 2 -pin delay_count[0]_i_5 I2 -pin delay_count_reg[0]_i_2 S[2] -pin delay_count_reg[2] Q
load net delay_count_reg[3] -attr @rip(#000000) 3 -pin delay_count[0]_i_5 I3 -pin delay_count_reg[0]_i_2 S[3] -pin delay_count_reg[3] Q
load net delay_count_reg[4] -attr @rip(#000000) 0 -pin delay_count[0]_i_5 I0 -pin delay_count_reg[4] Q -pin delay_count_reg[4]_i_1 S[0]
load net delay_count_reg[4]_i_1_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[4]_i_1 CO[3] -pin delay_count_reg[8]_i_1 CI
load net delay_count_reg[4]_i_1_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[4]_i_1 CO[2]
load net delay_count_reg[4]_i_1_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[4]_i_1 CO[1]
load net delay_count_reg[4]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[4]_i_1 CO[0]
load net delay_count_reg[4]_i_1_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[4]_i_1 O[3] -pin delay_count_reg[7] D
load net delay_count_reg[4]_i_1_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[4]_i_1 O[2] -pin delay_count_reg[6] D
load net delay_count_reg[4]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[4]_i_1 O[1] -pin delay_count_reg[5] D
load net delay_count_reg[4]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[4] D -pin delay_count_reg[4]_i_1 O[0]
load net delay_count_reg[5] -attr @rip(#000000) 1 -pin delay_count[0]_i_5 I1 -pin delay_count_reg[4]_i_1 S[1] -pin delay_count_reg[5] Q
load net delay_count_reg[6] -attr @rip(#000000) 2 -pin delay_count[0]_i_5 I5 -pin delay_count_reg[4]_i_1 S[2] -pin delay_count_reg[6] Q
load net delay_count_reg[7] -attr @rip(#000000) 3 -pin delay_count[0]_i_5 I4 -pin delay_count_reg[4]_i_1 S[3] -pin delay_count_reg[7] Q
load net delay_count_reg[8] -attr @rip(#000000) 0 -pin delay_count[0]_i_8 I2 -pin delay_count_reg[8] Q -pin delay_count_reg[8]_i_1 S[0]
load net delay_count_reg[8]_i_1_n_0 -attr @rip(#000000) CO[3] -pin delay_count_reg[12]_i_1 CI -pin delay_count_reg[8]_i_1 CO[3]
load net delay_count_reg[8]_i_1_n_1 -attr @rip(#000000) CO[2] -pin delay_count_reg[8]_i_1 CO[2]
load net delay_count_reg[8]_i_1_n_2 -attr @rip(#000000) CO[1] -pin delay_count_reg[8]_i_1 CO[1]
load net delay_count_reg[8]_i_1_n_3 -attr @rip(#000000) CO[0] -pin delay_count_reg[8]_i_1 CO[0]
load net delay_count_reg[8]_i_1_n_4 -attr @rip(#000000) O[3] -pin delay_count_reg[11] D -pin delay_count_reg[8]_i_1 O[3]
load net delay_count_reg[8]_i_1_n_5 -attr @rip(#000000) O[2] -pin delay_count_reg[10] D -pin delay_count_reg[8]_i_1 O[2]
load net delay_count_reg[8]_i_1_n_6 -attr @rip(#000000) O[1] -pin delay_count_reg[8]_i_1 O[1] -pin delay_count_reg[9] D
load net delay_count_reg[8]_i_1_n_7 -attr @rip(#000000) O[0] -pin delay_count_reg[8] D -pin delay_count_reg[8]_i_1 O[0]
load net delay_count_reg[9] -attr @rip(#000000) 1 -pin delay_count[0]_i_8 I3 -pin delay_count_reg[8]_i_1 S[1] -pin delay_count_reg[9] Q
load net div_clk -pin delay_count[0]_i_1 I0 -pin delay_count[0]_i_3 O -pin div_clk_i_1 I1
netloc div_clk 1 1 14 170 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 3690J 1240 NJ 1240 4130
load net div_clk_i_1_n_0 -pin div_clk_i_1 O -pin div_clk_reg D
netloc div_clk_i_1_n_0 1 15 1 4290 1240n
load net div_clk_reg_n_0 -pin count_reg[0] C -pin count_reg[1] C -pin count_reg[2] C -pin count_reg[3] C -pin count_reg[4] C -pin count_reg[5] C -pin count_reg[6] C -pin count_reg[7] C -pin div_clk_i_1 I0 -pin div_clk_reg Q
netloc div_clk_reg_n_0 1 14 18 4150 1330 NJ 1330 4450 1230 NJ 1230 4790 1200 NJ 1200 5150 1210 NJ 1210 5550 1300 NJ 1300 5970 1500 NJ 1500 6410 1630 NJ 1630 NJ 1630 6970 1550 7170J 1610 7350
load net p_0_in[0] -pin count[0]_i_1 O -pin count_reg[0] D
netloc p_0_in[0] 1 16 1 NJ 1370
load net p_0_in[1] -pin count[1]_i_1 O -pin count_reg[1] D
netloc p_0_in[1] 1 18 1 4790 1310n
load net p_0_in[2] -pin count[2]_i_1 O -pin count_reg[2] D
netloc p_0_in[2] 1 20 1 N 1320
load net p_0_in[3] -pin count[3]_i_1 O -pin count_reg[3] D
netloc p_0_in[3] 1 22 1 5530 1380n
load net p_0_in[4] -pin count[4]_i_1 O -pin count_reg[4] D
netloc p_0_in[4] 1 24 1 5950 1380n
load net p_0_in[5] -pin count[5]_i_1 O -pin count_reg[5] D
netloc p_0_in[5] 1 26 1 6390 1360n
load net p_0_in[6] -pin count[6]_i_1 O -pin count_reg[6] D
netloc p_0_in[6] 1 29 1 6990 1570n
load net p_0_in[7] -pin count[7]_i_1 O -pin count_reg[7] D
netloc p_0_in[7] 1 31 1 7370 1530n
load net rst -port rst -pin rst_IBUF_inst I
netloc rst 1 0 1 NJ 1500
load net rst_IBUF -pin count_reg[0] R -pin count_reg[1] R -pin count_reg[2] R -pin count_reg[3] R -pin count_reg[4] R -pin count_reg[5] R -pin count_reg[6] R -pin count_reg[7] R -pin delay_count[0]_i_1 I1 -pin div_clk_i_1 I2 -pin rst_IBUF_inst O
netloc rst_IBUF 1 1 31 170 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 NJ 1540 4130 1410 NJ 1410 4450 1440 NJ 1440 4810 1380 NJ 1380 5150 1460 NJ 1460 5550 1500 NJ 1500 5950 1520 NJ 1520 6370 1650 NJ 1650 NJ 1650 6970 1730 NJ 1730 7370J
load netBundle @count 8 count[7] count[6] count[5] count[4] count[3] count[2] count[1] count[0] -autobundled
netbloc @count 1 33 1 7770 1070n
load netBundle @delay_count_reg 4 delay_count_reg[0]_i_2_n_0 delay_count_reg[0]_i_2_n_1 delay_count_reg[0]_i_2_n_2 delay_count_reg[0]_i_2_n_3 -autobundled
netbloc @delay_count_reg 1 5 1 1310 710n
load netBundle @delay_count_reg_1 4 delay_count_reg[0]_i_2_n_4 delay_count_reg[0]_i_2_n_5 delay_count_reg[0]_i_2_n_6 delay_count_reg[0]_i_2_n_7 -autobundled
netbloc @delay_count_reg_1 1 2 4 460 1290 720 1010 940J 1050 1290
load netBundle @delay_count_reg_2 4 delay_count_reg[12]_i_1_n_0 delay_count_reg[12]_i_1_n_1 delay_count_reg[12]_i_1_n_2 delay_count_reg[12]_i_1_n_3 -autobundled
netbloc @delay_count_reg_2 1 8 1 2460 750
load netBundle @delay_count_reg_3 4 delay_count_reg[12]_i_1_n_4 delay_count_reg[12]_i_1_n_5 delay_count_reg[12]_i_1_n_6 delay_count_reg[12]_i_1_n_7 -autobundled
netbloc @delay_count_reg_3 1 6 3 1720 690 2030J 670 2360
load netBundle @delay_count_reg_4 4 delay_count_reg[16]_i_1_n_0 delay_count_reg[16]_i_1_n_1 delay_count_reg[16]_i_1_n_2 delay_count_reg[16]_i_1_n_3 -autobundled
netbloc @delay_count_reg_4 1 9 1 2790 730n
load netBundle @delay_count_reg_5 4 delay_count_reg[16]_i_1_n_4 delay_count_reg[16]_i_1_n_5 delay_count_reg[16]_i_1_n_6 delay_count_reg[16]_i_1_n_7 -autobundled
netbloc @delay_count_reg_5 1 7 3 2090 690 NJ 690 2730
load netBundle @delay_count_reg_6 4 delay_count_reg[20]_i_1_n_0 delay_count_reg[20]_i_1_n_1 delay_count_reg[20]_i_1_n_2 delay_count_reg[20]_i_1_n_3 -autobundled
netbloc @delay_count_reg_6 1 10 1 3060 730n
load netBundle @delay_count_reg_7 4 delay_count_reg[20]_i_1_n_4 delay_count_reg[20]_i_1_n_5 delay_count_reg[20]_i_1_n_6 delay_count_reg[20]_i_1_n_7 -autobundled
netbloc @delay_count_reg_7 1 8 3 2460 710 2750J 670 3040
load netBundle @delay_count_reg_8 2 delay_count_reg[24]_i_1_n_6 delay_count_reg[24]_i_1_n_7 -autobundled
netbloc @delay_count_reg_8 1 11 1 3330 770n
load netBundle @delay_count_reg_9 4 delay_count_reg[4]_i_1_n_0 delay_count_reg[4]_i_1_n_1 delay_count_reg[4]_i_1_n_2 delay_count_reg[4]_i_1_n_3 -autobundled
netbloc @delay_count_reg_9 1 6 1 1720 730
load netBundle @delay_count_reg_10 4 delay_count_reg[4]_i_1_n_4 delay_count_reg[4]_i_1_n_5 delay_count_reg[4]_i_1_n_6 delay_count_reg[4]_i_1_n_7 -autobundled
netbloc @delay_count_reg_10 1 4 3 1000 830 NJ 830 1640
load netBundle @delay_count_reg_11 4 delay_count_reg[8]_i_1_n_0 delay_count_reg[8]_i_1_n_1 delay_count_reg[8]_i_1_n_2 delay_count_reg[8]_i_1_n_3 -autobundled
netbloc @delay_count_reg_11 1 7 1 2090 730n
load netBundle @delay_count_reg_12 4 delay_count_reg[8]_i_1_n_4 delay_count_reg[8]_i_1_n_5 delay_count_reg[8]_i_1_n_6 delay_count_reg[8]_i_1_n_7 -autobundled
netbloc @delay_count_reg_12 1 5 3 1370 890 NJ 890 1990
load netBundle @delay_count_reg,delay_count 4 delay_count_reg[3] delay_count_reg[2] delay_count_reg[1] delay_count[0]_i_4_n_0 -autobundled
netbloc @delay_count_reg,delay_count 1 4 10 960 850 1290J 870 NJ 870 NJ 870 NJ 870 NJ 870 NJ 870 3370J 800 3670 1020 3890
load netBundle @delay_count_reg_13 4 delay_count_reg[15] delay_count_reg[14] delay_count_reg[13] delay_count_reg[12] -autobundled
netbloc @delay_count_reg_13 1 7 6 2010 1000 NJ 1000 NJ 1000 NJ 1000 NJ 1000 3650
load netBundle @delay_count_reg_14 4 delay_count_reg[19] delay_count_reg[18] delay_count_reg[17] delay_count_reg[16] -autobundled
netbloc @delay_count_reg_14 1 8 5 2380 980 NJ 980 NJ 980 NJ 980 3610
load netBundle @delay_count_reg_15 4 delay_count_reg[23] delay_count_reg[22] delay_count_reg[21] delay_count_reg[20] -autobundled
netbloc @delay_count_reg_15 1 9 4 2770 690 NJ 690 NJ 690 3650
load netBundle @delay_count_reg_16 2 delay_count_reg[25] delay_count_reg[24] -autobundled
netbloc @delay_count_reg_16 1 10 3 3060 850 3350J 780 3630
load netBundle @delay_count_reg_17 4 delay_count_reg[7] delay_count_reg[6] delay_count_reg[5] delay_count_reg[4] -autobundled
netbloc @delay_count_reg_17 1 5 8 1290 480 1640J 340 NJ 340 2400J 360 NJ 360 NJ 360 NJ 360 3690
load netBundle @delay_count_reg_18 4 delay_count_reg[11] delay_count_reg[10] delay_count_reg[9] delay_count_reg[8] -autobundled
netbloc @delay_count_reg_18 1 6 7 1680 1180 NJ 1180 NJ 1180 NJ 1180 NJ 1180 NJ 1180 3610
levelinfo -pg 1 0 40 240 530 810 1110 1460 1810 2180 2550 2860 3130 3480 3760 4000 4190 4350 4520 4690 4860 5050 5220 5430 5620 5850 6040 6270 6480 6710 6870 7060 7250 7440 7590 7790
pagesize -pg 1 -db -bbox -sgen -70 0 7920 1770
show
fullfit
#
# initialize ictrl to current module counter_noVIO work:counter_noVIO:NOFILE
ictrl init topinfo |
