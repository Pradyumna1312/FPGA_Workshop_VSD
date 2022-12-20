// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Dec 20 09:10:53 2022
// Host        : pradyumna-Inspiron-5584 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/pradyumna/Verilog_files/VSD-IAT/Day3/RVMyth/RVMyth.sim/sim_1/synth/timing/xsim/test_time_synth.v
// Design      : top_core
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_gate
   (clk_IBUF_BUFG_inst,
    clkP_CPU_dmem_rd_en_a5,
    CPU_valid_load_a4,
    clk_IBUF,
    CLK);
  output clk_IBUF_BUFG_inst;
  output clkP_CPU_dmem_rd_en_a5;
  input CPU_valid_load_a4;
  input clk_IBUF;
  input CLK;

  wire CLK;
  wire CPU_valid_load_a4;
  wire clkP_CPU_dmem_rd_en_a5;
  wire clk_IBUF;
  wire latched_clk_en;

  assign clk_IBUF_BUFG_inst = CLK;
  LUT2 #(
    .INIT(4'h8)) 
    clkP_CPU_dmem_rd_en_a5_BUFG_inst_i_1
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(clkP_CPU_dmem_rd_en_a5));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(CPU_valid_load_a4),
        .G(CLK),
        .GE(1'b1),
        .Q(latched_clk_en));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module clk_gate_0
   (\CPU_imem_rd_addr_a1_reg[3] ,
    clkP_CPU_rd_valid_a2,
    \CPU_rd_a2_reg[0] ,
    clk_IBUF,
    CPU_imem_rd_addr_a1);
  output \CPU_imem_rd_addr_a1_reg[3] ;
  output clkP_CPU_rd_valid_a2;
  input \CPU_rd_a2_reg[0] ;
  input clk_IBUF;
  input [3:0]CPU_imem_rd_addr_a1;

  wire [3:0]CPU_imem_rd_addr_a1;
  wire \CPU_imem_rd_addr_a1_reg[3] ;
  wire \CPU_rd_a2_reg[0] ;
  wire clkP_CPU_rd_valid_a2;
  wire clk_IBUF;
  wire latched_clk_en;

  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rd_a2[4]_i_2 
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(clkP_CPU_rd_valid_a2));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(\CPU_imem_rd_addr_a1_reg[3] ),
        .G(\CPU_rd_a2_reg[0] ),
        .GE(1'b1),
        .Q(latched_clk_en));
  LUT4 #(
    .INIT(16'hFBFD)) 
    latched_clk_en_reg_i_1__1
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[0]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(\CPU_imem_rd_addr_a1_reg[3] ));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module clk_gate_1
   (CLK,
    CPU_rd_valid_a2,
    \CPU_rd_a3_reg[4] ,
    clk_IBUF);
  output CLK;
  input CPU_rd_valid_a2;
  input \CPU_rd_a3_reg[4] ;
  input clk_IBUF;

  wire CLK;
  wire \CPU_rd_a3_reg[4] ;
  wire CPU_rd_valid_a2;
  wire clk_IBUF;
  wire latched_clk_en;

  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rd_a3[4]_i_1 
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(CLK));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(CPU_rd_valid_a2),
        .G(\CPU_rd_a3_reg[4] ),
        .GE(1'b1),
        .Q(latched_clk_en));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module clk_gate_2
   (CLK,
    CPU_rd_valid_a3,
    \CPU_rd_a4_reg[4] ,
    clk_IBUF);
  output CLK;
  input CPU_rd_valid_a3;
  input \CPU_rd_a4_reg[4] ;
  input clk_IBUF;

  wire CLK;
  wire \CPU_rd_a4_reg[4] ;
  wire CPU_rd_valid_a3;
  wire clk_IBUF;
  wire latched_clk_en;

  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rd_a4[4]_i_1 
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(CLK));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(CPU_rd_valid_a3),
        .G(\CPU_rd_a4_reg[4] ),
        .GE(1'b1),
        .Q(latched_clk_en));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module clk_gate_3
   (CLK,
    CPU_rd_valid_a4,
    \CPU_rd_a5_reg[4] ,
    clk_IBUF);
  output CLK;
  input CPU_rd_valid_a4;
  input \CPU_rd_a5_reg[4] ;
  input clk_IBUF;

  wire CLK;
  wire \CPU_rd_a5_reg[4] ;
  wire CPU_rd_valid_a4;
  wire clk_IBUF;
  wire latched_clk_en;

  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rd_a5[4]_i_1 
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(CLK));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(CPU_rd_valid_a4),
        .G(\CPU_rd_a5_reg[4] ),
        .GE(1'b1),
        .Q(latched_clk_en));
endmodule

(* ORIG_REF_NAME = "clk_gate" *) 
module clk_gate_4
   (clkP_CPU_rs2_valid_a2,
    \CPU_rs2_a2_reg[0] ,
    clk_IBUF,
    CPU_imem_rd_addr_a1);
  output clkP_CPU_rs2_valid_a2;
  input \CPU_rs2_a2_reg[0] ;
  input clk_IBUF;
  input [3:0]CPU_imem_rd_addr_a1;

  wire [3:0]CPU_imem_rd_addr_a1;
  wire \CPU_rs2_a2_reg[0] ;
  wire clkP_CPU_rs2_valid_a2;
  wire clk_IBUF;
  wire latched_clk_en;
  wire latched_clk_en_reg_i_1__0_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rs2_a2[4]_i_3 
       (.I0(latched_clk_en),
        .I1(clk_IBUF),
        .O(clkP_CPU_rs2_valid_a2));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    latched_clk_en_reg
       (.CLR(1'b0),
        .D(latched_clk_en_reg_i_1__0_n_0),
        .G(\CPU_rs2_a2_reg[0] ),
        .GE(1'b1),
        .Q(latched_clk_en));
  LUT4 #(
    .INIT(16'h4553)) 
    latched_clk_en_reg_i_1__0
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[1]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[0]),
        .O(latched_clk_en_reg_i_1__0_n_0));
endmodule

(* NotValidForBitStream *)
module top_core
   (clk,
    reset,
    out);
  input clk;
  input reset;
  output [7:0]out;

  wire [31:0]CPU_Dmem_value_a5;
  wire [24:7]CPU_Imem_instr_a1;
  wire [5:0]CPU_br_tgt_pc_a2;
  wire [5:0]CPU_br_tgt_pc_a3;
  wire \CPU_br_tgt_pc_a3[3]_i_2_n_0 ;
  wire \CPU_br_tgt_pc_a3[3]_i_3_n_0 ;
  wire \CPU_br_tgt_pc_a3[3]_i_4_n_0 ;
  wire \CPU_br_tgt_pc_a3[3]_i_5_n_0 ;
  wire \CPU_br_tgt_pc_a3[5]_i_2_n_0 ;
  wire \CPU_br_tgt_pc_a3[5]_i_3_n_0 ;
  wire \CPU_br_tgt_pc_a3_reg[3]_i_1_n_0 ;
  wire \CPU_br_tgt_pc_a3_reg[3]_i_1_n_1 ;
  wire \CPU_br_tgt_pc_a3_reg[3]_i_1_n_2 ;
  wire \CPU_br_tgt_pc_a3_reg[3]_i_1_n_3 ;
  wire \CPU_br_tgt_pc_a3_reg[5]_i_1_n_3 ;
  wire [31:0]CPU_dmem_rd_data_a5;
  wire \CPU_dmem_rd_data_a5[0]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[0]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[0]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[0]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[10]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[10]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[10]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[10]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[11]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[11]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[11]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[11]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[12]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[12]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[12]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[12]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[13]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[13]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[13]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[13]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[14]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[14]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[14]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[14]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[15]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[15]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[15]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[15]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[16]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[16]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[16]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[16]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[17]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[17]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[17]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[17]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[18]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[18]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[18]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[18]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[19]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[19]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[19]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[19]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[1]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[1]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[1]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[1]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[20]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[20]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[20]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[20]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[21]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[21]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[21]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[21]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[22]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[22]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[22]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[22]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[23]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[23]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[23]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[23]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[24]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[24]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[24]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[24]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[25]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[25]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[25]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[25]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[26]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[26]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[26]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[26]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[27]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[27]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[27]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[27]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[28]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[28]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[28]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[28]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[29]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[29]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[29]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[29]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[2]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[2]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[2]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[2]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[30]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[30]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[30]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[30]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[31]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[31]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[31]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[31]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[3]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[3]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[3]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[3]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[4]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[4]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[4]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[4]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[5]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[5]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[5]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[5]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[6]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[6]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[6]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[6]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[7]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[7]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[7]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[7]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[8]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[8]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[8]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[8]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5[9]_i_4_n_0 ;
  wire \CPU_dmem_rd_data_a5[9]_i_5_n_0 ;
  wire \CPU_dmem_rd_data_a5[9]_i_6_n_0 ;
  wire \CPU_dmem_rd_data_a5[9]_i_7_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[0]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[0]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[10]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[10]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[11]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[11]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[12]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[12]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[13]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[13]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[14]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[14]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[15]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[15]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[16]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[16]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[17]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[17]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[18]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[18]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[19]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[19]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[1]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[1]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[20]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[20]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[21]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[21]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[22]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[22]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[23]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[23]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[24]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[24]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[25]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[25]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[26]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[26]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[27]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[27]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[28]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[28]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[29]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[29]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[2]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[2]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[30]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[30]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[31]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[31]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[3]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[3]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[4]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[4]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[5]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[5]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[6]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[6]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[7]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[7]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[8]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[8]_i_3_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[9]_i_2_n_0 ;
  wire \CPU_dmem_rd_data_a5_reg[9]_i_3_n_0 ;
  wire [3:0]CPU_imem_rd_addr_a1;
  wire \CPU_imem_rd_addr_a1[0]_i_1_n_0 ;
  wire \CPU_imem_rd_addr_a1[1]_i_1_n_0 ;
  wire \CPU_imem_rd_addr_a1[2]_i_1_n_0 ;
  wire \CPU_imem_rd_addr_a1[3]_i_1_n_0 ;
  wire [31:0]CPU_imm_a1;
  wire [31:0]CPU_imm_a2;
  wire \CPU_imm_a3_reg_n_0_[0] ;
  wire \CPU_imm_a3_reg_n_0_[1] ;
  wire \CPU_imm_a3_reg_n_0_[3] ;
  wire \CPU_imm_a3_reg_n_0_[4] ;
  wire [5:1]CPU_inc_pc_a2;
  wire \CPU_inc_pc_a2[4]_i_2_n_0 ;
  wire \CPU_inc_pc_a2_reg[4]_i_1_n_0 ;
  wire \CPU_inc_pc_a2_reg[4]_i_1_n_1 ;
  wire \CPU_inc_pc_a2_reg[4]_i_1_n_2 ;
  wire \CPU_inc_pc_a2_reg[4]_i_1_n_3 ;
  wire [5:1]CPU_inc_pc_a3;
  wire CPU_is_add_a2;
  wire CPU_is_add_a2_i_1_n_0;
  wire CPU_is_add_a3;
  wire CPU_is_addi_a2;
  wire CPU_is_addi_a2_i_1_n_0;
  wire CPU_is_addi_a3;
  wire CPU_is_blt_a1;
  wire CPU_is_blt_a2;
  wire CPU_is_blt_a3;
  wire CPU_is_load_a2;
  wire CPU_is_load_a2_i_1_n_0;
  wire CPU_is_load_a3;
  wire CPU_is_s_instr_a3_reg_srl2_i_1_n_0;
  wire CPU_is_s_instr_a3_reg_srl2_n_0;
  wire CPU_is_s_instr_a4;
  wire [1:0]CPU_pc_a1;
  wire \CPU_pc_a1[0]_i_1_n_0 ;
  wire \CPU_pc_a1[1]_i_1_n_0 ;
  wire [5:0]CPU_pc_a2;
  wire [0:0]CPU_pc_a3;
  wire [4:0]CPU_rd_a2;
  wire \CPU_rd_a2[1]_i_1_n_0 ;
  wire \CPU_rd_a2[2]_i_1_n_0 ;
  wire [4:0]CPU_rd_a3;
  wire [4:0]CPU_rd_a4;
  wire [4:0]CPU_rd_a5;
  wire CPU_rd_valid_a2;
  wire CPU_rd_valid_a3;
  wire CPU_rd_valid_a4;
  wire CPU_reset_a1;
  wire CPU_reset_a2;
  wire CPU_reset_a3;
  wire CPU_reset_a4;
  wire [5:2]CPU_result_a4;
  wire \CPU_result_a4[3]_i_10_n_0 ;
  wire \CPU_result_a4[3]_i_11_n_0 ;
  wire \CPU_result_a4[3]_i_4_n_0 ;
  wire \CPU_result_a4[3]_i_5_n_0 ;
  wire \CPU_result_a4[3]_i_6_n_0 ;
  wire \CPU_result_a4[3]_i_7_n_0 ;
  wire \CPU_result_a4[3]_i_8_n_0 ;
  wire \CPU_result_a4[3]_i_9_n_0 ;
  wire \CPU_result_a4[5]_i_10_n_0 ;
  wire \CPU_result_a4[5]_i_11_n_0 ;
  wire \CPU_result_a4[5]_i_4_n_0 ;
  wire \CPU_result_a4[5]_i_5_n_0 ;
  wire \CPU_result_a4[5]_i_6_n_0 ;
  wire \CPU_result_a4[5]_i_7_n_0 ;
  wire \CPU_result_a4[5]_i_8_n_0 ;
  wire \CPU_result_a4[5]_i_9_n_0 ;
  wire \CPU_result_a4_reg[3]_i_2_n_0 ;
  wire \CPU_result_a4_reg[3]_i_2_n_1 ;
  wire \CPU_result_a4_reg[3]_i_2_n_2 ;
  wire \CPU_result_a4_reg[3]_i_2_n_3 ;
  wire \CPU_result_a4_reg[3]_i_2_n_4 ;
  wire \CPU_result_a4_reg[3]_i_2_n_5 ;
  wire \CPU_result_a4_reg[3]_i_2_n_6 ;
  wire \CPU_result_a4_reg[3]_i_2_n_7 ;
  wire \CPU_result_a4_reg[3]_i_3_n_0 ;
  wire \CPU_result_a4_reg[3]_i_3_n_1 ;
  wire \CPU_result_a4_reg[3]_i_3_n_2 ;
  wire \CPU_result_a4_reg[3]_i_3_n_3 ;
  wire \CPU_result_a4_reg[5]_i_2_n_0 ;
  wire \CPU_result_a4_reg[5]_i_2_n_1 ;
  wire \CPU_result_a4_reg[5]_i_2_n_2 ;
  wire \CPU_result_a4_reg[5]_i_2_n_3 ;
  wire \CPU_result_a4_reg[5]_i_2_n_4 ;
  wire \CPU_result_a4_reg[5]_i_2_n_5 ;
  wire \CPU_result_a4_reg[5]_i_2_n_6 ;
  wire \CPU_result_a4_reg[5]_i_2_n_7 ;
  wire \CPU_result_a4_reg[5]_i_3_n_0 ;
  wire \CPU_result_a4_reg[5]_i_3_n_1 ;
  wire \CPU_result_a4_reg[5]_i_3_n_2 ;
  wire \CPU_result_a4_reg[5]_i_3_n_3 ;
  wire [31:0]CPU_rf_wr_data_a3;
  wire CPU_rf_wr_en_a3;
  wire CPU_rf_wr_en_a31;
  wire [4:2]CPU_rf_wr_index_a3;
  wire [3:0]CPU_rs1_a2;
  wire \CPU_rs1_a2[0]_i_1_n_0 ;
  wire \CPU_rs1_a2[1]_i_1_n_0 ;
  wire \CPU_rs1_a2[2]_i_1_n_0 ;
  wire \CPU_rs1_a2[3]_i_1_n_0 ;
  wire [4:0]CPU_rs2_a2;
  wire \CPU_rs2_a2[0]_i_1_n_0 ;
  wire \CPU_rs2_a2[2]_i_1_n_0 ;
  wire \CPU_rs2_a2[4]_i_1_n_0 ;
  wire CPU_sltu_result_a3;
  wire [31:0]CPU_src1_value_a2;
  wire CPU_src1_value_a2_01;
  wire \CPU_src1_value_a3[0]_i_4_n_0 ;
  wire \CPU_src1_value_a3[0]_i_5_n_0 ;
  wire \CPU_src1_value_a3[0]_i_6_n_0 ;
  wire \CPU_src1_value_a3[0]_i_7_n_0 ;
  wire \CPU_src1_value_a3[10]_i_4_n_0 ;
  wire \CPU_src1_value_a3[10]_i_5_n_0 ;
  wire \CPU_src1_value_a3[10]_i_6_n_0 ;
  wire \CPU_src1_value_a3[10]_i_7_n_0 ;
  wire \CPU_src1_value_a3[11]_i_4_n_0 ;
  wire \CPU_src1_value_a3[11]_i_5_n_0 ;
  wire \CPU_src1_value_a3[11]_i_6_n_0 ;
  wire \CPU_src1_value_a3[11]_i_7_n_0 ;
  wire \CPU_src1_value_a3[12]_i_4_n_0 ;
  wire \CPU_src1_value_a3[12]_i_5_n_0 ;
  wire \CPU_src1_value_a3[12]_i_6_n_0 ;
  wire \CPU_src1_value_a3[12]_i_7_n_0 ;
  wire \CPU_src1_value_a3[13]_i_4_n_0 ;
  wire \CPU_src1_value_a3[13]_i_5_n_0 ;
  wire \CPU_src1_value_a3[13]_i_6_n_0 ;
  wire \CPU_src1_value_a3[13]_i_7_n_0 ;
  wire \CPU_src1_value_a3[14]_i_4_n_0 ;
  wire \CPU_src1_value_a3[14]_i_5_n_0 ;
  wire \CPU_src1_value_a3[14]_i_6_n_0 ;
  wire \CPU_src1_value_a3[14]_i_7_n_0 ;
  wire \CPU_src1_value_a3[15]_i_4_n_0 ;
  wire \CPU_src1_value_a3[15]_i_5_n_0 ;
  wire \CPU_src1_value_a3[15]_i_6_n_0 ;
  wire \CPU_src1_value_a3[15]_i_7_n_0 ;
  wire \CPU_src1_value_a3[16]_i_4_n_0 ;
  wire \CPU_src1_value_a3[16]_i_5_n_0 ;
  wire \CPU_src1_value_a3[16]_i_6_n_0 ;
  wire \CPU_src1_value_a3[16]_i_7_n_0 ;
  wire \CPU_src1_value_a3[17]_i_4_n_0 ;
  wire \CPU_src1_value_a3[17]_i_5_n_0 ;
  wire \CPU_src1_value_a3[17]_i_6_n_0 ;
  wire \CPU_src1_value_a3[17]_i_7_n_0 ;
  wire \CPU_src1_value_a3[18]_i_4_n_0 ;
  wire \CPU_src1_value_a3[18]_i_5_n_0 ;
  wire \CPU_src1_value_a3[18]_i_6_n_0 ;
  wire \CPU_src1_value_a3[18]_i_7_n_0 ;
  wire \CPU_src1_value_a3[19]_i_4_n_0 ;
  wire \CPU_src1_value_a3[19]_i_5_n_0 ;
  wire \CPU_src1_value_a3[19]_i_6_n_0 ;
  wire \CPU_src1_value_a3[19]_i_7_n_0 ;
  wire \CPU_src1_value_a3[1]_i_4_n_0 ;
  wire \CPU_src1_value_a3[1]_i_5_n_0 ;
  wire \CPU_src1_value_a3[1]_i_6_n_0 ;
  wire \CPU_src1_value_a3[1]_i_7_n_0 ;
  wire \CPU_src1_value_a3[20]_i_4_n_0 ;
  wire \CPU_src1_value_a3[20]_i_5_n_0 ;
  wire \CPU_src1_value_a3[20]_i_6_n_0 ;
  wire \CPU_src1_value_a3[20]_i_7_n_0 ;
  wire \CPU_src1_value_a3[21]_i_4_n_0 ;
  wire \CPU_src1_value_a3[21]_i_5_n_0 ;
  wire \CPU_src1_value_a3[21]_i_6_n_0 ;
  wire \CPU_src1_value_a3[21]_i_7_n_0 ;
  wire \CPU_src1_value_a3[22]_i_4_n_0 ;
  wire \CPU_src1_value_a3[22]_i_5_n_0 ;
  wire \CPU_src1_value_a3[22]_i_6_n_0 ;
  wire \CPU_src1_value_a3[22]_i_7_n_0 ;
  wire \CPU_src1_value_a3[23]_i_4_n_0 ;
  wire \CPU_src1_value_a3[23]_i_5_n_0 ;
  wire \CPU_src1_value_a3[23]_i_6_n_0 ;
  wire \CPU_src1_value_a3[23]_i_7_n_0 ;
  wire \CPU_src1_value_a3[24]_i_4_n_0 ;
  wire \CPU_src1_value_a3[24]_i_5_n_0 ;
  wire \CPU_src1_value_a3[24]_i_6_n_0 ;
  wire \CPU_src1_value_a3[24]_i_7_n_0 ;
  wire \CPU_src1_value_a3[25]_i_4_n_0 ;
  wire \CPU_src1_value_a3[25]_i_5_n_0 ;
  wire \CPU_src1_value_a3[25]_i_6_n_0 ;
  wire \CPU_src1_value_a3[25]_i_7_n_0 ;
  wire \CPU_src1_value_a3[26]_i_4_n_0 ;
  wire \CPU_src1_value_a3[26]_i_5_n_0 ;
  wire \CPU_src1_value_a3[26]_i_6_n_0 ;
  wire \CPU_src1_value_a3[26]_i_7_n_0 ;
  wire \CPU_src1_value_a3[27]_i_4_n_0 ;
  wire \CPU_src1_value_a3[27]_i_5_n_0 ;
  wire \CPU_src1_value_a3[27]_i_6_n_0 ;
  wire \CPU_src1_value_a3[27]_i_7_n_0 ;
  wire \CPU_src1_value_a3[28]_i_4_n_0 ;
  wire \CPU_src1_value_a3[28]_i_5_n_0 ;
  wire \CPU_src1_value_a3[28]_i_6_n_0 ;
  wire \CPU_src1_value_a3[28]_i_7_n_0 ;
  wire \CPU_src1_value_a3[29]_i_4_n_0 ;
  wire \CPU_src1_value_a3[29]_i_5_n_0 ;
  wire \CPU_src1_value_a3[29]_i_6_n_0 ;
  wire \CPU_src1_value_a3[29]_i_7_n_0 ;
  wire \CPU_src1_value_a3[2]_i_4_n_0 ;
  wire \CPU_src1_value_a3[2]_i_5_n_0 ;
  wire \CPU_src1_value_a3[2]_i_6_n_0 ;
  wire \CPU_src1_value_a3[2]_i_7_n_0 ;
  wire \CPU_src1_value_a3[30]_i_4_n_0 ;
  wire \CPU_src1_value_a3[30]_i_5_n_0 ;
  wire \CPU_src1_value_a3[30]_i_6_n_0 ;
  wire \CPU_src1_value_a3[30]_i_7_n_0 ;
  wire \CPU_src1_value_a3[31]_i_5_n_0 ;
  wire \CPU_src1_value_a3[31]_i_6_n_0 ;
  wire \CPU_src1_value_a3[31]_i_7_n_0 ;
  wire \CPU_src1_value_a3[31]_i_8_n_0 ;
  wire \CPU_src1_value_a3[31]_i_9_n_0 ;
  wire \CPU_src1_value_a3[3]_i_4_n_0 ;
  wire \CPU_src1_value_a3[3]_i_5_n_0 ;
  wire \CPU_src1_value_a3[3]_i_6_n_0 ;
  wire \CPU_src1_value_a3[3]_i_7_n_0 ;
  wire \CPU_src1_value_a3[4]_i_4_n_0 ;
  wire \CPU_src1_value_a3[4]_i_5_n_0 ;
  wire \CPU_src1_value_a3[4]_i_6_n_0 ;
  wire \CPU_src1_value_a3[4]_i_7_n_0 ;
  wire \CPU_src1_value_a3[5]_i_4_n_0 ;
  wire \CPU_src1_value_a3[5]_i_5_n_0 ;
  wire \CPU_src1_value_a3[5]_i_6_n_0 ;
  wire \CPU_src1_value_a3[5]_i_7_n_0 ;
  wire \CPU_src1_value_a3[6]_i_4_n_0 ;
  wire \CPU_src1_value_a3[6]_i_5_n_0 ;
  wire \CPU_src1_value_a3[6]_i_6_n_0 ;
  wire \CPU_src1_value_a3[6]_i_7_n_0 ;
  wire \CPU_src1_value_a3[7]_i_4_n_0 ;
  wire \CPU_src1_value_a3[7]_i_5_n_0 ;
  wire \CPU_src1_value_a3[7]_i_6_n_0 ;
  wire \CPU_src1_value_a3[7]_i_7_n_0 ;
  wire \CPU_src1_value_a3[8]_i_4_n_0 ;
  wire \CPU_src1_value_a3[8]_i_5_n_0 ;
  wire \CPU_src1_value_a3[8]_i_6_n_0 ;
  wire \CPU_src1_value_a3[8]_i_7_n_0 ;
  wire \CPU_src1_value_a3[9]_i_4_n_0 ;
  wire \CPU_src1_value_a3[9]_i_5_n_0 ;
  wire \CPU_src1_value_a3[9]_i_6_n_0 ;
  wire \CPU_src1_value_a3[9]_i_7_n_0 ;
  wire \CPU_src1_value_a3_reg[0]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[0]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[10]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[10]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[11]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[11]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[12]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[12]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[13]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[13]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[14]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[14]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[15]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[15]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[16]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[16]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[17]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[17]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[18]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[18]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[19]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[19]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[1]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[1]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[20]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[20]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[21]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[21]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[22]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[22]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[23]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[23]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[24]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[24]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[25]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[25]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[26]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[26]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[27]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[27]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[28]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[28]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[29]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[29]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[2]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[2]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[30]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[30]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[31]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[31]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[3]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[3]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[4]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[4]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[5]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[5]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[6]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[6]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[7]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[7]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[8]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[8]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg[9]_i_2_n_0 ;
  wire \CPU_src1_value_a3_reg[9]_i_3_n_0 ;
  wire \CPU_src1_value_a3_reg_n_0_[0] ;
  wire \CPU_src1_value_a3_reg_n_0_[10] ;
  wire \CPU_src1_value_a3_reg_n_0_[11] ;
  wire \CPU_src1_value_a3_reg_n_0_[12] ;
  wire \CPU_src1_value_a3_reg_n_0_[13] ;
  wire \CPU_src1_value_a3_reg_n_0_[14] ;
  wire \CPU_src1_value_a3_reg_n_0_[15] ;
  wire \CPU_src1_value_a3_reg_n_0_[16] ;
  wire \CPU_src1_value_a3_reg_n_0_[17] ;
  wire \CPU_src1_value_a3_reg_n_0_[18] ;
  wire \CPU_src1_value_a3_reg_n_0_[19] ;
  wire \CPU_src1_value_a3_reg_n_0_[1] ;
  wire \CPU_src1_value_a3_reg_n_0_[20] ;
  wire \CPU_src1_value_a3_reg_n_0_[21] ;
  wire \CPU_src1_value_a3_reg_n_0_[22] ;
  wire \CPU_src1_value_a3_reg_n_0_[23] ;
  wire \CPU_src1_value_a3_reg_n_0_[24] ;
  wire \CPU_src1_value_a3_reg_n_0_[25] ;
  wire \CPU_src1_value_a3_reg_n_0_[26] ;
  wire \CPU_src1_value_a3_reg_n_0_[27] ;
  wire \CPU_src1_value_a3_reg_n_0_[28] ;
  wire \CPU_src1_value_a3_reg_n_0_[29] ;
  wire \CPU_src1_value_a3_reg_n_0_[2] ;
  wire \CPU_src1_value_a3_reg_n_0_[30] ;
  wire \CPU_src1_value_a3_reg_n_0_[3] ;
  wire \CPU_src1_value_a3_reg_n_0_[4] ;
  wire \CPU_src1_value_a3_reg_n_0_[5] ;
  wire \CPU_src1_value_a3_reg_n_0_[6] ;
  wire \CPU_src1_value_a3_reg_n_0_[7] ;
  wire \CPU_src1_value_a3_reg_n_0_[8] ;
  wire \CPU_src1_value_a3_reg_n_0_[9] ;
  wire [31:0]CPU_src2_value_a2;
  wire CPU_src2_value_a21;
  wire [31:0]CPU_src2_value_a3;
  wire \CPU_src2_value_a3[0]_i_10_n_0 ;
  wire \CPU_src2_value_a3[0]_i_11_n_0 ;
  wire \CPU_src2_value_a3[0]_i_12_n_0 ;
  wire \CPU_src2_value_a3[0]_i_13_n_0 ;
  wire \CPU_src2_value_a3[0]_i_14_n_0 ;
  wire \CPU_src2_value_a3[0]_i_15_n_0 ;
  wire \CPU_src2_value_a3[0]_i_8_n_0 ;
  wire \CPU_src2_value_a3[0]_i_9_n_0 ;
  wire \CPU_src2_value_a3[10]_i_10_n_0 ;
  wire \CPU_src2_value_a3[10]_i_11_n_0 ;
  wire \CPU_src2_value_a3[10]_i_12_n_0 ;
  wire \CPU_src2_value_a3[10]_i_13_n_0 ;
  wire \CPU_src2_value_a3[10]_i_14_n_0 ;
  wire \CPU_src2_value_a3[10]_i_15_n_0 ;
  wire \CPU_src2_value_a3[10]_i_8_n_0 ;
  wire \CPU_src2_value_a3[10]_i_9_n_0 ;
  wire \CPU_src2_value_a3[11]_i_10_n_0 ;
  wire \CPU_src2_value_a3[11]_i_11_n_0 ;
  wire \CPU_src2_value_a3[11]_i_12_n_0 ;
  wire \CPU_src2_value_a3[11]_i_13_n_0 ;
  wire \CPU_src2_value_a3[11]_i_14_n_0 ;
  wire \CPU_src2_value_a3[11]_i_15_n_0 ;
  wire \CPU_src2_value_a3[11]_i_8_n_0 ;
  wire \CPU_src2_value_a3[11]_i_9_n_0 ;
  wire \CPU_src2_value_a3[12]_i_10_n_0 ;
  wire \CPU_src2_value_a3[12]_i_11_n_0 ;
  wire \CPU_src2_value_a3[12]_i_12_n_0 ;
  wire \CPU_src2_value_a3[12]_i_13_n_0 ;
  wire \CPU_src2_value_a3[12]_i_14_n_0 ;
  wire \CPU_src2_value_a3[12]_i_15_n_0 ;
  wire \CPU_src2_value_a3[12]_i_8_n_0 ;
  wire \CPU_src2_value_a3[12]_i_9_n_0 ;
  wire \CPU_src2_value_a3[13]_i_10_n_0 ;
  wire \CPU_src2_value_a3[13]_i_11_n_0 ;
  wire \CPU_src2_value_a3[13]_i_12_n_0 ;
  wire \CPU_src2_value_a3[13]_i_13_n_0 ;
  wire \CPU_src2_value_a3[13]_i_14_n_0 ;
  wire \CPU_src2_value_a3[13]_i_15_n_0 ;
  wire \CPU_src2_value_a3[13]_i_8_n_0 ;
  wire \CPU_src2_value_a3[13]_i_9_n_0 ;
  wire \CPU_src2_value_a3[14]_i_10_n_0 ;
  wire \CPU_src2_value_a3[14]_i_11_n_0 ;
  wire \CPU_src2_value_a3[14]_i_12_n_0 ;
  wire \CPU_src2_value_a3[14]_i_13_n_0 ;
  wire \CPU_src2_value_a3[14]_i_14_n_0 ;
  wire \CPU_src2_value_a3[14]_i_15_n_0 ;
  wire \CPU_src2_value_a3[14]_i_8_n_0 ;
  wire \CPU_src2_value_a3[14]_i_9_n_0 ;
  wire \CPU_src2_value_a3[15]_i_10_n_0 ;
  wire \CPU_src2_value_a3[15]_i_11_n_0 ;
  wire \CPU_src2_value_a3[15]_i_12_n_0 ;
  wire \CPU_src2_value_a3[15]_i_13_n_0 ;
  wire \CPU_src2_value_a3[15]_i_14_n_0 ;
  wire \CPU_src2_value_a3[15]_i_15_n_0 ;
  wire \CPU_src2_value_a3[15]_i_8_n_0 ;
  wire \CPU_src2_value_a3[15]_i_9_n_0 ;
  wire \CPU_src2_value_a3[16]_i_10_n_0 ;
  wire \CPU_src2_value_a3[16]_i_11_n_0 ;
  wire \CPU_src2_value_a3[16]_i_12_n_0 ;
  wire \CPU_src2_value_a3[16]_i_13_n_0 ;
  wire \CPU_src2_value_a3[16]_i_14_n_0 ;
  wire \CPU_src2_value_a3[16]_i_15_n_0 ;
  wire \CPU_src2_value_a3[16]_i_8_n_0 ;
  wire \CPU_src2_value_a3[16]_i_9_n_0 ;
  wire \CPU_src2_value_a3[17]_i_10_n_0 ;
  wire \CPU_src2_value_a3[17]_i_11_n_0 ;
  wire \CPU_src2_value_a3[17]_i_12_n_0 ;
  wire \CPU_src2_value_a3[17]_i_13_n_0 ;
  wire \CPU_src2_value_a3[17]_i_14_n_0 ;
  wire \CPU_src2_value_a3[17]_i_15_n_0 ;
  wire \CPU_src2_value_a3[17]_i_8_n_0 ;
  wire \CPU_src2_value_a3[17]_i_9_n_0 ;
  wire \CPU_src2_value_a3[18]_i_10_n_0 ;
  wire \CPU_src2_value_a3[18]_i_11_n_0 ;
  wire \CPU_src2_value_a3[18]_i_12_n_0 ;
  wire \CPU_src2_value_a3[18]_i_13_n_0 ;
  wire \CPU_src2_value_a3[18]_i_14_n_0 ;
  wire \CPU_src2_value_a3[18]_i_15_n_0 ;
  wire \CPU_src2_value_a3[18]_i_8_n_0 ;
  wire \CPU_src2_value_a3[18]_i_9_n_0 ;
  wire \CPU_src2_value_a3[19]_i_10_n_0 ;
  wire \CPU_src2_value_a3[19]_i_11_n_0 ;
  wire \CPU_src2_value_a3[19]_i_12_n_0 ;
  wire \CPU_src2_value_a3[19]_i_13_n_0 ;
  wire \CPU_src2_value_a3[19]_i_14_n_0 ;
  wire \CPU_src2_value_a3[19]_i_15_n_0 ;
  wire \CPU_src2_value_a3[19]_i_8_n_0 ;
  wire \CPU_src2_value_a3[19]_i_9_n_0 ;
  wire \CPU_src2_value_a3[1]_i_10_n_0 ;
  wire \CPU_src2_value_a3[1]_i_11_n_0 ;
  wire \CPU_src2_value_a3[1]_i_12_n_0 ;
  wire \CPU_src2_value_a3[1]_i_13_n_0 ;
  wire \CPU_src2_value_a3[1]_i_14_n_0 ;
  wire \CPU_src2_value_a3[1]_i_15_n_0 ;
  wire \CPU_src2_value_a3[1]_i_8_n_0 ;
  wire \CPU_src2_value_a3[1]_i_9_n_0 ;
  wire \CPU_src2_value_a3[20]_i_10_n_0 ;
  wire \CPU_src2_value_a3[20]_i_11_n_0 ;
  wire \CPU_src2_value_a3[20]_i_12_n_0 ;
  wire \CPU_src2_value_a3[20]_i_13_n_0 ;
  wire \CPU_src2_value_a3[20]_i_14_n_0 ;
  wire \CPU_src2_value_a3[20]_i_15_n_0 ;
  wire \CPU_src2_value_a3[20]_i_8_n_0 ;
  wire \CPU_src2_value_a3[20]_i_9_n_0 ;
  wire \CPU_src2_value_a3[21]_i_10_n_0 ;
  wire \CPU_src2_value_a3[21]_i_11_n_0 ;
  wire \CPU_src2_value_a3[21]_i_12_n_0 ;
  wire \CPU_src2_value_a3[21]_i_13_n_0 ;
  wire \CPU_src2_value_a3[21]_i_14_n_0 ;
  wire \CPU_src2_value_a3[21]_i_15_n_0 ;
  wire \CPU_src2_value_a3[21]_i_8_n_0 ;
  wire \CPU_src2_value_a3[21]_i_9_n_0 ;
  wire \CPU_src2_value_a3[22]_i_10_n_0 ;
  wire \CPU_src2_value_a3[22]_i_11_n_0 ;
  wire \CPU_src2_value_a3[22]_i_12_n_0 ;
  wire \CPU_src2_value_a3[22]_i_13_n_0 ;
  wire \CPU_src2_value_a3[22]_i_14_n_0 ;
  wire \CPU_src2_value_a3[22]_i_15_n_0 ;
  wire \CPU_src2_value_a3[22]_i_8_n_0 ;
  wire \CPU_src2_value_a3[22]_i_9_n_0 ;
  wire \CPU_src2_value_a3[23]_i_10_n_0 ;
  wire \CPU_src2_value_a3[23]_i_11_n_0 ;
  wire \CPU_src2_value_a3[23]_i_12_n_0 ;
  wire \CPU_src2_value_a3[23]_i_13_n_0 ;
  wire \CPU_src2_value_a3[23]_i_14_n_0 ;
  wire \CPU_src2_value_a3[23]_i_15_n_0 ;
  wire \CPU_src2_value_a3[23]_i_8_n_0 ;
  wire \CPU_src2_value_a3[23]_i_9_n_0 ;
  wire \CPU_src2_value_a3[24]_i_10_n_0 ;
  wire \CPU_src2_value_a3[24]_i_11_n_0 ;
  wire \CPU_src2_value_a3[24]_i_12_n_0 ;
  wire \CPU_src2_value_a3[24]_i_13_n_0 ;
  wire \CPU_src2_value_a3[24]_i_14_n_0 ;
  wire \CPU_src2_value_a3[24]_i_15_n_0 ;
  wire \CPU_src2_value_a3[24]_i_8_n_0 ;
  wire \CPU_src2_value_a3[24]_i_9_n_0 ;
  wire \CPU_src2_value_a3[25]_i_10_n_0 ;
  wire \CPU_src2_value_a3[25]_i_11_n_0 ;
  wire \CPU_src2_value_a3[25]_i_12_n_0 ;
  wire \CPU_src2_value_a3[25]_i_13_n_0 ;
  wire \CPU_src2_value_a3[25]_i_14_n_0 ;
  wire \CPU_src2_value_a3[25]_i_15_n_0 ;
  wire \CPU_src2_value_a3[25]_i_8_n_0 ;
  wire \CPU_src2_value_a3[25]_i_9_n_0 ;
  wire \CPU_src2_value_a3[26]_i_10_n_0 ;
  wire \CPU_src2_value_a3[26]_i_11_n_0 ;
  wire \CPU_src2_value_a3[26]_i_12_n_0 ;
  wire \CPU_src2_value_a3[26]_i_13_n_0 ;
  wire \CPU_src2_value_a3[26]_i_14_n_0 ;
  wire \CPU_src2_value_a3[26]_i_15_n_0 ;
  wire \CPU_src2_value_a3[26]_i_8_n_0 ;
  wire \CPU_src2_value_a3[26]_i_9_n_0 ;
  wire \CPU_src2_value_a3[27]_i_10_n_0 ;
  wire \CPU_src2_value_a3[27]_i_11_n_0 ;
  wire \CPU_src2_value_a3[27]_i_12_n_0 ;
  wire \CPU_src2_value_a3[27]_i_13_n_0 ;
  wire \CPU_src2_value_a3[27]_i_14_n_0 ;
  wire \CPU_src2_value_a3[27]_i_15_n_0 ;
  wire \CPU_src2_value_a3[27]_i_8_n_0 ;
  wire \CPU_src2_value_a3[27]_i_9_n_0 ;
  wire \CPU_src2_value_a3[28]_i_10_n_0 ;
  wire \CPU_src2_value_a3[28]_i_11_n_0 ;
  wire \CPU_src2_value_a3[28]_i_12_n_0 ;
  wire \CPU_src2_value_a3[28]_i_13_n_0 ;
  wire \CPU_src2_value_a3[28]_i_14_n_0 ;
  wire \CPU_src2_value_a3[28]_i_15_n_0 ;
  wire \CPU_src2_value_a3[28]_i_8_n_0 ;
  wire \CPU_src2_value_a3[28]_i_9_n_0 ;
  wire \CPU_src2_value_a3[29]_i_10_n_0 ;
  wire \CPU_src2_value_a3[29]_i_11_n_0 ;
  wire \CPU_src2_value_a3[29]_i_12_n_0 ;
  wire \CPU_src2_value_a3[29]_i_13_n_0 ;
  wire \CPU_src2_value_a3[29]_i_14_n_0 ;
  wire \CPU_src2_value_a3[29]_i_15_n_0 ;
  wire \CPU_src2_value_a3[29]_i_8_n_0 ;
  wire \CPU_src2_value_a3[29]_i_9_n_0 ;
  wire \CPU_src2_value_a3[2]_i_10_n_0 ;
  wire \CPU_src2_value_a3[2]_i_11_n_0 ;
  wire \CPU_src2_value_a3[2]_i_12_n_0 ;
  wire \CPU_src2_value_a3[2]_i_13_n_0 ;
  wire \CPU_src2_value_a3[2]_i_14_n_0 ;
  wire \CPU_src2_value_a3[2]_i_15_n_0 ;
  wire \CPU_src2_value_a3[2]_i_8_n_0 ;
  wire \CPU_src2_value_a3[2]_i_9_n_0 ;
  wire \CPU_src2_value_a3[30]_i_10_n_0 ;
  wire \CPU_src2_value_a3[30]_i_11_n_0 ;
  wire \CPU_src2_value_a3[30]_i_12_n_0 ;
  wire \CPU_src2_value_a3[30]_i_13_n_0 ;
  wire \CPU_src2_value_a3[30]_i_14_n_0 ;
  wire \CPU_src2_value_a3[30]_i_15_n_0 ;
  wire \CPU_src2_value_a3[30]_i_8_n_0 ;
  wire \CPU_src2_value_a3[30]_i_9_n_0 ;
  wire \CPU_src2_value_a3[31]_i_10_n_0 ;
  wire \CPU_src2_value_a3[31]_i_11_n_0 ;
  wire \CPU_src2_value_a3[31]_i_12_n_0 ;
  wire \CPU_src2_value_a3[31]_i_13_n_0 ;
  wire \CPU_src2_value_a3[31]_i_14_n_0 ;
  wire \CPU_src2_value_a3[31]_i_15_n_0 ;
  wire \CPU_src2_value_a3[31]_i_16_n_0 ;
  wire \CPU_src2_value_a3[31]_i_17_n_0 ;
  wire \CPU_src2_value_a3[31]_i_9_n_0 ;
  wire \CPU_src2_value_a3[3]_i_10_n_0 ;
  wire \CPU_src2_value_a3[3]_i_11_n_0 ;
  wire \CPU_src2_value_a3[3]_i_12_n_0 ;
  wire \CPU_src2_value_a3[3]_i_13_n_0 ;
  wire \CPU_src2_value_a3[3]_i_14_n_0 ;
  wire \CPU_src2_value_a3[3]_i_15_n_0 ;
  wire \CPU_src2_value_a3[3]_i_8_n_0 ;
  wire \CPU_src2_value_a3[3]_i_9_n_0 ;
  wire \CPU_src2_value_a3[4]_i_10_n_0 ;
  wire \CPU_src2_value_a3[4]_i_11_n_0 ;
  wire \CPU_src2_value_a3[4]_i_12_n_0 ;
  wire \CPU_src2_value_a3[4]_i_13_n_0 ;
  wire \CPU_src2_value_a3[4]_i_14_n_0 ;
  wire \CPU_src2_value_a3[4]_i_15_n_0 ;
  wire \CPU_src2_value_a3[4]_i_8_n_0 ;
  wire \CPU_src2_value_a3[4]_i_9_n_0 ;
  wire \CPU_src2_value_a3[5]_i_10_n_0 ;
  wire \CPU_src2_value_a3[5]_i_11_n_0 ;
  wire \CPU_src2_value_a3[5]_i_12_n_0 ;
  wire \CPU_src2_value_a3[5]_i_13_n_0 ;
  wire \CPU_src2_value_a3[5]_i_14_n_0 ;
  wire \CPU_src2_value_a3[5]_i_15_n_0 ;
  wire \CPU_src2_value_a3[5]_i_8_n_0 ;
  wire \CPU_src2_value_a3[5]_i_9_n_0 ;
  wire \CPU_src2_value_a3[6]_i_10_n_0 ;
  wire \CPU_src2_value_a3[6]_i_11_n_0 ;
  wire \CPU_src2_value_a3[6]_i_12_n_0 ;
  wire \CPU_src2_value_a3[6]_i_13_n_0 ;
  wire \CPU_src2_value_a3[6]_i_14_n_0 ;
  wire \CPU_src2_value_a3[6]_i_15_n_0 ;
  wire \CPU_src2_value_a3[6]_i_8_n_0 ;
  wire \CPU_src2_value_a3[6]_i_9_n_0 ;
  wire \CPU_src2_value_a3[7]_i_10_n_0 ;
  wire \CPU_src2_value_a3[7]_i_11_n_0 ;
  wire \CPU_src2_value_a3[7]_i_12_n_0 ;
  wire \CPU_src2_value_a3[7]_i_13_n_0 ;
  wire \CPU_src2_value_a3[7]_i_14_n_0 ;
  wire \CPU_src2_value_a3[7]_i_15_n_0 ;
  wire \CPU_src2_value_a3[7]_i_8_n_0 ;
  wire \CPU_src2_value_a3[7]_i_9_n_0 ;
  wire \CPU_src2_value_a3[8]_i_10_n_0 ;
  wire \CPU_src2_value_a3[8]_i_11_n_0 ;
  wire \CPU_src2_value_a3[8]_i_12_n_0 ;
  wire \CPU_src2_value_a3[8]_i_13_n_0 ;
  wire \CPU_src2_value_a3[8]_i_14_n_0 ;
  wire \CPU_src2_value_a3[8]_i_15_n_0 ;
  wire \CPU_src2_value_a3[8]_i_8_n_0 ;
  wire \CPU_src2_value_a3[8]_i_9_n_0 ;
  wire \CPU_src2_value_a3[9]_i_10_n_0 ;
  wire \CPU_src2_value_a3[9]_i_11_n_0 ;
  wire \CPU_src2_value_a3[9]_i_12_n_0 ;
  wire \CPU_src2_value_a3[9]_i_13_n_0 ;
  wire \CPU_src2_value_a3[9]_i_14_n_0 ;
  wire \CPU_src2_value_a3[9]_i_15_n_0 ;
  wire \CPU_src2_value_a3[9]_i_8_n_0 ;
  wire \CPU_src2_value_a3[9]_i_9_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[0]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[10]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[11]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[12]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[13]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[14]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[15]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[16]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[17]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[18]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[19]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[1]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[20]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[21]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[22]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[23]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[24]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[25]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[26]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[27]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[28]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[29]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[2]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[30]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[31]_i_8_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[3]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[4]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[5]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[6]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[7]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[8]_i_7_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_2_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_3_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_4_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_5_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_6_n_0 ;
  wire \CPU_src2_value_a3_reg[9]_i_7_n_0 ;
  wire [31:0]CPU_src2_value_a4;
  wire CPU_valid_a3;
  wire CPU_valid_a4;
  wire CPU_valid_load_a3;
  wire CPU_valid_load_a4;
  wire CPU_valid_load_a5;
  wire CPU_valid_taken_br_a3;
  wire CPU_valid_taken_br_a4;
  wire CPU_valid_taken_br_a4_i_10_n_0;
  wire CPU_valid_taken_br_a4_i_11_n_0;
  wire CPU_valid_taken_br_a4_i_13_n_0;
  wire CPU_valid_taken_br_a4_i_14_n_0;
  wire CPU_valid_taken_br_a4_i_15_n_0;
  wire CPU_valid_taken_br_a4_i_16_n_0;
  wire CPU_valid_taken_br_a4_i_17_n_0;
  wire CPU_valid_taken_br_a4_i_18_n_0;
  wire CPU_valid_taken_br_a4_i_19_n_0;
  wire CPU_valid_taken_br_a4_i_20_n_0;
  wire CPU_valid_taken_br_a4_i_22_n_0;
  wire CPU_valid_taken_br_a4_i_23_n_0;
  wire CPU_valid_taken_br_a4_i_24_n_0;
  wire CPU_valid_taken_br_a4_i_25_n_0;
  wire CPU_valid_taken_br_a4_i_26_n_0;
  wire CPU_valid_taken_br_a4_i_27_n_0;
  wire CPU_valid_taken_br_a4_i_28_n_0;
  wire CPU_valid_taken_br_a4_i_29_n_0;
  wire CPU_valid_taken_br_a4_i_30_n_0;
  wire CPU_valid_taken_br_a4_i_31_n_0;
  wire CPU_valid_taken_br_a4_i_32_n_0;
  wire CPU_valid_taken_br_a4_i_33_n_0;
  wire CPU_valid_taken_br_a4_i_34_n_0;
  wire CPU_valid_taken_br_a4_i_35_n_0;
  wire CPU_valid_taken_br_a4_i_36_n_0;
  wire CPU_valid_taken_br_a4_i_37_n_0;
  wire CPU_valid_taken_br_a4_i_4_n_0;
  wire CPU_valid_taken_br_a4_i_5_n_0;
  wire CPU_valid_taken_br_a4_i_6_n_0;
  wire CPU_valid_taken_br_a4_i_7_n_0;
  wire CPU_valid_taken_br_a4_i_8_n_0;
  wire CPU_valid_taken_br_a4_i_9_n_0;
  wire CPU_valid_taken_br_a4_reg_i_12_n_0;
  wire CPU_valid_taken_br_a4_reg_i_12_n_1;
  wire CPU_valid_taken_br_a4_reg_i_12_n_2;
  wire CPU_valid_taken_br_a4_reg_i_12_n_3;
  wire CPU_valid_taken_br_a4_reg_i_21_n_0;
  wire CPU_valid_taken_br_a4_reg_i_21_n_1;
  wire CPU_valid_taken_br_a4_reg_i_21_n_2;
  wire CPU_valid_taken_br_a4_reg_i_21_n_3;
  wire CPU_valid_taken_br_a4_reg_i_2_n_1;
  wire CPU_valid_taken_br_a4_reg_i_2_n_2;
  wire CPU_valid_taken_br_a4_reg_i_2_n_3;
  wire CPU_valid_taken_br_a4_reg_i_3_n_0;
  wire CPU_valid_taken_br_a4_reg_i_3_n_1;
  wire CPU_valid_taken_br_a4_reg_i_3_n_2;
  wire CPU_valid_taken_br_a4_reg_i_3_n_3;
  wire CPU_valid_taken_br_a5;
  wire \L1_CPU_Dmem[10].L1_wr_a4 ;
  wire \L1_CPU_Dmem[11].L1_wr_a4 ;
  wire \L1_CPU_Dmem[12].L1_wr_a4 ;
  wire \L1_CPU_Dmem[14].L1_wr_a4 ;
  wire \L1_CPU_Dmem[15].L1_wr_a4 ;
  wire \L1_CPU_Dmem[2].L1_wr_a4 ;
  wire \L1_CPU_Dmem[3].L1_wr_a4 ;
  wire \L1_CPU_Dmem[4].L1_wr_a4 ;
  wire \L1_CPU_Dmem[6].L1_wr_a4 ;
  wire \L1_CPU_Dmem[7].L1_wr_a4 ;
  wire \L1_CPU_Dmem[8].L1_wr_a4 ;
  wire \L1_CPU_Xreg[0].L1_wr_a3 ;
  wire \L1_CPU_Xreg[10].L1_wr_a3 ;
  wire \L1_CPU_Xreg[11].L1_wr_a3 ;
  wire \L1_CPU_Xreg[12].L1_wr_a3 ;
  wire \L1_CPU_Xreg[13].L1_wr_a3 ;
  wire \L1_CPU_Xreg[14].L1_wr_a3 ;
  wire \L1_CPU_Xreg[15].L1_wr_a3 ;
  wire \L1_CPU_Xreg[16].L1_wr_a3 ;
  wire \L1_CPU_Xreg[17].L1_wr_a3 ;
  wire \L1_CPU_Xreg[18].L1_wr_a3 ;
  wire \L1_CPU_Xreg[19].L1_wr_a3 ;
  wire \L1_CPU_Xreg[1].L1_wr_a3 ;
  wire \L1_CPU_Xreg[20].L1_wr_a3 ;
  wire \L1_CPU_Xreg[21].L1_wr_a3 ;
  wire \L1_CPU_Xreg[22].L1_wr_a3 ;
  wire \L1_CPU_Xreg[23].L1_wr_a3 ;
  wire \L1_CPU_Xreg[24].L1_wr_a3 ;
  wire \L1_CPU_Xreg[25].L1_wr_a3 ;
  wire \L1_CPU_Xreg[26].L1_wr_a3 ;
  wire \L1_CPU_Xreg[27].L1_wr_a3 ;
  wire \L1_CPU_Xreg[28].L1_wr_a3 ;
  wire \L1_CPU_Xreg[29].L1_wr_a3 ;
  wire \L1_CPU_Xreg[2].L1_wr_a3 ;
  wire \L1_CPU_Xreg[30].L1_wr_a3 ;
  wire \L1_CPU_Xreg[31].L1_wr_a3 ;
  wire \L1_CPU_Xreg[3].L1_wr_a3 ;
  wire \L1_CPU_Xreg[4].L1_wr_a3 ;
  wire \L1_CPU_Xreg[5].L1_wr_a3 ;
  wire \L1_CPU_Xreg[6].L1_wr_a3 ;
  wire \L1_CPU_Xreg[7].L1_wr_a3 ;
  wire \L1_CPU_Xreg[8].L1_wr_a3 ;
  wire \L1_CPU_Xreg[9].L1_wr_a3 ;
  wire \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ;
  wire [31:0]\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] ;
  wire [31:0]\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] ;
  wire [31:0]\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] ;
  wire [31:0]\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] ;
  wire \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ;
  wire [31:0]\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] ;
  wire [31:0]\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] ;
  wire [31:0]\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] ;
  wire \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ;
  wire [31:0]\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] ;
  wire [31:0]\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] ;
  wire [31:0]\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] ;
  wire [31:0]\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] ;
  wire \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ;
  wire [31:0]\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] ;
  wire [31:0]\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] ;
  wire [31:0]\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] ;
  wire [31:0]\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] ;
  wire \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ;
  wire [31:0]\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] ;
  wire [31:0]\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] ;
  wire [31:0]\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] ;
  wire [31:0]\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] ;
  wire [31:0]\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] ;
  wire [31:0]\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] ;
  wire [31:0]\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] ;
  wire \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] ;
  wire [31:0]\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] ;
  wire [31:0]\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][0] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][10] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][11] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][12] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][13] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][14] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][15] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][16] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][17] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][18] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][19] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][1] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][20] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][21] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][22] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][23] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][24] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][25] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][26] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][27] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][28] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][29] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][2] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][30] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][31] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][3] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][4] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][5] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][6] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][7] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][8] ;
  wire \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][9] ;
  wire [31:0]\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] ;
  wire [31:0]\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] ;
  wire [31:0]\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] ;
  wire [31:0]\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] ;
  wire [31:0]\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] ;
  wire [31:0]\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] ;
  wire \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] ;
  wire \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] ;
  wire \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] ;
  wire \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] ;
  wire \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] ;
  wire \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] ;
  wire \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] ;
  wire [31:0]\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_11_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_12_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_7_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_8_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_9_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_11_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_12_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_7_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_8_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_9_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_11_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_12_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_7_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_8_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_9_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_11_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_12_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_7_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_8_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_9_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_11_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_12_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_7_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_8_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_9_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_10_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_15_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_16_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_17_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_18_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_19_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_20_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_21_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_22_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_0 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_3 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_4 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_5 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_6 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_7 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_1 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_2 ;
  wire \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_3 ;
  wire [31:0]\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] ;
  wire [31:0]\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] ;
  wire [31:0]\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] ;
  wire [31:0]\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] ;
  wire [31:0]\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] ;
  wire \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ;
  wire [31:0]\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] ;
  wire [31:0]\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] ;
  wire [31:0]\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] ;
  wire clk;
  wire clkP_CPU_dmem_rd_en_a5;
  wire clkP_CPU_dmem_rd_en_a5_BUFG;
  wire clkP_CPU_rd_valid_a2;
  wire clkP_CPU_rd_valid_a3;
  wire clkP_CPU_rd_valid_a4;
  wire clkP_CPU_rd_valid_a5;
  wire clkP_CPU_rs2_valid_a2;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data21;
  wire [5:1]data3;
  wire gen_clkP_CPU_dmem_rd_en_a5_n_0;
  wire gen_clkP_CPU_rd_valid_a2_n_0;
  wire [7:0]out;
  wire \out[7]_i_1_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[7]_i_6_n_0 ;
  wire \out[7]_i_7_n_0 ;
  wire [7:0]out_OBUF;
  wire p_0_in0_in;
  wire [3:0]p_0_in__0;
  wire p_1_in;
  wire p_64_in;
  wire reset;
  wire reset_IBUF;
  wire [3:1]\NLW_CPU_br_tgt_pc_a3_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_CPU_br_tgt_pc_a3_reg[5]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_CPU_inc_pc_a2_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_CPU_inc_pc_a2_reg[5]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_CPU_valid_taken_br_a4_reg_i_12_O_UNCONNECTED;
  wire [3:0]NLW_CPU_valid_taken_br_a4_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_CPU_valid_taken_br_a4_reg_i_21_O_UNCONNECTED;
  wire [3:0]NLW_CPU_valid_taken_br_a4_reg_i_3_O_UNCONNECTED;
  wire [3:3]\NLW_L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("test_time_synth.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_br_tgt_pc_a3[3]_i_2 
       (.I0(CPU_pc_a2[3]),
        .I1(CPU_imm_a2[3]),
        .O(\CPU_br_tgt_pc_a3[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \CPU_br_tgt_pc_a3[3]_i_3 
       (.I0(CPU_pc_a2[2]),
        .O(\CPU_br_tgt_pc_a3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_br_tgt_pc_a3[3]_i_4 
       (.I0(CPU_pc_a2[1]),
        .I1(CPU_imm_a2[1]),
        .O(\CPU_br_tgt_pc_a3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_br_tgt_pc_a3[3]_i_5 
       (.I0(CPU_pc_a2[0]),
        .I1(CPU_imm_a2[0]),
        .O(\CPU_br_tgt_pc_a3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_br_tgt_pc_a3[5]_i_2 
       (.I0(CPU_pc_a2[5]),
        .I1(CPU_imm_a2[31]),
        .O(\CPU_br_tgt_pc_a3[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_br_tgt_pc_a3[5]_i_3 
       (.I0(CPU_pc_a2[4]),
        .I1(CPU_imm_a2[4]),
        .O(\CPU_br_tgt_pc_a3[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[0]),
        .Q(CPU_br_tgt_pc_a3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[1]),
        .Q(CPU_br_tgt_pc_a3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[2]),
        .Q(CPU_br_tgt_pc_a3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[3]),
        .Q(CPU_br_tgt_pc_a3[3]),
        .R(1'b0));
  CARRY4 \CPU_br_tgt_pc_a3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\CPU_br_tgt_pc_a3_reg[3]_i_1_n_0 ,\CPU_br_tgt_pc_a3_reg[3]_i_1_n_1 ,\CPU_br_tgt_pc_a3_reg[3]_i_1_n_2 ,\CPU_br_tgt_pc_a3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(CPU_pc_a2[3:0]),
        .O(CPU_br_tgt_pc_a2[3:0]),
        .S({\CPU_br_tgt_pc_a3[3]_i_2_n_0 ,\CPU_br_tgt_pc_a3[3]_i_3_n_0 ,\CPU_br_tgt_pc_a3[3]_i_4_n_0 ,\CPU_br_tgt_pc_a3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[4]),
        .Q(CPU_br_tgt_pc_a3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_br_tgt_pc_a3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_br_tgt_pc_a2[5]),
        .Q(CPU_br_tgt_pc_a3[5]),
        .R(1'b0));
  CARRY4 \CPU_br_tgt_pc_a3_reg[5]_i_1 
       (.CI(\CPU_br_tgt_pc_a3_reg[3]_i_1_n_0 ),
        .CO({\NLW_CPU_br_tgt_pc_a3_reg[5]_i_1_CO_UNCONNECTED [3:1],\CPU_br_tgt_pc_a3_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,CPU_pc_a2[4]}),
        .O({\NLW_CPU_br_tgt_pc_a3_reg[5]_i_1_O_UNCONNECTED [3:2],CPU_br_tgt_pc_a2[5:4]}),
        .S({1'b0,1'b0,\CPU_br_tgt_pc_a3[5]_i_2_n_0 ,\CPU_br_tgt_pc_a3[5]_i_3_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[0]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [0]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [0]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [0]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [0]),
        .O(\CPU_dmem_rd_data_a5[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[0]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [0]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [0]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [0]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [0]),
        .O(\CPU_dmem_rd_data_a5[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[0]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [0]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [0]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [0]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [0]),
        .O(\CPU_dmem_rd_data_a5[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[0]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [0]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [0]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [0]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [0]),
        .O(\CPU_dmem_rd_data_a5[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[10]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [10]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [10]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [10]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [10]),
        .O(\CPU_dmem_rd_data_a5[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[10]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [10]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [10]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [10]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [10]),
        .O(\CPU_dmem_rd_data_a5[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[10]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [10]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [10]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [10]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [10]),
        .O(\CPU_dmem_rd_data_a5[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[10]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [10]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [10]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [10]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [10]),
        .O(\CPU_dmem_rd_data_a5[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[11]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [11]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [11]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [11]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [11]),
        .O(\CPU_dmem_rd_data_a5[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[11]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [11]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [11]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [11]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [11]),
        .O(\CPU_dmem_rd_data_a5[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[11]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [11]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [11]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [11]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [11]),
        .O(\CPU_dmem_rd_data_a5[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[11]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [11]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [11]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [11]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [11]),
        .O(\CPU_dmem_rd_data_a5[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[12]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [12]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [12]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [12]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [12]),
        .O(\CPU_dmem_rd_data_a5[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[12]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [12]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [12]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [12]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [12]),
        .O(\CPU_dmem_rd_data_a5[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[12]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [12]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [12]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [12]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [12]),
        .O(\CPU_dmem_rd_data_a5[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[12]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [12]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [12]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [12]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [12]),
        .O(\CPU_dmem_rd_data_a5[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[13]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [13]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [13]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [13]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [13]),
        .O(\CPU_dmem_rd_data_a5[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[13]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [13]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [13]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [13]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [13]),
        .O(\CPU_dmem_rd_data_a5[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[13]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [13]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [13]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [13]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [13]),
        .O(\CPU_dmem_rd_data_a5[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[13]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [13]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [13]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [13]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [13]),
        .O(\CPU_dmem_rd_data_a5[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[14]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [14]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [14]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [14]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [14]),
        .O(\CPU_dmem_rd_data_a5[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[14]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [14]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [14]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [14]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [14]),
        .O(\CPU_dmem_rd_data_a5[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[14]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [14]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [14]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [14]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [14]),
        .O(\CPU_dmem_rd_data_a5[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[14]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [14]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [14]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [14]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [14]),
        .O(\CPU_dmem_rd_data_a5[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[15]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [15]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [15]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [15]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [15]),
        .O(\CPU_dmem_rd_data_a5[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[15]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [15]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [15]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [15]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [15]),
        .O(\CPU_dmem_rd_data_a5[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[15]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [15]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [15]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [15]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [15]),
        .O(\CPU_dmem_rd_data_a5[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[15]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [15]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [15]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [15]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [15]),
        .O(\CPU_dmem_rd_data_a5[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[16]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [16]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [16]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [16]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [16]),
        .O(\CPU_dmem_rd_data_a5[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[16]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [16]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [16]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [16]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [16]),
        .O(\CPU_dmem_rd_data_a5[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[16]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [16]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [16]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [16]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [16]),
        .O(\CPU_dmem_rd_data_a5[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[16]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [16]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [16]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [16]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [16]),
        .O(\CPU_dmem_rd_data_a5[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[17]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [17]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [17]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [17]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [17]),
        .O(\CPU_dmem_rd_data_a5[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[17]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [17]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [17]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [17]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [17]),
        .O(\CPU_dmem_rd_data_a5[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[17]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [17]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [17]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [17]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [17]),
        .O(\CPU_dmem_rd_data_a5[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[17]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [17]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [17]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [17]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [17]),
        .O(\CPU_dmem_rd_data_a5[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[18]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [18]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [18]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [18]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [18]),
        .O(\CPU_dmem_rd_data_a5[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[18]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [18]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [18]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [18]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [18]),
        .O(\CPU_dmem_rd_data_a5[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[18]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [18]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [18]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [18]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [18]),
        .O(\CPU_dmem_rd_data_a5[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[18]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [18]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [18]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [18]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [18]),
        .O(\CPU_dmem_rd_data_a5[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[19]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [19]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [19]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [19]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [19]),
        .O(\CPU_dmem_rd_data_a5[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[19]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [19]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [19]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [19]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [19]),
        .O(\CPU_dmem_rd_data_a5[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[19]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [19]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [19]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [19]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [19]),
        .O(\CPU_dmem_rd_data_a5[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[19]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [19]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [19]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [19]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [19]),
        .O(\CPU_dmem_rd_data_a5[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[1]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [1]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [1]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [1]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [1]),
        .O(\CPU_dmem_rd_data_a5[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[1]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [1]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [1]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [1]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [1]),
        .O(\CPU_dmem_rd_data_a5[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[1]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [1]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [1]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [1]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [1]),
        .O(\CPU_dmem_rd_data_a5[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[1]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [1]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [1]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [1]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [1]),
        .O(\CPU_dmem_rd_data_a5[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[20]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [20]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [20]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [20]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [20]),
        .O(\CPU_dmem_rd_data_a5[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[20]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [20]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [20]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [20]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [20]),
        .O(\CPU_dmem_rd_data_a5[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[20]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [20]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [20]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [20]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [20]),
        .O(\CPU_dmem_rd_data_a5[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[20]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [20]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [20]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [20]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [20]),
        .O(\CPU_dmem_rd_data_a5[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[21]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [21]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [21]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [21]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [21]),
        .O(\CPU_dmem_rd_data_a5[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[21]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [21]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [21]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [21]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [21]),
        .O(\CPU_dmem_rd_data_a5[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[21]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [21]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [21]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [21]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [21]),
        .O(\CPU_dmem_rd_data_a5[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[21]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [21]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [21]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [21]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [21]),
        .O(\CPU_dmem_rd_data_a5[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[22]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [22]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [22]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [22]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [22]),
        .O(\CPU_dmem_rd_data_a5[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[22]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [22]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [22]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [22]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [22]),
        .O(\CPU_dmem_rd_data_a5[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[22]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [22]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [22]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [22]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [22]),
        .O(\CPU_dmem_rd_data_a5[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[22]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [22]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [22]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [22]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [22]),
        .O(\CPU_dmem_rd_data_a5[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[23]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [23]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [23]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [23]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [23]),
        .O(\CPU_dmem_rd_data_a5[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[23]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [23]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [23]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [23]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [23]),
        .O(\CPU_dmem_rd_data_a5[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[23]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [23]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [23]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [23]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [23]),
        .O(\CPU_dmem_rd_data_a5[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[23]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [23]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [23]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [23]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [23]),
        .O(\CPU_dmem_rd_data_a5[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[24]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [24]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [24]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [24]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [24]),
        .O(\CPU_dmem_rd_data_a5[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[24]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [24]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [24]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [24]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [24]),
        .O(\CPU_dmem_rd_data_a5[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[24]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [24]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [24]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [24]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [24]),
        .O(\CPU_dmem_rd_data_a5[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[24]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [24]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [24]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [24]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [24]),
        .O(\CPU_dmem_rd_data_a5[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[25]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [25]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [25]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [25]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [25]),
        .O(\CPU_dmem_rd_data_a5[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[25]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [25]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [25]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [25]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [25]),
        .O(\CPU_dmem_rd_data_a5[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[25]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [25]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [25]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [25]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [25]),
        .O(\CPU_dmem_rd_data_a5[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[25]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [25]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [25]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [25]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [25]),
        .O(\CPU_dmem_rd_data_a5[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[26]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [26]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [26]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [26]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [26]),
        .O(\CPU_dmem_rd_data_a5[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[26]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [26]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [26]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [26]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [26]),
        .O(\CPU_dmem_rd_data_a5[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[26]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [26]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [26]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [26]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [26]),
        .O(\CPU_dmem_rd_data_a5[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[26]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [26]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [26]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [26]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [26]),
        .O(\CPU_dmem_rd_data_a5[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[27]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [27]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [27]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [27]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [27]),
        .O(\CPU_dmem_rd_data_a5[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[27]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [27]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [27]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [27]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [27]),
        .O(\CPU_dmem_rd_data_a5[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[27]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [27]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [27]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [27]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [27]),
        .O(\CPU_dmem_rd_data_a5[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[27]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [27]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [27]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [27]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [27]),
        .O(\CPU_dmem_rd_data_a5[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[28]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [28]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [28]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [28]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [28]),
        .O(\CPU_dmem_rd_data_a5[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[28]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [28]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [28]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [28]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [28]),
        .O(\CPU_dmem_rd_data_a5[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[28]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [28]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [28]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [28]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [28]),
        .O(\CPU_dmem_rd_data_a5[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[28]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [28]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [28]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [28]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [28]),
        .O(\CPU_dmem_rd_data_a5[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[29]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [29]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [29]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [29]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [29]),
        .O(\CPU_dmem_rd_data_a5[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[29]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [29]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [29]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [29]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [29]),
        .O(\CPU_dmem_rd_data_a5[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[29]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [29]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [29]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [29]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [29]),
        .O(\CPU_dmem_rd_data_a5[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[29]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [29]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [29]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [29]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [29]),
        .O(\CPU_dmem_rd_data_a5[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[2]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [2]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [2]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [2]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [2]),
        .O(\CPU_dmem_rd_data_a5[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[2]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [2]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [2]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [2]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [2]),
        .O(\CPU_dmem_rd_data_a5[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[2]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [2]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [2]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [2]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [2]),
        .O(\CPU_dmem_rd_data_a5[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[2]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [2]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [2]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [2]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [2]),
        .O(\CPU_dmem_rd_data_a5[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[30]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [30]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [30]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [30]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [30]),
        .O(\CPU_dmem_rd_data_a5[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[30]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [30]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [30]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [30]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [30]),
        .O(\CPU_dmem_rd_data_a5[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[30]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [30]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [30]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [30]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [30]),
        .O(\CPU_dmem_rd_data_a5[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[30]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [30]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [30]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [30]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [30]),
        .O(\CPU_dmem_rd_data_a5[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[31]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [31]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [31]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [31]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [31]),
        .O(\CPU_dmem_rd_data_a5[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[31]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [31]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [31]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [31]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [31]),
        .O(\CPU_dmem_rd_data_a5[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[31]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [31]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [31]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [31]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [31]),
        .O(\CPU_dmem_rd_data_a5[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[31]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [31]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [31]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [31]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [31]),
        .O(\CPU_dmem_rd_data_a5[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[3]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [3]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [3]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [3]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [3]),
        .O(\CPU_dmem_rd_data_a5[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[3]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [3]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [3]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [3]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [3]),
        .O(\CPU_dmem_rd_data_a5[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[3]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [3]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [3]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [3]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [3]),
        .O(\CPU_dmem_rd_data_a5[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[3]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [3]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [3]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [3]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [3]),
        .O(\CPU_dmem_rd_data_a5[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[4]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [4]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [4]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [4]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [4]),
        .O(\CPU_dmem_rd_data_a5[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[4]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [4]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [4]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [4]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [4]),
        .O(\CPU_dmem_rd_data_a5[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[4]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [4]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [4]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [4]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [4]),
        .O(\CPU_dmem_rd_data_a5[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[4]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [4]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [4]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [4]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [4]),
        .O(\CPU_dmem_rd_data_a5[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[5]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [5]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [5]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [5]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [5]),
        .O(\CPU_dmem_rd_data_a5[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[5]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [5]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [5]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [5]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [5]),
        .O(\CPU_dmem_rd_data_a5[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[5]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [5]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [5]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [5]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [5]),
        .O(\CPU_dmem_rd_data_a5[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[5]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [5]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [5]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [5]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [5]),
        .O(\CPU_dmem_rd_data_a5[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[6]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [6]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [6]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [6]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [6]),
        .O(\CPU_dmem_rd_data_a5[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[6]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [6]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [6]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [6]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [6]),
        .O(\CPU_dmem_rd_data_a5[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[6]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [6]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [6]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [6]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [6]),
        .O(\CPU_dmem_rd_data_a5[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[6]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [6]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [6]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [6]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [6]),
        .O(\CPU_dmem_rd_data_a5[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[7]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [7]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [7]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [7]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [7]),
        .O(\CPU_dmem_rd_data_a5[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[7]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [7]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [7]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [7]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [7]),
        .O(\CPU_dmem_rd_data_a5[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[7]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [7]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [7]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [7]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [7]),
        .O(\CPU_dmem_rd_data_a5[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[7]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [7]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [7]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [7]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [7]),
        .O(\CPU_dmem_rd_data_a5[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[8]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [8]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [8]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [8]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [8]),
        .O(\CPU_dmem_rd_data_a5[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[8]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [8]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [8]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [8]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [8]),
        .O(\CPU_dmem_rd_data_a5[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[8]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [8]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [8]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [8]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [8]),
        .O(\CPU_dmem_rd_data_a5[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[8]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [8]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [8]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [8]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [8]),
        .O(\CPU_dmem_rd_data_a5[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[9]_i_4 
       (.I0(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [9]),
        .I1(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [9]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [9]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [9]),
        .O(\CPU_dmem_rd_data_a5[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[9]_i_5 
       (.I0(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [9]),
        .I1(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [9]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [9]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [9]),
        .O(\CPU_dmem_rd_data_a5[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[9]_i_6 
       (.I0(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [9]),
        .I1(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [9]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [9]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [9]),
        .O(\CPU_dmem_rd_data_a5[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_dmem_rd_data_a5[9]_i_7 
       (.I0(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [9]),
        .I1(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [9]),
        .I2(CPU_result_a4[3]),
        .I3(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [9]),
        .I4(CPU_result_a4[2]),
        .I5(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [9]),
        .O(\CPU_dmem_rd_data_a5[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[0] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[0]),
        .Q(CPU_dmem_rd_data_a5[0]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[0]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[0]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[0]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[0]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[0]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[0]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[0]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[0]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[0]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[0]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[0]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[0]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[10] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[10]),
        .Q(CPU_dmem_rd_data_a5[10]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[10]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[10]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[10]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[10]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[10]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[10]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[10]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[10]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[10]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[10]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[10]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[10]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[11] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[11]),
        .Q(CPU_dmem_rd_data_a5[11]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[11]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[11]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[11]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[11]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[11]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[11]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[11]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[11]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[11]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[11]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[11]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[11]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[12] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[12]),
        .Q(CPU_dmem_rd_data_a5[12]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[12]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[12]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[12]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[12]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[12]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[12]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[12]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[12]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[12]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[12]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[12]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[12]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[13] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[13]),
        .Q(CPU_dmem_rd_data_a5[13]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[13]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[13]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[13]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[13]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[13]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[13]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[13]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[13]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[13]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[13]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[13]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[13]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[14] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[14]),
        .Q(CPU_dmem_rd_data_a5[14]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[14]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[14]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[14]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[14]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[14]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[14]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[14]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[14]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[14]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[14]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[14]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[14]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[15] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[15]),
        .Q(CPU_dmem_rd_data_a5[15]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[15]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[15]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[15]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[15]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[15]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[15]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[15]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[15]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[15]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[15]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[15]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[15]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[16] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[16]),
        .Q(CPU_dmem_rd_data_a5[16]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[16]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[16]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[16]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[16]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[16]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[16]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[16]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[16]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[16]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[16]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[16]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[16]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[17] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[17]),
        .Q(CPU_dmem_rd_data_a5[17]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[17]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[17]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[17]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[17]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[17]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[17]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[17]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[17]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[17]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[17]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[17]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[17]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[18] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[18]),
        .Q(CPU_dmem_rd_data_a5[18]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[18]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[18]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[18]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[18]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[18]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[18]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[18]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[18]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[18]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[18]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[18]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[18]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[19] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[19]),
        .Q(CPU_dmem_rd_data_a5[19]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[19]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[19]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[19]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[19]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[19]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[19]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[19]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[19]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[19]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[19]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[19]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[19]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[1] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[1]),
        .Q(CPU_dmem_rd_data_a5[1]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[1]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[1]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[1]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[1]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[1]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[1]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[1]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[1]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[1]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[1]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[1]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[1]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[20] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[20]),
        .Q(CPU_dmem_rd_data_a5[20]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[20]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[20]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[20]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[20]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[20]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[20]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[20]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[20]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[20]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[20]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[20]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[20]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[21] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[21]),
        .Q(CPU_dmem_rd_data_a5[21]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[21]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[21]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[21]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[21]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[21]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[21]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[21]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[21]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[21]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[21]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[21]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[21]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[22] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[22]),
        .Q(CPU_dmem_rd_data_a5[22]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[22]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[22]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[22]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[22]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[22]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[22]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[22]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[22]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[22]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[22]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[22]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[22]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[23] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[23]),
        .Q(CPU_dmem_rd_data_a5[23]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[23]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[23]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[23]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[23]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[23]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[23]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[23]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[23]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[23]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[23]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[23]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[23]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[24] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[24]),
        .Q(CPU_dmem_rd_data_a5[24]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[24]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[24]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[24]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[24]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[24]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[24]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[24]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[24]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[24]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[24]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[24]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[24]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[25] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[25]),
        .Q(CPU_dmem_rd_data_a5[25]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[25]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[25]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[25]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[25]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[25]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[25]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[25]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[25]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[25]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[25]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[25]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[25]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[26] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[26]),
        .Q(CPU_dmem_rd_data_a5[26]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[26]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[26]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[26]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[26]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[26]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[26]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[26]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[26]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[26]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[26]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[26]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[26]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[27] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[27]),
        .Q(CPU_dmem_rd_data_a5[27]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[27]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[27]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[27]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[27]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[27]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[27]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[27]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[27]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[27]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[27]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[27]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[27]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[28] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[28]),
        .Q(CPU_dmem_rd_data_a5[28]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[28]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[28]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[28]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[28]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[28]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[28]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[28]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[28]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[28]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[28]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[28]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[28]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[29] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[29]),
        .Q(CPU_dmem_rd_data_a5[29]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[29]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[29]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[29]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[29]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[29]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[29]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[29]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[29]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[29]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[29]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[29]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[29]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[2] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[2]),
        .Q(CPU_dmem_rd_data_a5[2]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[2]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[2]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[2]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[2]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[2]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[2]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[2]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[2]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[2]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[2]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[2]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[2]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[30] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[30]),
        .Q(CPU_dmem_rd_data_a5[30]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[30]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[30]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[30]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[30]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[30]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[30]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[30]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[30]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[30]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[30]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[30]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[30]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[31] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[31]),
        .Q(CPU_dmem_rd_data_a5[31]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[31]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[31]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[31]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[31]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[31]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[31]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[31]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[31]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[31]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[31]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[31]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[31]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[3] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[3]),
        .Q(CPU_dmem_rd_data_a5[3]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[3]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[3]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[3]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[3]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[3]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[3]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[3]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[3]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[3]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[3]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[3]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[3]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[4] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[4]),
        .Q(CPU_dmem_rd_data_a5[4]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[4]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[4]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[4]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[4]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[4]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[4]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[4]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[4]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[4]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[4]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[4]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[4]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[5] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[5]),
        .Q(CPU_dmem_rd_data_a5[5]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[5]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[5]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[5]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[5]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[5]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[5]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[5]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[5]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[5]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[5]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[5]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[5]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[6] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[6]),
        .Q(CPU_dmem_rd_data_a5[6]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[6]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[6]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[6]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[6]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[6]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[6]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[6]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[6]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[6]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[6]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[6]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[6]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[7] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[7]),
        .Q(CPU_dmem_rd_data_a5[7]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[7]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[7]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[7]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[7]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[7]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[7]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[7]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[7]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[7]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[7]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[7]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[7]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[8] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[8]),
        .Q(CPU_dmem_rd_data_a5[8]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[8]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[8]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[8]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[8]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[8]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[8]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[8]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[8]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[8]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[8]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[8]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[8]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_dmem_rd_data_a5_reg[9] 
       (.C(clkP_CPU_dmem_rd_en_a5_BUFG),
        .CE(1'b1),
        .D(CPU_Dmem_value_a5[9]),
        .Q(CPU_dmem_rd_data_a5[9]),
        .R(1'b0));
  MUXF8 \CPU_dmem_rd_data_a5_reg[9]_i_1 
       (.I0(\CPU_dmem_rd_data_a5_reg[9]_i_2_n_0 ),
        .I1(\CPU_dmem_rd_data_a5_reg[9]_i_3_n_0 ),
        .O(CPU_Dmem_value_a5[9]),
        .S(CPU_result_a4[5]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[9]_i_2 
       (.I0(\CPU_dmem_rd_data_a5[9]_i_4_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[9]_i_5_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[9]_i_2_n_0 ),
        .S(CPU_result_a4[4]));
  MUXF7 \CPU_dmem_rd_data_a5_reg[9]_i_3 
       (.I0(\CPU_dmem_rd_data_a5[9]_i_6_n_0 ),
        .I1(\CPU_dmem_rd_data_a5[9]_i_7_n_0 ),
        .O(\CPU_dmem_rd_data_a5_reg[9]_i_3_n_0 ),
        .S(CPU_result_a4[4]));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_imem_rd_addr_a1[0]_i_1 
       (.I0(data3[2]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_inc_pc_a3[2]),
        .I5(CPU_br_tgt_pc_a3[2]),
        .O(\CPU_imem_rd_addr_a1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_imem_rd_addr_a1[1]_i_1 
       (.I0(data3[3]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_inc_pc_a3[3]),
        .I5(CPU_br_tgt_pc_a3[3]),
        .O(\CPU_imem_rd_addr_a1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_imem_rd_addr_a1[2]_i_1 
       (.I0(data3[4]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_inc_pc_a3[4]),
        .I5(CPU_br_tgt_pc_a3[4]),
        .O(\CPU_imem_rd_addr_a1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_imem_rd_addr_a1[3]_i_1 
       (.I0(data3[5]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_inc_pc_a3[5]),
        .I5(CPU_br_tgt_pc_a3[5]),
        .O(\CPU_imem_rd_addr_a1[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imem_rd_addr_a1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_imem_rd_addr_a1[0]_i_1_n_0 ),
        .Q(CPU_imem_rd_addr_a1[0]),
        .R(CPU_reset_a1));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imem_rd_addr_a1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_imem_rd_addr_a1[1]_i_1_n_0 ),
        .Q(CPU_imem_rd_addr_a1[1]),
        .R(CPU_reset_a1));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imem_rd_addr_a1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_imem_rd_addr_a1[2]_i_1_n_0 ),
        .Q(CPU_imem_rd_addr_a1[2]),
        .R(CPU_reset_a1));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imem_rd_addr_a1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_imem_rd_addr_a1[3]_i_1_n_0 ),
        .Q(CPU_imem_rd_addr_a1[3]),
        .R(CPU_reset_a1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \CPU_imm_a2[0]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(CPU_imm_a1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \CPU_imm_a2[1]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(CPU_imm_a1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \CPU_imm_a2[31]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(CPU_imm_a1[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \CPU_imm_a2[3]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[3]),
        .O(CPU_imm_a1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0520)) 
    \CPU_imm_a2[4]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(CPU_imm_a1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a1[0]),
        .Q(CPU_imm_a2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a1[1]),
        .Q(CPU_imm_a2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a2_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a1[31]),
        .Q(CPU_imm_a2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a1[3]),
        .Q(CPU_imm_a2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a1[4]),
        .Q(CPU_imm_a2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a2[0]),
        .Q(\CPU_imm_a3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a2[1]),
        .Q(\CPU_imm_a3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a3_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a2[31]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a2[3]),
        .Q(\CPU_imm_a3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_imm_a3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imm_a2[4]),
        .Q(\CPU_imm_a3_reg_n_0_[4] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \CPU_inc_pc_a2[4]_i_2 
       (.I0(CPU_imem_rd_addr_a1[0]),
        .O(\CPU_inc_pc_a2[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data3[1]),
        .Q(CPU_inc_pc_a2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data3[2]),
        .Q(CPU_inc_pc_a2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data3[3]),
        .Q(CPU_inc_pc_a2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data3[4]),
        .Q(CPU_inc_pc_a2[4]),
        .R(1'b0));
  CARRY4 \CPU_inc_pc_a2_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\CPU_inc_pc_a2_reg[4]_i_1_n_0 ,\CPU_inc_pc_a2_reg[4]_i_1_n_1 ,\CPU_inc_pc_a2_reg[4]_i_1_n_2 ,\CPU_inc_pc_a2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,CPU_imem_rd_addr_a1[0],1'b0}),
        .O(data3[4:1]),
        .S({CPU_imem_rd_addr_a1[2:1],\CPU_inc_pc_a2[4]_i_2_n_0 ,CPU_pc_a1[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data3[5]),
        .Q(CPU_inc_pc_a2[5]),
        .R(1'b0));
  CARRY4 \CPU_inc_pc_a2_reg[5]_i_1 
       (.CI(\CPU_inc_pc_a2_reg[4]_i_1_n_0 ),
        .CO(\NLW_CPU_inc_pc_a2_reg[5]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CPU_inc_pc_a2_reg[5]_i_1_O_UNCONNECTED [3:1],data3[5]}),
        .S({1'b0,1'b0,1'b0,CPU_imem_rd_addr_a1[3]}));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_inc_pc_a2[1]),
        .Q(CPU_inc_pc_a3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_inc_pc_a2[2]),
        .Q(CPU_inc_pc_a3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_inc_pc_a2[3]),
        .Q(CPU_inc_pc_a3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_inc_pc_a2[4]),
        .Q(CPU_inc_pc_a3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_inc_pc_a3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_inc_pc_a2[5]),
        .Q(CPU_inc_pc_a3[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h009D)) 
    CPU_is_add_a2_i_1
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(CPU_is_add_a2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_add_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_add_a2_i_1_n_0),
        .Q(CPU_is_add_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_add_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_add_a2),
        .Q(CPU_is_add_a3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0402)) 
    CPU_is_addi_a2_i_1
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[3]),
        .I3(CPU_imem_rd_addr_a1[0]),
        .O(CPU_is_addi_a2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_addi_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_addi_a2_i_1_n_0),
        .Q(CPU_is_addi_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_addi_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_addi_a2),
        .Q(CPU_is_addi_a3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    CPU_is_blt_a2_i_1
       (.I0(CPU_imem_rd_addr_a1[0]),
        .I1(CPU_imem_rd_addr_a1[3]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(CPU_is_blt_a1));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_blt_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_blt_a1),
        .Q(CPU_is_blt_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_blt_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_blt_a2),
        .Q(CPU_is_blt_a3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    CPU_is_load_a2_i_1
       (.I0(CPU_imem_rd_addr_a1[0]),
        .I1(CPU_imem_rd_addr_a1[3]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(CPU_is_load_a2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_load_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_load_a2_i_1_n_0),
        .Q(CPU_is_load_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_load_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_load_a2),
        .Q(CPU_is_load_a3),
        .R(1'b0));
  (* srl_name = "CPU_is_s_instr_a3_reg_srl2" *) 
  SRL16E #(
    .INIT(16'h0000)) 
    CPU_is_s_instr_a3_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(CPU_is_s_instr_a3_reg_srl2_i_1_n_0),
        .Q(CPU_is_s_instr_a3_reg_srl2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    CPU_is_s_instr_a3_reg_srl2_i_1
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[1]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[0]),
        .O(CPU_is_s_instr_a3_reg_srl2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_is_s_instr_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_is_s_instr_a3_reg_srl2_n_0),
        .Q(CPU_is_s_instr_a4),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_pc_a1[0]_i_1 
       (.I0(CPU_pc_a1[0]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_pc_a3),
        .I5(CPU_br_tgt_pc_a3[0]),
        .O(\CPU_pc_a1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF2A00EA002A)) 
    \CPU_pc_a1[1]_i_1 
       (.I0(data3[1]),
        .I1(CPU_is_load_a3),
        .I2(CPU_valid_a3),
        .I3(CPU_valid_taken_br_a3),
        .I4(CPU_inc_pc_a3[1]),
        .I5(CPU_br_tgt_pc_a3[1]),
        .O(\CPU_pc_a1[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_pc_a1[0]_i_1_n_0 ),
        .Q(CPU_pc_a1[0]),
        .R(CPU_reset_a1));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_pc_a1[1]_i_1_n_0 ),
        .Q(CPU_pc_a1[1]),
        .R(CPU_reset_a1));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_pc_a1[0]),
        .Q(CPU_pc_a2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_pc_a1[1]),
        .Q(CPU_pc_a2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imem_rd_addr_a1[0]),
        .Q(CPU_pc_a2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imem_rd_addr_a1[1]),
        .Q(CPU_pc_a2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imem_rd_addr_a1[2]),
        .Q(CPU_pc_a2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_imem_rd_addr_a1[3]),
        .Q(CPU_pc_a2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_pc_a3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_pc_a2[0]),
        .Q(CPU_pc_a3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9CC8)) 
    \CPU_rd_a2[0]_i_1 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(CPU_Imem_instr_a1[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0095)) 
    \CPU_rd_a2[1]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[0]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rd_a2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0076)) 
    \CPU_rd_a2[2]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[0]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rd_a2[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CPU_rd_a2[3]_i_1 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .O(CPU_Imem_instr_a1[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF2F0)) 
    \CPU_rd_a2[4]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[3]),
        .I3(CPU_imem_rd_addr_a1[2]),
        .O(CPU_Imem_instr_a1[11]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a2_reg[0] 
       (.C(clkP_CPU_rd_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[7]),
        .Q(CPU_rd_a2[0]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a2_reg[1] 
       (.C(clkP_CPU_rd_valid_a2),
        .CE(1'b1),
        .D(\CPU_rd_a2[1]_i_1_n_0 ),
        .Q(CPU_rd_a2[1]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a2_reg[2] 
       (.C(clkP_CPU_rd_valid_a2),
        .CE(1'b1),
        .D(\CPU_rd_a2[2]_i_1_n_0 ),
        .Q(CPU_rd_a2[2]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a2_reg[3] 
       (.C(clkP_CPU_rd_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[10]),
        .Q(CPU_rd_a2[3]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a2_reg[4] 
       (.C(clkP_CPU_rd_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[11]),
        .Q(CPU_rd_a2[4]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a3_reg[0] 
       (.C(clkP_CPU_rd_valid_a3),
        .CE(1'b1),
        .D(CPU_rd_a2[0]),
        .Q(CPU_rd_a3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a3_reg[1] 
       (.C(clkP_CPU_rd_valid_a3),
        .CE(1'b1),
        .D(CPU_rd_a2[1]),
        .Q(CPU_rd_a3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a3_reg[2] 
       (.C(clkP_CPU_rd_valid_a3),
        .CE(1'b1),
        .D(CPU_rd_a2[2]),
        .Q(CPU_rd_a3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a3_reg[3] 
       (.C(clkP_CPU_rd_valid_a3),
        .CE(1'b1),
        .D(CPU_rd_a2[3]),
        .Q(CPU_rd_a3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a3_reg[4] 
       (.C(clkP_CPU_rd_valid_a3),
        .CE(1'b1),
        .D(CPU_rd_a2[4]),
        .Q(CPU_rd_a3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a4_reg[0] 
       (.C(clkP_CPU_rd_valid_a4),
        .CE(1'b1),
        .D(CPU_rd_a3[0]),
        .Q(CPU_rd_a4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a4_reg[1] 
       (.C(clkP_CPU_rd_valid_a4),
        .CE(1'b1),
        .D(CPU_rd_a3[1]),
        .Q(CPU_rd_a4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a4_reg[2] 
       (.C(clkP_CPU_rd_valid_a4),
        .CE(1'b1),
        .D(CPU_rd_a3[2]),
        .Q(CPU_rd_a4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a4_reg[3] 
       (.C(clkP_CPU_rd_valid_a4),
        .CE(1'b1),
        .D(CPU_rd_a3[3]),
        .Q(CPU_rd_a4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a4_reg[4] 
       (.C(clkP_CPU_rd_valid_a4),
        .CE(1'b1),
        .D(CPU_rd_a3[4]),
        .Q(CPU_rd_a4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a5_reg[0] 
       (.C(clkP_CPU_rd_valid_a5),
        .CE(1'b1),
        .D(CPU_rd_a4[0]),
        .Q(CPU_rd_a5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a5_reg[1] 
       (.C(clkP_CPU_rd_valid_a5),
        .CE(1'b1),
        .D(CPU_rd_a4[1]),
        .Q(CPU_rd_a5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a5_reg[2] 
       (.C(clkP_CPU_rd_valid_a5),
        .CE(1'b1),
        .D(CPU_rd_a4[2]),
        .Q(CPU_rd_a5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a5_reg[3] 
       (.C(clkP_CPU_rd_valid_a5),
        .CE(1'b1),
        .D(CPU_rd_a4[3]),
        .Q(CPU_rd_a5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rd_a5_reg[4] 
       (.C(clkP_CPU_rd_valid_a5),
        .CE(1'b1),
        .D(CPU_rd_a4[4]),
        .Q(CPU_rd_a5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_rd_valid_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(gen_clkP_CPU_rd_valid_a2_n_0),
        .Q(CPU_rd_valid_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_rd_valid_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_rd_valid_a2),
        .Q(CPU_rd_valid_a3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_rd_valid_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_rd_valid_a3),
        .Q(CPU_rd_valid_a4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_reset_a1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reset_IBUF),
        .Q(CPU_reset_a1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_reset_a2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_reset_a1),
        .Q(CPU_reset_a2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_reset_a3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_reset_a2),
        .Q(CPU_reset_a3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_reset_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_reset_a3),
        .Q(CPU_reset_a4),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \CPU_result_a4[2]_i_1 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[3]_i_2_n_5 ),
        .I2(data21[2]),
        .I3(CPU_is_addi_a3),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \CPU_result_a4[3]_i_1 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[3]_i_2_n_4 ),
        .I2(data21[3]),
        .I3(CPU_is_addi_a3),
        .O(p_0_in__0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_10 
       (.I0(\CPU_imm_a3_reg_n_0_[1] ),
        .I1(\CPU_src1_value_a3_reg_n_0_[1] ),
        .O(\CPU_result_a4[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_11 
       (.I0(\CPU_src1_value_a3_reg_n_0_[0] ),
        .I1(\CPU_imm_a3_reg_n_0_[0] ),
        .O(\CPU_result_a4[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_4 
       (.I0(CPU_src2_value_a3[3]),
        .I1(\CPU_src1_value_a3_reg_n_0_[3] ),
        .O(\CPU_result_a4[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_5 
       (.I0(CPU_src2_value_a3[2]),
        .I1(\CPU_src1_value_a3_reg_n_0_[2] ),
        .O(\CPU_result_a4[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_6 
       (.I0(CPU_src2_value_a3[1]),
        .I1(\CPU_src1_value_a3_reg_n_0_[1] ),
        .O(\CPU_result_a4[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_7 
       (.I0(\CPU_src1_value_a3_reg_n_0_[0] ),
        .I1(CPU_src2_value_a3[0]),
        .O(\CPU_result_a4[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[3]_i_8 
       (.I0(\CPU_imm_a3_reg_n_0_[3] ),
        .I1(\CPU_src1_value_a3_reg_n_0_[3] ),
        .O(\CPU_result_a4[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \CPU_result_a4[3]_i_9 
       (.I0(\CPU_src1_value_a3_reg_n_0_[2] ),
        .O(\CPU_result_a4[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \CPU_result_a4[4]_i_1 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[5]_i_2_n_7 ),
        .I2(data21[4]),
        .I3(CPU_is_addi_a3),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \CPU_result_a4[5]_i_1 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[5]_i_2_n_6 ),
        .I2(data21[5]),
        .I3(CPU_is_addi_a3),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[5] ),
        .O(\CPU_result_a4[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_11 
       (.I0(\CPU_imm_a3_reg_n_0_[4] ),
        .I1(\CPU_src1_value_a3_reg_n_0_[4] ),
        .O(\CPU_result_a4[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_4 
       (.I0(CPU_src2_value_a3[7]),
        .I1(\CPU_src1_value_a3_reg_n_0_[7] ),
        .O(\CPU_result_a4[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_5 
       (.I0(CPU_src2_value_a3[6]),
        .I1(\CPU_src1_value_a3_reg_n_0_[6] ),
        .O(\CPU_result_a4[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_6 
       (.I0(CPU_src2_value_a3[5]),
        .I1(\CPU_src1_value_a3_reg_n_0_[5] ),
        .O(\CPU_result_a4[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_7 
       (.I0(CPU_src2_value_a3[4]),
        .I1(\CPU_src1_value_a3_reg_n_0_[4] ),
        .O(\CPU_result_a4[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_8 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[7] ),
        .O(\CPU_result_a4[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CPU_result_a4[5]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[6] ),
        .O(\CPU_result_a4[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_result_a4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(CPU_result_a4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_result_a4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(CPU_result_a4[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CPU_result_a4_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\CPU_result_a4_reg[3]_i_2_n_0 ,\CPU_result_a4_reg[3]_i_2_n_1 ,\CPU_result_a4_reg[3]_i_2_n_2 ,\CPU_result_a4_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[3] ,\CPU_src1_value_a3_reg_n_0_[2] ,\CPU_src1_value_a3_reg_n_0_[1] ,\CPU_src1_value_a3_reg_n_0_[0] }),
        .O({\CPU_result_a4_reg[3]_i_2_n_4 ,\CPU_result_a4_reg[3]_i_2_n_5 ,\CPU_result_a4_reg[3]_i_2_n_6 ,\CPU_result_a4_reg[3]_i_2_n_7 }),
        .S({\CPU_result_a4[3]_i_4_n_0 ,\CPU_result_a4[3]_i_5_n_0 ,\CPU_result_a4[3]_i_6_n_0 ,\CPU_result_a4[3]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CPU_result_a4_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\CPU_result_a4_reg[3]_i_3_n_0 ,\CPU_result_a4_reg[3]_i_3_n_1 ,\CPU_result_a4_reg[3]_i_3_n_2 ,\CPU_result_a4_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[3] ,\CPU_src1_value_a3_reg_n_0_[2] ,\CPU_src1_value_a3_reg_n_0_[1] ,\CPU_src1_value_a3_reg_n_0_[0] }),
        .O(data21[3:0]),
        .S({\CPU_result_a4[3]_i_8_n_0 ,\CPU_result_a4[3]_i_9_n_0 ,\CPU_result_a4[3]_i_10_n_0 ,\CPU_result_a4[3]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_result_a4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(CPU_result_a4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_result_a4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(CPU_result_a4[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CPU_result_a4_reg[5]_i_2 
       (.CI(\CPU_result_a4_reg[3]_i_2_n_0 ),
        .CO({\CPU_result_a4_reg[5]_i_2_n_0 ,\CPU_result_a4_reg[5]_i_2_n_1 ,\CPU_result_a4_reg[5]_i_2_n_2 ,\CPU_result_a4_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[7] ,\CPU_src1_value_a3_reg_n_0_[6] ,\CPU_src1_value_a3_reg_n_0_[5] ,\CPU_src1_value_a3_reg_n_0_[4] }),
        .O({\CPU_result_a4_reg[5]_i_2_n_4 ,\CPU_result_a4_reg[5]_i_2_n_5 ,\CPU_result_a4_reg[5]_i_2_n_6 ,\CPU_result_a4_reg[5]_i_2_n_7 }),
        .S({\CPU_result_a4[5]_i_4_n_0 ,\CPU_result_a4[5]_i_5_n_0 ,\CPU_result_a4[5]_i_6_n_0 ,\CPU_result_a4[5]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \CPU_result_a4_reg[5]_i_3 
       (.CI(\CPU_result_a4_reg[3]_i_3_n_0 ),
        .CO({\CPU_result_a4_reg[5]_i_3_n_0 ,\CPU_result_a4_reg[5]_i_3_n_1 ,\CPU_result_a4_reg[5]_i_3_n_2 ,\CPU_result_a4_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[7] ,\CPU_src1_value_a3_reg_n_0_[6] ,\CPU_src1_value_a3_reg_n_0_[5] ,\CPU_src1_value_a3_reg_n_0_[4] }),
        .O(data21[7:4]),
        .S({\CPU_result_a4[5]_i_8_n_0 ,\CPU_result_a4[5]_i_9_n_0 ,\CPU_result_a4[5]_i_10_n_0 ,\CPU_result_a4[5]_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \CPU_rs1_a2[0]_i_1 
       (.I0(CPU_imem_rd_addr_a1[0]),
        .I1(CPU_imem_rd_addr_a1[1]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs1_a2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    \CPU_rs1_a2[1]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[0]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs1_a2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CPU_rs1_a2[2]_i_1 
       (.I0(CPU_imem_rd_addr_a1[2]),
        .I1(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs1_a2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \CPU_rs1_a2[3]_i_1 
       (.I0(CPU_imem_rd_addr_a1[1]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs1_a2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs1_a2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_rs1_a2[0]_i_1_n_0 ),
        .Q(CPU_rs1_a2[0]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs1_a2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_rs1_a2[1]_i_1_n_0 ),
        .Q(CPU_rs1_a2[1]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs1_a2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_rs1_a2[2]_i_1_n_0 ),
        .Q(CPU_rs1_a2[2]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs1_a2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CPU_rs1_a2[3]_i_1_n_0 ),
        .Q(CPU_rs1_a2[3]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \CPU_rs2_a2[0]_i_1 
       (.I0(CPU_imem_rd_addr_a1[0]),
        .I1(CPU_imem_rd_addr_a1[1]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs2_a2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2332)) 
    \CPU_rs2_a2[1]_i_1 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(CPU_Imem_instr_a1[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \CPU_rs2_a2[2]_i_1 
       (.I0(CPU_imem_rd_addr_a1[0]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[3]),
        .O(\CPU_rs2_a2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3332)) 
    \CPU_rs2_a2[3]_i_1 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .I2(CPU_imem_rd_addr_a1[2]),
        .I3(CPU_imem_rd_addr_a1[1]),
        .O(CPU_Imem_instr_a1[23]));
  LUT3 #(
    .INIT(8'hA8)) 
    \CPU_rs2_a2[4]_i_1 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[2]),
        .I2(CPU_imem_rd_addr_a1[1]),
        .O(\CPU_rs2_a2[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \CPU_rs2_a2[4]_i_2 
       (.I0(CPU_imem_rd_addr_a1[3]),
        .I1(CPU_imem_rd_addr_a1[0]),
        .O(CPU_Imem_instr_a1[24]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs2_a2_reg[0] 
       (.C(clkP_CPU_rs2_valid_a2),
        .CE(1'b1),
        .D(\CPU_rs2_a2[0]_i_1_n_0 ),
        .Q(CPU_rs2_a2[0]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs2_a2_reg[1] 
       (.C(clkP_CPU_rs2_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[21]),
        .Q(CPU_rs2_a2[1]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs2_a2_reg[2] 
       (.C(clkP_CPU_rs2_valid_a2),
        .CE(1'b1),
        .D(\CPU_rs2_a2[2]_i_1_n_0 ),
        .Q(CPU_rs2_a2[2]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs2_a2_reg[3] 
       (.C(clkP_CPU_rs2_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[23]),
        .Q(CPU_rs2_a2[3]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_rs2_a2_reg[4] 
       (.C(clkP_CPU_rs2_valid_a2),
        .CE(1'b1),
        .D(CPU_Imem_instr_a1[24]),
        .Q(CPU_rs2_a2[4]),
        .R(\CPU_rs2_a2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[0]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[0]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[0]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[0]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [0]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [0]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [0]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [0]),
        .O(\CPU_src1_value_a3[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[0]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [0]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [0]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [0]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [0]),
        .O(\CPU_src1_value_a3[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[0]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [0]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [0]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [0]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [0]),
        .O(\CPU_src1_value_a3[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[0]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [0]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [0]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [0]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [0]),
        .O(\CPU_src1_value_a3[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[10]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[10]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[10]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[10]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [10]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [10]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [10]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [10]),
        .O(\CPU_src1_value_a3[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[10]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [10]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [10]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [10]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [10]),
        .O(\CPU_src1_value_a3[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[10]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [10]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [10]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [10]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [10]),
        .O(\CPU_src1_value_a3[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[10]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [10]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [10]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [10]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [10]),
        .O(\CPU_src1_value_a3[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[11]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[11]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[11]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[11]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [11]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [11]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [11]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [11]),
        .O(\CPU_src1_value_a3[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[11]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [11]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [11]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [11]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [11]),
        .O(\CPU_src1_value_a3[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[11]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [11]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [11]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [11]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [11]),
        .O(\CPU_src1_value_a3[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[11]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [11]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [11]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [11]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [11]),
        .O(\CPU_src1_value_a3[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[12]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[12]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[12]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[12]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [12]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [12]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [12]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [12]),
        .O(\CPU_src1_value_a3[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[12]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [12]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [12]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [12]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [12]),
        .O(\CPU_src1_value_a3[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[12]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [12]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [12]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [12]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [12]),
        .O(\CPU_src1_value_a3[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[12]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [12]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [12]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [12]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [12]),
        .O(\CPU_src1_value_a3[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[13]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[13]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[13]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[13]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [13]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [13]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [13]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [13]),
        .O(\CPU_src1_value_a3[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[13]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [13]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [13]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [13]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [13]),
        .O(\CPU_src1_value_a3[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[13]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [13]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [13]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [13]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [13]),
        .O(\CPU_src1_value_a3[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[13]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [13]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [13]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [13]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [13]),
        .O(\CPU_src1_value_a3[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[14]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[14]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[14]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[14]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [14]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [14]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [14]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [14]),
        .O(\CPU_src1_value_a3[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[14]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [14]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [14]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [14]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [14]),
        .O(\CPU_src1_value_a3[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[14]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [14]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [14]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [14]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [14]),
        .O(\CPU_src1_value_a3[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[14]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [14]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [14]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [14]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [14]),
        .O(\CPU_src1_value_a3[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[15]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[15]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[15]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[15]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [15]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [15]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [15]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [15]),
        .O(\CPU_src1_value_a3[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[15]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [15]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [15]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [15]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [15]),
        .O(\CPU_src1_value_a3[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[15]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [15]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [15]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [15]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [15]),
        .O(\CPU_src1_value_a3[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[15]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [15]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [15]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [15]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [15]),
        .O(\CPU_src1_value_a3[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[16]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[16]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[16]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[16]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [16]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [16]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [16]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [16]),
        .O(\CPU_src1_value_a3[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[16]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [16]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [16]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [16]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [16]),
        .O(\CPU_src1_value_a3[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[16]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [16]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [16]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [16]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [16]),
        .O(\CPU_src1_value_a3[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[16]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [16]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [16]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [16]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [16]),
        .O(\CPU_src1_value_a3[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[17]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[17]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[17]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[17]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [17]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [17]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [17]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [17]),
        .O(\CPU_src1_value_a3[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[17]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [17]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [17]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [17]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [17]),
        .O(\CPU_src1_value_a3[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[17]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [17]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [17]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [17]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [17]),
        .O(\CPU_src1_value_a3[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[17]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [17]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [17]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [17]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [17]),
        .O(\CPU_src1_value_a3[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[18]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[18]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[18]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[18]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [18]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [18]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [18]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [18]),
        .O(\CPU_src1_value_a3[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[18]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [18]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [18]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [18]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [18]),
        .O(\CPU_src1_value_a3[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[18]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [18]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [18]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [18]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [18]),
        .O(\CPU_src1_value_a3[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[18]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [18]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [18]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [18]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [18]),
        .O(\CPU_src1_value_a3[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[19]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[19]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[19]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[19]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [19]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [19]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [19]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [19]),
        .O(\CPU_src1_value_a3[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[19]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [19]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [19]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [19]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [19]),
        .O(\CPU_src1_value_a3[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[19]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [19]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [19]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [19]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [19]),
        .O(\CPU_src1_value_a3[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[19]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [19]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [19]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [19]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [19]),
        .O(\CPU_src1_value_a3[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[1]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[1]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[1]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[1]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [1]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [1]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [1]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [1]),
        .O(\CPU_src1_value_a3[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[1]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [1]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [1]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [1]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [1]),
        .O(\CPU_src1_value_a3[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[1]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [1]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [1]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [1]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [1]),
        .O(\CPU_src1_value_a3[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[1]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [1]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [1]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [1]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [1]),
        .O(\CPU_src1_value_a3[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[20]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[20]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[20]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[20]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [20]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [20]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [20]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [20]),
        .O(\CPU_src1_value_a3[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[20]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [20]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [20]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [20]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [20]),
        .O(\CPU_src1_value_a3[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[20]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [20]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [20]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [20]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [20]),
        .O(\CPU_src1_value_a3[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[20]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [20]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [20]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [20]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [20]),
        .O(\CPU_src1_value_a3[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[21]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[21]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[21]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[21]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [21]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [21]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [21]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [21]),
        .O(\CPU_src1_value_a3[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[21]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [21]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [21]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [21]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [21]),
        .O(\CPU_src1_value_a3[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[21]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [21]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [21]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [21]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [21]),
        .O(\CPU_src1_value_a3[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[21]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [21]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [21]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [21]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [21]),
        .O(\CPU_src1_value_a3[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[22]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[22]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[22]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[22]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [22]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [22]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [22]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [22]),
        .O(\CPU_src1_value_a3[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[22]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [22]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [22]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [22]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [22]),
        .O(\CPU_src1_value_a3[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[22]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [22]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [22]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [22]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [22]),
        .O(\CPU_src1_value_a3[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[22]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [22]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [22]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [22]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [22]),
        .O(\CPU_src1_value_a3[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[23]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[23]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[23]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[23]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [23]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [23]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [23]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [23]),
        .O(\CPU_src1_value_a3[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[23]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [23]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [23]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [23]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [23]),
        .O(\CPU_src1_value_a3[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[23]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [23]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [23]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [23]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [23]),
        .O(\CPU_src1_value_a3[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[23]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [23]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [23]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [23]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [23]),
        .O(\CPU_src1_value_a3[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[24]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[24]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[24]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[24]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [24]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [24]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [24]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [24]),
        .O(\CPU_src1_value_a3[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[24]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [24]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [24]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [24]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [24]),
        .O(\CPU_src1_value_a3[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[24]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [24]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [24]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [24]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [24]),
        .O(\CPU_src1_value_a3[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[24]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [24]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [24]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [24]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [24]),
        .O(\CPU_src1_value_a3[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[25]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[25]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[25]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[25]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [25]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [25]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [25]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [25]),
        .O(\CPU_src1_value_a3[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[25]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [25]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [25]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [25]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [25]),
        .O(\CPU_src1_value_a3[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[25]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [25]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [25]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [25]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [25]),
        .O(\CPU_src1_value_a3[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[25]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [25]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [25]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [25]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [25]),
        .O(\CPU_src1_value_a3[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[26]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[26]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[26]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[26]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [26]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [26]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [26]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [26]),
        .O(\CPU_src1_value_a3[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[26]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [26]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [26]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [26]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [26]),
        .O(\CPU_src1_value_a3[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[26]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [26]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [26]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [26]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [26]),
        .O(\CPU_src1_value_a3[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[26]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [26]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [26]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [26]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [26]),
        .O(\CPU_src1_value_a3[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[27]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[27]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[27]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[27]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [27]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [27]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [27]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [27]),
        .O(\CPU_src1_value_a3[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[27]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [27]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [27]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [27]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [27]),
        .O(\CPU_src1_value_a3[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[27]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [27]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [27]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [27]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [27]),
        .O(\CPU_src1_value_a3[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[27]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [27]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [27]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [27]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [27]),
        .O(\CPU_src1_value_a3[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[28]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[28]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[28]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[28]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [28]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [28]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [28]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [28]),
        .O(\CPU_src1_value_a3[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[28]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [28]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [28]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [28]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [28]),
        .O(\CPU_src1_value_a3[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[28]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [28]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [28]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [28]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [28]),
        .O(\CPU_src1_value_a3[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[28]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [28]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [28]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [28]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [28]),
        .O(\CPU_src1_value_a3[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[29]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[29]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[29]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[29]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [29]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [29]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [29]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [29]),
        .O(\CPU_src1_value_a3[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[29]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [29]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [29]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [29]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [29]),
        .O(\CPU_src1_value_a3[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[29]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [29]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [29]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [29]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [29]),
        .O(\CPU_src1_value_a3[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[29]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [29]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [29]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [29]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [29]),
        .O(\CPU_src1_value_a3[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[2]_i_1 
       (.I0(p_0_in__0[0]),
        .I1(\CPU_src1_value_a3_reg[2]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[2]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[2]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [2]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [2]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [2]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [2]),
        .O(\CPU_src1_value_a3[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[2]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [2]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [2]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [2]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [2]),
        .O(\CPU_src1_value_a3[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[2]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [2]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [2]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [2]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [2]),
        .O(\CPU_src1_value_a3[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[2]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [2]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [2]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [2]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [2]),
        .O(\CPU_src1_value_a3[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[30]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[30]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[30]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[30]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [30]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [30]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [30]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [30]),
        .O(\CPU_src1_value_a3[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[30]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [30]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [30]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [30]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [30]),
        .O(\CPU_src1_value_a3[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[30]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [30]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [30]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [30]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [30]),
        .O(\CPU_src1_value_a3[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[30]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [30]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [30]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [30]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [30]),
        .O(\CPU_src1_value_a3[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[31]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3_reg[31]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[31]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[31]));
  LUT5 #(
    .INIT(32'h20020000)) 
    \CPU_src1_value_a3[31]_i_4 
       (.I0(\CPU_src1_value_a3[31]_i_9_n_0 ),
        .I1(CPU_rd_a3[4]),
        .I2(CPU_rs1_a2[3]),
        .I3(CPU_rd_a3[3]),
        .I4(CPU_rf_wr_en_a3),
        .O(CPU_src1_value_a2_01));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[31]_i_5 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [31]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [31]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [31]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [31]),
        .O(\CPU_src1_value_a3[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[31]_i_6 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [31]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [31]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [31]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [31]),
        .O(\CPU_src1_value_a3[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[31]_i_7 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [31]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [31]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [31]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [31]),
        .O(\CPU_src1_value_a3[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[31]_i_8 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [31]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [31]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [31]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [31]),
        .O(\CPU_src1_value_a3[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \CPU_src1_value_a3[31]_i_9 
       (.I0(CPU_rd_a3[0]),
        .I1(CPU_rs1_a2[0]),
        .I2(CPU_rs1_a2[2]),
        .I3(CPU_rd_a3[2]),
        .I4(CPU_rs1_a2[1]),
        .I5(CPU_rd_a3[1]),
        .O(\CPU_src1_value_a3[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[3]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(\CPU_src1_value_a3_reg[3]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[3]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[3]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [3]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [3]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [3]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [3]),
        .O(\CPU_src1_value_a3[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[3]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [3]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [3]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [3]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [3]),
        .O(\CPU_src1_value_a3[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[3]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [3]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [3]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [3]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [3]),
        .O(\CPU_src1_value_a3[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[3]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [3]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [3]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [3]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [3]),
        .O(\CPU_src1_value_a3[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[4]_i_1 
       (.I0(p_0_in__0[2]),
        .I1(\CPU_src1_value_a3_reg[4]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[4]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[4]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [4]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [4]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [4]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [4]),
        .O(\CPU_src1_value_a3[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[4]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [4]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [4]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [4]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [4]),
        .O(\CPU_src1_value_a3[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[4]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [4]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [4]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [4]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [4]),
        .O(\CPU_src1_value_a3[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[4]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [4]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [4]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [4]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [4]),
        .O(\CPU_src1_value_a3[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[5]_i_1 
       (.I0(p_0_in__0[3]),
        .I1(\CPU_src1_value_a3_reg[5]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[5]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[5]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [5]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [5]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [5]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [5]),
        .O(\CPU_src1_value_a3[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[5]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [5]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [5]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [5]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [5]),
        .O(\CPU_src1_value_a3[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[5]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [5]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [5]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [5]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [5]),
        .O(\CPU_src1_value_a3[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[5]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [5]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [5]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [5]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [5]),
        .O(\CPU_src1_value_a3[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[6]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[6]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[6]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[6]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [6]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [6]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [6]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [6]),
        .O(\CPU_src1_value_a3[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[6]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [6]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [6]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [6]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [6]),
        .O(\CPU_src1_value_a3[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[6]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [6]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [6]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [6]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [6]),
        .O(\CPU_src1_value_a3[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[6]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [6]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [6]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [6]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [6]),
        .O(\CPU_src1_value_a3[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[7]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[7]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[7]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[7]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [7]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [7]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [7]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [7]),
        .O(\CPU_src1_value_a3[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[7]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [7]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [7]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [7]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [7]),
        .O(\CPU_src1_value_a3[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[7]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [7]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [7]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [7]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [7]),
        .O(\CPU_src1_value_a3[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[7]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [7]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [7]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [7]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [7]),
        .O(\CPU_src1_value_a3[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[8]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[8]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[8]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[8]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [8]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [8]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [8]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [8]),
        .O(\CPU_src1_value_a3[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[8]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [8]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [8]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [8]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [8]),
        .O(\CPU_src1_value_a3[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[8]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [8]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [8]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [8]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [8]),
        .O(\CPU_src1_value_a3[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[8]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [8]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [8]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [8]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [8]),
        .O(\CPU_src1_value_a3[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src1_value_a3[9]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2_n_0 ),
        .I1(\CPU_src1_value_a3_reg[9]_i_2_n_0 ),
        .I2(CPU_rs1_a2[3]),
        .I3(\CPU_src1_value_a3_reg[9]_i_3_n_0 ),
        .I4(CPU_src1_value_a2_01),
        .O(CPU_src1_value_a2[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[9]_i_4 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [9]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [9]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [9]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [9]),
        .O(\CPU_src1_value_a3[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[9]_i_5 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [9]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [9]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [9]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [9]),
        .O(\CPU_src1_value_a3[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[9]_i_6 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [9]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [9]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [9]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [9]),
        .O(\CPU_src1_value_a3[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src1_value_a3[9]_i_7 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [9]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [9]),
        .I2(CPU_rs1_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [9]),
        .I4(CPU_rs1_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [9]),
        .O(\CPU_src1_value_a3[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[0]),
        .Q(\CPU_src1_value_a3_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[0]_i_2 
       (.I0(\CPU_src1_value_a3[0]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[0]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[0]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[0]_i_3 
       (.I0(\CPU_src1_value_a3[0]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[0]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[0]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[10]),
        .Q(\CPU_src1_value_a3_reg_n_0_[10] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[10]_i_2 
       (.I0(\CPU_src1_value_a3[10]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[10]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[10]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[10]_i_3 
       (.I0(\CPU_src1_value_a3[10]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[10]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[10]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[11]),
        .Q(\CPU_src1_value_a3_reg_n_0_[11] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[11]_i_2 
       (.I0(\CPU_src1_value_a3[11]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[11]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[11]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[11]_i_3 
       (.I0(\CPU_src1_value_a3[11]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[11]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[11]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[12]),
        .Q(\CPU_src1_value_a3_reg_n_0_[12] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[12]_i_2 
       (.I0(\CPU_src1_value_a3[12]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[12]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[12]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[12]_i_3 
       (.I0(\CPU_src1_value_a3[12]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[12]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[12]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[13]),
        .Q(\CPU_src1_value_a3_reg_n_0_[13] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[13]_i_2 
       (.I0(\CPU_src1_value_a3[13]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[13]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[13]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[13]_i_3 
       (.I0(\CPU_src1_value_a3[13]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[13]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[13]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[14]),
        .Q(\CPU_src1_value_a3_reg_n_0_[14] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[14]_i_2 
       (.I0(\CPU_src1_value_a3[14]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[14]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[14]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[14]_i_3 
       (.I0(\CPU_src1_value_a3[14]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[14]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[14]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[15]),
        .Q(\CPU_src1_value_a3_reg_n_0_[15] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[15]_i_2 
       (.I0(\CPU_src1_value_a3[15]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[15]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[15]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[15]_i_3 
       (.I0(\CPU_src1_value_a3[15]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[15]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[15]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[16]),
        .Q(\CPU_src1_value_a3_reg_n_0_[16] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[16]_i_2 
       (.I0(\CPU_src1_value_a3[16]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[16]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[16]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[16]_i_3 
       (.I0(\CPU_src1_value_a3[16]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[16]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[16]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[17]),
        .Q(\CPU_src1_value_a3_reg_n_0_[17] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[17]_i_2 
       (.I0(\CPU_src1_value_a3[17]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[17]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[17]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[17]_i_3 
       (.I0(\CPU_src1_value_a3[17]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[17]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[17]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[18]),
        .Q(\CPU_src1_value_a3_reg_n_0_[18] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[18]_i_2 
       (.I0(\CPU_src1_value_a3[18]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[18]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[18]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[18]_i_3 
       (.I0(\CPU_src1_value_a3[18]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[18]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[18]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[19]),
        .Q(\CPU_src1_value_a3_reg_n_0_[19] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[19]_i_2 
       (.I0(\CPU_src1_value_a3[19]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[19]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[19]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[19]_i_3 
       (.I0(\CPU_src1_value_a3[19]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[19]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[19]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[1]),
        .Q(\CPU_src1_value_a3_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[1]_i_2 
       (.I0(\CPU_src1_value_a3[1]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[1]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[1]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[1]_i_3 
       (.I0(\CPU_src1_value_a3[1]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[1]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[1]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[20]),
        .Q(\CPU_src1_value_a3_reg_n_0_[20] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[20]_i_2 
       (.I0(\CPU_src1_value_a3[20]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[20]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[20]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[20]_i_3 
       (.I0(\CPU_src1_value_a3[20]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[20]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[20]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[21]),
        .Q(\CPU_src1_value_a3_reg_n_0_[21] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[21]_i_2 
       (.I0(\CPU_src1_value_a3[21]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[21]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[21]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[21]_i_3 
       (.I0(\CPU_src1_value_a3[21]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[21]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[21]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[22]),
        .Q(\CPU_src1_value_a3_reg_n_0_[22] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[22]_i_2 
       (.I0(\CPU_src1_value_a3[22]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[22]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[22]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[22]_i_3 
       (.I0(\CPU_src1_value_a3[22]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[22]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[22]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[23]),
        .Q(\CPU_src1_value_a3_reg_n_0_[23] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[23]_i_2 
       (.I0(\CPU_src1_value_a3[23]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[23]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[23]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[23]_i_3 
       (.I0(\CPU_src1_value_a3[23]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[23]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[23]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[24]),
        .Q(\CPU_src1_value_a3_reg_n_0_[24] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[24]_i_2 
       (.I0(\CPU_src1_value_a3[24]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[24]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[24]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[24]_i_3 
       (.I0(\CPU_src1_value_a3[24]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[24]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[24]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[25]),
        .Q(\CPU_src1_value_a3_reg_n_0_[25] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[25]_i_2 
       (.I0(\CPU_src1_value_a3[25]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[25]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[25]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[25]_i_3 
       (.I0(\CPU_src1_value_a3[25]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[25]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[25]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[26]),
        .Q(\CPU_src1_value_a3_reg_n_0_[26] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[26]_i_2 
       (.I0(\CPU_src1_value_a3[26]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[26]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[26]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[26]_i_3 
       (.I0(\CPU_src1_value_a3[26]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[26]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[26]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[27]),
        .Q(\CPU_src1_value_a3_reg_n_0_[27] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[27]_i_2 
       (.I0(\CPU_src1_value_a3[27]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[27]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[27]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[27]_i_3 
       (.I0(\CPU_src1_value_a3[27]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[27]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[27]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[28]),
        .Q(\CPU_src1_value_a3_reg_n_0_[28] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[28]_i_2 
       (.I0(\CPU_src1_value_a3[28]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[28]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[28]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[28]_i_3 
       (.I0(\CPU_src1_value_a3[28]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[28]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[28]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[29]),
        .Q(\CPU_src1_value_a3_reg_n_0_[29] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[29]_i_2 
       (.I0(\CPU_src1_value_a3[29]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[29]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[29]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[29]_i_3 
       (.I0(\CPU_src1_value_a3[29]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[29]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[29]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[2]),
        .Q(\CPU_src1_value_a3_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[2]_i_2 
       (.I0(\CPU_src1_value_a3[2]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[2]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[2]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[2]_i_3 
       (.I0(\CPU_src1_value_a3[2]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[2]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[2]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[30]),
        .Q(\CPU_src1_value_a3_reg_n_0_[30] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[30]_i_2 
       (.I0(\CPU_src1_value_a3[30]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[30]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[30]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[30]_i_3 
       (.I0(\CPU_src1_value_a3[30]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[30]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[30]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[31]),
        .Q(p_1_in),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[31]_i_2 
       (.I0(\CPU_src1_value_a3[31]_i_5_n_0 ),
        .I1(\CPU_src1_value_a3[31]_i_6_n_0 ),
        .O(\CPU_src1_value_a3_reg[31]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[31]_i_3 
       (.I0(\CPU_src1_value_a3[31]_i_7_n_0 ),
        .I1(\CPU_src1_value_a3[31]_i_8_n_0 ),
        .O(\CPU_src1_value_a3_reg[31]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[3]),
        .Q(\CPU_src1_value_a3_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[3]_i_2 
       (.I0(\CPU_src1_value_a3[3]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[3]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[3]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[3]_i_3 
       (.I0(\CPU_src1_value_a3[3]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[3]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[3]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[4]),
        .Q(\CPU_src1_value_a3_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[4]_i_2 
       (.I0(\CPU_src1_value_a3[4]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[4]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[4]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[4]_i_3 
       (.I0(\CPU_src1_value_a3[4]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[4]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[4]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[5]),
        .Q(\CPU_src1_value_a3_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[5]_i_2 
       (.I0(\CPU_src1_value_a3[5]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[5]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[5]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[5]_i_3 
       (.I0(\CPU_src1_value_a3[5]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[5]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[5]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[6]),
        .Q(\CPU_src1_value_a3_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[6]_i_2 
       (.I0(\CPU_src1_value_a3[6]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[6]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[6]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[6]_i_3 
       (.I0(\CPU_src1_value_a3[6]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[6]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[6]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[7]),
        .Q(\CPU_src1_value_a3_reg_n_0_[7] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[7]_i_2 
       (.I0(\CPU_src1_value_a3[7]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[7]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[7]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[7]_i_3 
       (.I0(\CPU_src1_value_a3[7]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[7]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[7]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[8]),
        .Q(\CPU_src1_value_a3_reg_n_0_[8] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[8]_i_2 
       (.I0(\CPU_src1_value_a3[8]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[8]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[8]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[8]_i_3 
       (.I0(\CPU_src1_value_a3[8]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[8]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[8]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src1_value_a3_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src1_value_a2[9]),
        .Q(\CPU_src1_value_a3_reg_n_0_[9] ),
        .R(1'b0));
  MUXF7 \CPU_src1_value_a3_reg[9]_i_2 
       (.I0(\CPU_src1_value_a3[9]_i_4_n_0 ),
        .I1(\CPU_src1_value_a3[9]_i_5_n_0 ),
        .O(\CPU_src1_value_a3_reg[9]_i_2_n_0 ),
        .S(CPU_rs1_a2[2]));
  MUXF7 \CPU_src1_value_a3_reg[9]_i_3 
       (.I0(\CPU_src1_value_a3[9]_i_6_n_0 ),
        .I1(\CPU_src1_value_a3[9]_i_7_n_0 ),
        .O(\CPU_src1_value_a3_reg[9]_i_3_n_0 ),
        .S(CPU_rs1_a2[2]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[0]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[0]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[0]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [0]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [0]),
        .O(\CPU_src2_value_a3[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [0]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [0]),
        .O(\CPU_src2_value_a3[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [0]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [0]),
        .O(\CPU_src2_value_a3[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [0]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [0]),
        .O(\CPU_src2_value_a3[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [0]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [0]),
        .O(\CPU_src2_value_a3[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [0]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [0]),
        .O(\CPU_src2_value_a3[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [0]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [0]),
        .O(\CPU_src2_value_a3[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[0]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [0]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [0]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [0]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [0]),
        .O(\CPU_src2_value_a3[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[10]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[10]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[10]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [10]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [10]),
        .O(\CPU_src2_value_a3[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [10]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [10]),
        .O(\CPU_src2_value_a3[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [10]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [10]),
        .O(\CPU_src2_value_a3[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [10]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [10]),
        .O(\CPU_src2_value_a3[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [10]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [10]),
        .O(\CPU_src2_value_a3[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [10]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [10]),
        .O(\CPU_src2_value_a3[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [10]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [10]),
        .O(\CPU_src2_value_a3[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[10]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [10]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [10]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [10]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [10]),
        .O(\CPU_src2_value_a3[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[11]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[11]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[11]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [11]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [11]),
        .O(\CPU_src2_value_a3[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [11]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [11]),
        .O(\CPU_src2_value_a3[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [11]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [11]),
        .O(\CPU_src2_value_a3[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [11]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [11]),
        .O(\CPU_src2_value_a3[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [11]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [11]),
        .O(\CPU_src2_value_a3[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [11]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [11]),
        .O(\CPU_src2_value_a3[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [11]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [11]),
        .O(\CPU_src2_value_a3[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[11]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [11]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [11]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [11]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [11]),
        .O(\CPU_src2_value_a3[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[12]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[12]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[12]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [12]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [12]),
        .O(\CPU_src2_value_a3[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [12]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [12]),
        .O(\CPU_src2_value_a3[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [12]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [12]),
        .O(\CPU_src2_value_a3[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [12]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [12]),
        .O(\CPU_src2_value_a3[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [12]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [12]),
        .O(\CPU_src2_value_a3[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [12]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [12]),
        .O(\CPU_src2_value_a3[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [12]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [12]),
        .O(\CPU_src2_value_a3[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[12]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [12]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [12]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [12]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [12]),
        .O(\CPU_src2_value_a3[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[13]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[13]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[13]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [13]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [13]),
        .O(\CPU_src2_value_a3[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [13]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [13]),
        .O(\CPU_src2_value_a3[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [13]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [13]),
        .O(\CPU_src2_value_a3[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [13]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [13]),
        .O(\CPU_src2_value_a3[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [13]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [13]),
        .O(\CPU_src2_value_a3[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [13]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [13]),
        .O(\CPU_src2_value_a3[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [13]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [13]),
        .O(\CPU_src2_value_a3[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[13]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [13]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [13]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [13]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [13]),
        .O(\CPU_src2_value_a3[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[14]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[14]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[14]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [14]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [14]),
        .O(\CPU_src2_value_a3[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [14]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [14]),
        .O(\CPU_src2_value_a3[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [14]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [14]),
        .O(\CPU_src2_value_a3[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [14]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [14]),
        .O(\CPU_src2_value_a3[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [14]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [14]),
        .O(\CPU_src2_value_a3[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [14]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [14]),
        .O(\CPU_src2_value_a3[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [14]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [14]),
        .O(\CPU_src2_value_a3[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[14]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [14]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [14]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [14]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [14]),
        .O(\CPU_src2_value_a3[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[15]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[15]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[15]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [15]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [15]),
        .O(\CPU_src2_value_a3[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [15]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [15]),
        .O(\CPU_src2_value_a3[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [15]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [15]),
        .O(\CPU_src2_value_a3[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [15]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [15]),
        .O(\CPU_src2_value_a3[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [15]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [15]),
        .O(\CPU_src2_value_a3[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [15]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [15]),
        .O(\CPU_src2_value_a3[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [15]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [15]),
        .O(\CPU_src2_value_a3[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[15]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [15]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [15]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [15]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [15]),
        .O(\CPU_src2_value_a3[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[16]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[16]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[16]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [16]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [16]),
        .O(\CPU_src2_value_a3[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [16]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [16]),
        .O(\CPU_src2_value_a3[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [16]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [16]),
        .O(\CPU_src2_value_a3[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [16]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [16]),
        .O(\CPU_src2_value_a3[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [16]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [16]),
        .O(\CPU_src2_value_a3[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [16]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [16]),
        .O(\CPU_src2_value_a3[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [16]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [16]),
        .O(\CPU_src2_value_a3[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[16]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [16]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [16]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [16]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [16]),
        .O(\CPU_src2_value_a3[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[17]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[17]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[17]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [17]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [17]),
        .O(\CPU_src2_value_a3[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [17]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [17]),
        .O(\CPU_src2_value_a3[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [17]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [17]),
        .O(\CPU_src2_value_a3[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [17]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [17]),
        .O(\CPU_src2_value_a3[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [17]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [17]),
        .O(\CPU_src2_value_a3[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [17]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [17]),
        .O(\CPU_src2_value_a3[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [17]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [17]),
        .O(\CPU_src2_value_a3[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[17]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [17]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [17]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [17]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [17]),
        .O(\CPU_src2_value_a3[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[18]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[18]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[18]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [18]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [18]),
        .O(\CPU_src2_value_a3[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [18]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [18]),
        .O(\CPU_src2_value_a3[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [18]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [18]),
        .O(\CPU_src2_value_a3[18]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [18]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [18]),
        .O(\CPU_src2_value_a3[18]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [18]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [18]),
        .O(\CPU_src2_value_a3[18]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [18]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [18]),
        .O(\CPU_src2_value_a3[18]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [18]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [18]),
        .O(\CPU_src2_value_a3[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[18]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [18]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [18]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [18]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [18]),
        .O(\CPU_src2_value_a3[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[19]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[19]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[19]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [19]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [19]),
        .O(\CPU_src2_value_a3[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [19]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [19]),
        .O(\CPU_src2_value_a3[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [19]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [19]),
        .O(\CPU_src2_value_a3[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [19]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [19]),
        .O(\CPU_src2_value_a3[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [19]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [19]),
        .O(\CPU_src2_value_a3[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [19]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [19]),
        .O(\CPU_src2_value_a3[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [19]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [19]),
        .O(\CPU_src2_value_a3[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[19]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [19]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [19]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [19]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [19]),
        .O(\CPU_src2_value_a3[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[1]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[1]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[1]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [1]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [1]),
        .O(\CPU_src2_value_a3[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [1]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [1]),
        .O(\CPU_src2_value_a3[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [1]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [1]),
        .O(\CPU_src2_value_a3[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [1]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [1]),
        .O(\CPU_src2_value_a3[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [1]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [1]),
        .O(\CPU_src2_value_a3[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [1]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [1]),
        .O(\CPU_src2_value_a3[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [1]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [1]),
        .O(\CPU_src2_value_a3[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[1]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [1]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [1]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [1]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [1]),
        .O(\CPU_src2_value_a3[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[20]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[20]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[20]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [20]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [20]),
        .O(\CPU_src2_value_a3[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [20]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [20]),
        .O(\CPU_src2_value_a3[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [20]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [20]),
        .O(\CPU_src2_value_a3[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [20]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [20]),
        .O(\CPU_src2_value_a3[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [20]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [20]),
        .O(\CPU_src2_value_a3[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [20]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [20]),
        .O(\CPU_src2_value_a3[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [20]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [20]),
        .O(\CPU_src2_value_a3[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[20]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [20]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [20]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [20]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [20]),
        .O(\CPU_src2_value_a3[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[21]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[21]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[21]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [21]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [21]),
        .O(\CPU_src2_value_a3[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [21]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [21]),
        .O(\CPU_src2_value_a3[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [21]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [21]),
        .O(\CPU_src2_value_a3[21]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [21]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [21]),
        .O(\CPU_src2_value_a3[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [21]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [21]),
        .O(\CPU_src2_value_a3[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [21]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [21]),
        .O(\CPU_src2_value_a3[21]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [21]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [21]),
        .O(\CPU_src2_value_a3[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[21]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [21]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [21]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [21]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [21]),
        .O(\CPU_src2_value_a3[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[22]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[22]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[22]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [22]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [22]),
        .O(\CPU_src2_value_a3[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [22]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [22]),
        .O(\CPU_src2_value_a3[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [22]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [22]),
        .O(\CPU_src2_value_a3[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [22]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [22]),
        .O(\CPU_src2_value_a3[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [22]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [22]),
        .O(\CPU_src2_value_a3[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [22]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [22]),
        .O(\CPU_src2_value_a3[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [22]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [22]),
        .O(\CPU_src2_value_a3[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[22]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [22]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [22]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [22]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [22]),
        .O(\CPU_src2_value_a3[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[23]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[23]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[23]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [23]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [23]),
        .O(\CPU_src2_value_a3[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [23]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [23]),
        .O(\CPU_src2_value_a3[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [23]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [23]),
        .O(\CPU_src2_value_a3[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [23]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [23]),
        .O(\CPU_src2_value_a3[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [23]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [23]),
        .O(\CPU_src2_value_a3[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [23]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [23]),
        .O(\CPU_src2_value_a3[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [23]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [23]),
        .O(\CPU_src2_value_a3[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[23]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [23]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [23]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [23]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [23]),
        .O(\CPU_src2_value_a3[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[24]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[24]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[24]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [24]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [24]),
        .O(\CPU_src2_value_a3[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [24]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [24]),
        .O(\CPU_src2_value_a3[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [24]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [24]),
        .O(\CPU_src2_value_a3[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [24]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [24]),
        .O(\CPU_src2_value_a3[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [24]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [24]),
        .O(\CPU_src2_value_a3[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [24]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [24]),
        .O(\CPU_src2_value_a3[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [24]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [24]),
        .O(\CPU_src2_value_a3[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[24]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [24]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [24]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [24]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [24]),
        .O(\CPU_src2_value_a3[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[25]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[25]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[25]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [25]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [25]),
        .O(\CPU_src2_value_a3[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [25]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [25]),
        .O(\CPU_src2_value_a3[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [25]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [25]),
        .O(\CPU_src2_value_a3[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [25]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [25]),
        .O(\CPU_src2_value_a3[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [25]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [25]),
        .O(\CPU_src2_value_a3[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [25]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [25]),
        .O(\CPU_src2_value_a3[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [25]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [25]),
        .O(\CPU_src2_value_a3[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[25]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [25]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [25]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [25]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [25]),
        .O(\CPU_src2_value_a3[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[26]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[26]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[26]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [26]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [26]),
        .O(\CPU_src2_value_a3[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [26]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [26]),
        .O(\CPU_src2_value_a3[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [26]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [26]),
        .O(\CPU_src2_value_a3[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [26]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [26]),
        .O(\CPU_src2_value_a3[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [26]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [26]),
        .O(\CPU_src2_value_a3[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [26]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [26]),
        .O(\CPU_src2_value_a3[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [26]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [26]),
        .O(\CPU_src2_value_a3[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[26]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [26]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [26]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [26]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [26]),
        .O(\CPU_src2_value_a3[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[27]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[27]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[27]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [27]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [27]),
        .O(\CPU_src2_value_a3[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [27]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [27]),
        .O(\CPU_src2_value_a3[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [27]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [27]),
        .O(\CPU_src2_value_a3[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [27]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [27]),
        .O(\CPU_src2_value_a3[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [27]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [27]),
        .O(\CPU_src2_value_a3[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [27]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [27]),
        .O(\CPU_src2_value_a3[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [27]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [27]),
        .O(\CPU_src2_value_a3[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[27]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [27]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [27]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [27]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [27]),
        .O(\CPU_src2_value_a3[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[28]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[28]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[28]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [28]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [28]),
        .O(\CPU_src2_value_a3[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [28]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [28]),
        .O(\CPU_src2_value_a3[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [28]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [28]),
        .O(\CPU_src2_value_a3[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [28]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [28]),
        .O(\CPU_src2_value_a3[28]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [28]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [28]),
        .O(\CPU_src2_value_a3[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [28]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [28]),
        .O(\CPU_src2_value_a3[28]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [28]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [28]),
        .O(\CPU_src2_value_a3[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[28]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [28]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [28]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [28]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [28]),
        .O(\CPU_src2_value_a3[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[29]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[29]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[29]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [29]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [29]),
        .O(\CPU_src2_value_a3[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [29]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [29]),
        .O(\CPU_src2_value_a3[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [29]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [29]),
        .O(\CPU_src2_value_a3[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [29]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [29]),
        .O(\CPU_src2_value_a3[29]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [29]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [29]),
        .O(\CPU_src2_value_a3[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [29]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [29]),
        .O(\CPU_src2_value_a3[29]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [29]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [29]),
        .O(\CPU_src2_value_a3[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[29]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [29]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [29]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [29]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [29]),
        .O(\CPU_src2_value_a3[29]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[2]_i_1 
       (.I0(p_0_in__0[0]),
        .I1(\CPU_src2_value_a3_reg[2]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[2]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [2]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [2]),
        .O(\CPU_src2_value_a3[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [2]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [2]),
        .O(\CPU_src2_value_a3[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [2]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [2]),
        .O(\CPU_src2_value_a3[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [2]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [2]),
        .O(\CPU_src2_value_a3[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [2]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [2]),
        .O(\CPU_src2_value_a3[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [2]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [2]),
        .O(\CPU_src2_value_a3[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [2]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [2]),
        .O(\CPU_src2_value_a3[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[2]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [2]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [2]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [2]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [2]),
        .O(\CPU_src2_value_a3[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[30]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[30]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[30]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [30]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [30]),
        .O(\CPU_src2_value_a3[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [30]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [30]),
        .O(\CPU_src2_value_a3[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [30]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [30]),
        .O(\CPU_src2_value_a3[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [30]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [30]),
        .O(\CPU_src2_value_a3[30]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [30]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [30]),
        .O(\CPU_src2_value_a3[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [30]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [30]),
        .O(\CPU_src2_value_a3[30]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [30]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [30]),
        .O(\CPU_src2_value_a3[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[30]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [30]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [30]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [30]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [30]),
        .O(\CPU_src2_value_a3[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[31]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[31]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[31]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_10 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [31]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [31]),
        .O(\CPU_src2_value_a3[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_11 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [31]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [31]),
        .O(\CPU_src2_value_a3[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_12 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [31]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [31]),
        .O(\CPU_src2_value_a3[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_13 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [31]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [31]),
        .O(\CPU_src2_value_a3[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_14 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [31]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [31]),
        .O(\CPU_src2_value_a3[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_15 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [31]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [31]),
        .O(\CPU_src2_value_a3[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_16 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [31]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [31]),
        .O(\CPU_src2_value_a3[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[31]_i_17 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [31]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [31]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [31]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [31]),
        .O(\CPU_src2_value_a3[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9000009000000000)) 
    \CPU_src2_value_a3[31]_i_4 
       (.I0(CPU_rd_a3[4]),
        .I1(CPU_rs2_a2[4]),
        .I2(\CPU_src2_value_a3[31]_i_9_n_0 ),
        .I3(CPU_rs2_a2[3]),
        .I4(CPU_rd_a3[3]),
        .I5(CPU_rf_wr_en_a3),
        .O(CPU_src2_value_a21));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \CPU_src2_value_a3[31]_i_9 
       (.I0(CPU_rd_a3[0]),
        .I1(CPU_rs2_a2[0]),
        .I2(CPU_rs2_a2[2]),
        .I3(CPU_rd_a3[2]),
        .I4(CPU_rs2_a2[1]),
        .I5(CPU_rd_a3[1]),
        .O(\CPU_src2_value_a3[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[3]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(\CPU_src2_value_a3_reg[3]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[3]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [3]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [3]),
        .O(\CPU_src2_value_a3[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [3]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [3]),
        .O(\CPU_src2_value_a3[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [3]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [3]),
        .O(\CPU_src2_value_a3[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [3]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [3]),
        .O(\CPU_src2_value_a3[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [3]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [3]),
        .O(\CPU_src2_value_a3[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [3]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [3]),
        .O(\CPU_src2_value_a3[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [3]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [3]),
        .O(\CPU_src2_value_a3[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[3]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [3]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [3]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [3]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [3]),
        .O(\CPU_src2_value_a3[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[4]_i_1 
       (.I0(p_0_in__0[2]),
        .I1(\CPU_src2_value_a3_reg[4]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[4]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [4]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [4]),
        .O(\CPU_src2_value_a3[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [4]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [4]),
        .O(\CPU_src2_value_a3[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [4]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [4]),
        .O(\CPU_src2_value_a3[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [4]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [4]),
        .O(\CPU_src2_value_a3[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [4]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [4]),
        .O(\CPU_src2_value_a3[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [4]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [4]),
        .O(\CPU_src2_value_a3[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [4]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [4]),
        .O(\CPU_src2_value_a3[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[4]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [4]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [4]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [4]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [4]),
        .O(\CPU_src2_value_a3[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[5]_i_1 
       (.I0(p_0_in__0[3]),
        .I1(\CPU_src2_value_a3_reg[5]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[5]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [5]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [5]),
        .O(\CPU_src2_value_a3[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [5]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [5]),
        .O(\CPU_src2_value_a3[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [5]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [5]),
        .O(\CPU_src2_value_a3[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [5]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [5]),
        .O(\CPU_src2_value_a3[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [5]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [5]),
        .O(\CPU_src2_value_a3[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [5]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [5]),
        .O(\CPU_src2_value_a3[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [5]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [5]),
        .O(\CPU_src2_value_a3[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[5]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [5]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [5]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [5]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [5]),
        .O(\CPU_src2_value_a3[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[6]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[6]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[6]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [6]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [6]),
        .O(\CPU_src2_value_a3[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [6]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [6]),
        .O(\CPU_src2_value_a3[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [6]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [6]),
        .O(\CPU_src2_value_a3[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [6]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [6]),
        .O(\CPU_src2_value_a3[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [6]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [6]),
        .O(\CPU_src2_value_a3[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [6]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [6]),
        .O(\CPU_src2_value_a3[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [6]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [6]),
        .O(\CPU_src2_value_a3[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[6]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [6]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [6]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [6]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [6]),
        .O(\CPU_src2_value_a3[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[7]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[7]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[7]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [7]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [7]),
        .O(\CPU_src2_value_a3[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [7]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [7]),
        .O(\CPU_src2_value_a3[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [7]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [7]),
        .O(\CPU_src2_value_a3[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [7]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [7]),
        .O(\CPU_src2_value_a3[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [7]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [7]),
        .O(\CPU_src2_value_a3[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [7]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [7]),
        .O(\CPU_src2_value_a3[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [7]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [7]),
        .O(\CPU_src2_value_a3[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[7]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [7]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [7]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [7]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [7]),
        .O(\CPU_src2_value_a3[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[8]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[8]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[8]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [8]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [8]),
        .O(\CPU_src2_value_a3[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [8]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [8]),
        .O(\CPU_src2_value_a3[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [8]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [8]),
        .O(\CPU_src2_value_a3[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [8]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [8]),
        .O(\CPU_src2_value_a3[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [8]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [8]),
        .O(\CPU_src2_value_a3[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [8]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [8]),
        .O(\CPU_src2_value_a3[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [8]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [8]),
        .O(\CPU_src2_value_a3[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[8]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [8]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [8]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [8]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [8]),
        .O(\CPU_src2_value_a3[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \CPU_src2_value_a3[9]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2_n_0 ),
        .I1(\CPU_src2_value_a3_reg[9]_i_2_n_0 ),
        .I2(CPU_rs2_a2[4]),
        .I3(\CPU_src2_value_a3_reg[9]_i_3_n_0 ),
        .I4(CPU_src2_value_a21),
        .O(CPU_src2_value_a2[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_10 
       (.I0(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [9]),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [9]),
        .O(\CPU_src2_value_a3[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_11 
       (.I0(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [9]),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [9]),
        .O(\CPU_src2_value_a3[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_12 
       (.I0(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [9]),
        .I1(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [9]),
        .O(\CPU_src2_value_a3[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_13 
       (.I0(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [9]),
        .I1(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [9]),
        .O(\CPU_src2_value_a3[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_14 
       (.I0(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [9]),
        .I1(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [9]),
        .O(\CPU_src2_value_a3[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_15 
       (.I0(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [9]),
        .I1(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [9]),
        .O(\CPU_src2_value_a3[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_8 
       (.I0(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [9]),
        .I1(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [9]),
        .O(\CPU_src2_value_a3[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CPU_src2_value_a3[9]_i_9 
       (.I0(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [9]),
        .I1(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [9]),
        .I2(CPU_rs2_a2[1]),
        .I3(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [9]),
        .I4(CPU_rs2_a2[0]),
        .I5(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [9]),
        .O(\CPU_src2_value_a3[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[0]),
        .Q(CPU_src2_value_a3[0]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[0]_i_2 
       (.I0(\CPU_src2_value_a3_reg[0]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[0]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[0]_i_3 
       (.I0(\CPU_src2_value_a3_reg[0]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[0]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[0]_i_4 
       (.I0(\CPU_src2_value_a3[0]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[0]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[0]_i_5 
       (.I0(\CPU_src2_value_a3[0]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[0]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[0]_i_6 
       (.I0(\CPU_src2_value_a3[0]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[0]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[0]_i_7 
       (.I0(\CPU_src2_value_a3[0]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[0]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[0]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[10]),
        .Q(CPU_src2_value_a3[10]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[10]_i_2 
       (.I0(\CPU_src2_value_a3_reg[10]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[10]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[10]_i_3 
       (.I0(\CPU_src2_value_a3_reg[10]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[10]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[10]_i_4 
       (.I0(\CPU_src2_value_a3[10]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[10]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[10]_i_5 
       (.I0(\CPU_src2_value_a3[10]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[10]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[10]_i_6 
       (.I0(\CPU_src2_value_a3[10]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[10]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[10]_i_7 
       (.I0(\CPU_src2_value_a3[10]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[10]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[10]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[11]),
        .Q(CPU_src2_value_a3[11]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[11]_i_2 
       (.I0(\CPU_src2_value_a3_reg[11]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[11]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[11]_i_3 
       (.I0(\CPU_src2_value_a3_reg[11]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[11]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[11]_i_4 
       (.I0(\CPU_src2_value_a3[11]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[11]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[11]_i_5 
       (.I0(\CPU_src2_value_a3[11]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[11]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[11]_i_6 
       (.I0(\CPU_src2_value_a3[11]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[11]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[11]_i_7 
       (.I0(\CPU_src2_value_a3[11]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[11]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[11]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[12]),
        .Q(CPU_src2_value_a3[12]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[12]_i_2 
       (.I0(\CPU_src2_value_a3_reg[12]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[12]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[12]_i_3 
       (.I0(\CPU_src2_value_a3_reg[12]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[12]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[12]_i_4 
       (.I0(\CPU_src2_value_a3[12]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[12]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[12]_i_5 
       (.I0(\CPU_src2_value_a3[12]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[12]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[12]_i_6 
       (.I0(\CPU_src2_value_a3[12]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[12]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[12]_i_7 
       (.I0(\CPU_src2_value_a3[12]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[12]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[12]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[13]),
        .Q(CPU_src2_value_a3[13]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[13]_i_2 
       (.I0(\CPU_src2_value_a3_reg[13]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[13]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[13]_i_3 
       (.I0(\CPU_src2_value_a3_reg[13]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[13]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[13]_i_4 
       (.I0(\CPU_src2_value_a3[13]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[13]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[13]_i_5 
       (.I0(\CPU_src2_value_a3[13]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[13]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[13]_i_6 
       (.I0(\CPU_src2_value_a3[13]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[13]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[13]_i_7 
       (.I0(\CPU_src2_value_a3[13]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[13]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[13]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[14]),
        .Q(CPU_src2_value_a3[14]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[14]_i_2 
       (.I0(\CPU_src2_value_a3_reg[14]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[14]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[14]_i_3 
       (.I0(\CPU_src2_value_a3_reg[14]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[14]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[14]_i_4 
       (.I0(\CPU_src2_value_a3[14]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[14]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[14]_i_5 
       (.I0(\CPU_src2_value_a3[14]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[14]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[14]_i_6 
       (.I0(\CPU_src2_value_a3[14]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[14]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[14]_i_7 
       (.I0(\CPU_src2_value_a3[14]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[14]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[14]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[15]),
        .Q(CPU_src2_value_a3[15]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[15]_i_2 
       (.I0(\CPU_src2_value_a3_reg[15]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[15]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[15]_i_3 
       (.I0(\CPU_src2_value_a3_reg[15]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[15]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[15]_i_4 
       (.I0(\CPU_src2_value_a3[15]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[15]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[15]_i_5 
       (.I0(\CPU_src2_value_a3[15]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[15]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[15]_i_6 
       (.I0(\CPU_src2_value_a3[15]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[15]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[15]_i_7 
       (.I0(\CPU_src2_value_a3[15]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[15]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[15]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[16]),
        .Q(CPU_src2_value_a3[16]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[16]_i_2 
       (.I0(\CPU_src2_value_a3_reg[16]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[16]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[16]_i_3 
       (.I0(\CPU_src2_value_a3_reg[16]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[16]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[16]_i_4 
       (.I0(\CPU_src2_value_a3[16]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[16]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[16]_i_5 
       (.I0(\CPU_src2_value_a3[16]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[16]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[16]_i_6 
       (.I0(\CPU_src2_value_a3[16]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[16]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[16]_i_7 
       (.I0(\CPU_src2_value_a3[16]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[16]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[16]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[17]),
        .Q(CPU_src2_value_a3[17]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[17]_i_2 
       (.I0(\CPU_src2_value_a3_reg[17]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[17]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[17]_i_3 
       (.I0(\CPU_src2_value_a3_reg[17]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[17]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[17]_i_4 
       (.I0(\CPU_src2_value_a3[17]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[17]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[17]_i_5 
       (.I0(\CPU_src2_value_a3[17]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[17]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[17]_i_6 
       (.I0(\CPU_src2_value_a3[17]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[17]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[17]_i_7 
       (.I0(\CPU_src2_value_a3[17]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[17]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[17]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[18]),
        .Q(CPU_src2_value_a3[18]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[18]_i_2 
       (.I0(\CPU_src2_value_a3_reg[18]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[18]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[18]_i_3 
       (.I0(\CPU_src2_value_a3_reg[18]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[18]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[18]_i_4 
       (.I0(\CPU_src2_value_a3[18]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[18]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[18]_i_5 
       (.I0(\CPU_src2_value_a3[18]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[18]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[18]_i_6 
       (.I0(\CPU_src2_value_a3[18]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[18]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[18]_i_7 
       (.I0(\CPU_src2_value_a3[18]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[18]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[18]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[19]),
        .Q(CPU_src2_value_a3[19]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[19]_i_2 
       (.I0(\CPU_src2_value_a3_reg[19]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[19]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[19]_i_3 
       (.I0(\CPU_src2_value_a3_reg[19]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[19]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[19]_i_4 
       (.I0(\CPU_src2_value_a3[19]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[19]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[19]_i_5 
       (.I0(\CPU_src2_value_a3[19]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[19]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[19]_i_6 
       (.I0(\CPU_src2_value_a3[19]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[19]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[19]_i_7 
       (.I0(\CPU_src2_value_a3[19]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[19]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[19]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[1]),
        .Q(CPU_src2_value_a3[1]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[1]_i_2 
       (.I0(\CPU_src2_value_a3_reg[1]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[1]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[1]_i_3 
       (.I0(\CPU_src2_value_a3_reg[1]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[1]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[1]_i_4 
       (.I0(\CPU_src2_value_a3[1]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[1]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[1]_i_5 
       (.I0(\CPU_src2_value_a3[1]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[1]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[1]_i_6 
       (.I0(\CPU_src2_value_a3[1]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[1]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[1]_i_7 
       (.I0(\CPU_src2_value_a3[1]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[1]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[1]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[20]),
        .Q(CPU_src2_value_a3[20]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[20]_i_2 
       (.I0(\CPU_src2_value_a3_reg[20]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[20]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[20]_i_3 
       (.I0(\CPU_src2_value_a3_reg[20]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[20]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[20]_i_4 
       (.I0(\CPU_src2_value_a3[20]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[20]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[20]_i_5 
       (.I0(\CPU_src2_value_a3[20]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[20]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[20]_i_6 
       (.I0(\CPU_src2_value_a3[20]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[20]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[20]_i_7 
       (.I0(\CPU_src2_value_a3[20]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[20]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[20]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[21]),
        .Q(CPU_src2_value_a3[21]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[21]_i_2 
       (.I0(\CPU_src2_value_a3_reg[21]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[21]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[21]_i_3 
       (.I0(\CPU_src2_value_a3_reg[21]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[21]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[21]_i_4 
       (.I0(\CPU_src2_value_a3[21]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[21]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[21]_i_5 
       (.I0(\CPU_src2_value_a3[21]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[21]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[21]_i_6 
       (.I0(\CPU_src2_value_a3[21]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[21]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[21]_i_7 
       (.I0(\CPU_src2_value_a3[21]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[21]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[21]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[22]),
        .Q(CPU_src2_value_a3[22]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[22]_i_2 
       (.I0(\CPU_src2_value_a3_reg[22]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[22]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[22]_i_3 
       (.I0(\CPU_src2_value_a3_reg[22]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[22]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[22]_i_4 
       (.I0(\CPU_src2_value_a3[22]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[22]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[22]_i_5 
       (.I0(\CPU_src2_value_a3[22]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[22]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[22]_i_6 
       (.I0(\CPU_src2_value_a3[22]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[22]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[22]_i_7 
       (.I0(\CPU_src2_value_a3[22]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[22]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[22]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[23]),
        .Q(CPU_src2_value_a3[23]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[23]_i_2 
       (.I0(\CPU_src2_value_a3_reg[23]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[23]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[23]_i_3 
       (.I0(\CPU_src2_value_a3_reg[23]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[23]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[23]_i_4 
       (.I0(\CPU_src2_value_a3[23]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[23]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[23]_i_5 
       (.I0(\CPU_src2_value_a3[23]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[23]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[23]_i_6 
       (.I0(\CPU_src2_value_a3[23]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[23]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[23]_i_7 
       (.I0(\CPU_src2_value_a3[23]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[23]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[23]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[24]),
        .Q(CPU_src2_value_a3[24]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[24]_i_2 
       (.I0(\CPU_src2_value_a3_reg[24]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[24]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[24]_i_3 
       (.I0(\CPU_src2_value_a3_reg[24]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[24]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[24]_i_4 
       (.I0(\CPU_src2_value_a3[24]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[24]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[24]_i_5 
       (.I0(\CPU_src2_value_a3[24]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[24]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[24]_i_6 
       (.I0(\CPU_src2_value_a3[24]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[24]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[24]_i_7 
       (.I0(\CPU_src2_value_a3[24]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[24]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[24]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[25]),
        .Q(CPU_src2_value_a3[25]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[25]_i_2 
       (.I0(\CPU_src2_value_a3_reg[25]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[25]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[25]_i_3 
       (.I0(\CPU_src2_value_a3_reg[25]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[25]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[25]_i_4 
       (.I0(\CPU_src2_value_a3[25]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[25]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[25]_i_5 
       (.I0(\CPU_src2_value_a3[25]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[25]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[25]_i_6 
       (.I0(\CPU_src2_value_a3[25]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[25]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[25]_i_7 
       (.I0(\CPU_src2_value_a3[25]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[25]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[25]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[26]),
        .Q(CPU_src2_value_a3[26]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[26]_i_2 
       (.I0(\CPU_src2_value_a3_reg[26]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[26]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[26]_i_3 
       (.I0(\CPU_src2_value_a3_reg[26]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[26]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[26]_i_4 
       (.I0(\CPU_src2_value_a3[26]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[26]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[26]_i_5 
       (.I0(\CPU_src2_value_a3[26]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[26]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[26]_i_6 
       (.I0(\CPU_src2_value_a3[26]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[26]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[26]_i_7 
       (.I0(\CPU_src2_value_a3[26]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[26]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[26]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[27]),
        .Q(CPU_src2_value_a3[27]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[27]_i_2 
       (.I0(\CPU_src2_value_a3_reg[27]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[27]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[27]_i_3 
       (.I0(\CPU_src2_value_a3_reg[27]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[27]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[27]_i_4 
       (.I0(\CPU_src2_value_a3[27]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[27]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[27]_i_5 
       (.I0(\CPU_src2_value_a3[27]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[27]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[27]_i_6 
       (.I0(\CPU_src2_value_a3[27]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[27]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[27]_i_7 
       (.I0(\CPU_src2_value_a3[27]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[27]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[27]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[28]),
        .Q(CPU_src2_value_a3[28]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[28]_i_2 
       (.I0(\CPU_src2_value_a3_reg[28]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[28]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[28]_i_3 
       (.I0(\CPU_src2_value_a3_reg[28]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[28]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[28]_i_4 
       (.I0(\CPU_src2_value_a3[28]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[28]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[28]_i_5 
       (.I0(\CPU_src2_value_a3[28]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[28]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[28]_i_6 
       (.I0(\CPU_src2_value_a3[28]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[28]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[28]_i_7 
       (.I0(\CPU_src2_value_a3[28]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[28]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[28]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[29]),
        .Q(CPU_src2_value_a3[29]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[29]_i_2 
       (.I0(\CPU_src2_value_a3_reg[29]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[29]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[29]_i_3 
       (.I0(\CPU_src2_value_a3_reg[29]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[29]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[29]_i_4 
       (.I0(\CPU_src2_value_a3[29]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[29]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[29]_i_5 
       (.I0(\CPU_src2_value_a3[29]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[29]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[29]_i_6 
       (.I0(\CPU_src2_value_a3[29]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[29]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[29]_i_7 
       (.I0(\CPU_src2_value_a3[29]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[29]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[29]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[2]),
        .Q(CPU_src2_value_a3[2]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[2]_i_2 
       (.I0(\CPU_src2_value_a3_reg[2]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[2]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[2]_i_3 
       (.I0(\CPU_src2_value_a3_reg[2]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[2]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[2]_i_4 
       (.I0(\CPU_src2_value_a3[2]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[2]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[2]_i_5 
       (.I0(\CPU_src2_value_a3[2]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[2]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[2]_i_6 
       (.I0(\CPU_src2_value_a3[2]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[2]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[2]_i_7 
       (.I0(\CPU_src2_value_a3[2]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[2]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[2]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[30]),
        .Q(CPU_src2_value_a3[30]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[30]_i_2 
       (.I0(\CPU_src2_value_a3_reg[30]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[30]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[30]_i_3 
       (.I0(\CPU_src2_value_a3_reg[30]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[30]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[30]_i_4 
       (.I0(\CPU_src2_value_a3[30]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[30]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[30]_i_5 
       (.I0(\CPU_src2_value_a3[30]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[30]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[30]_i_6 
       (.I0(\CPU_src2_value_a3[30]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[30]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[30]_i_7 
       (.I0(\CPU_src2_value_a3[30]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[30]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[30]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[31]),
        .Q(CPU_src2_value_a3[31]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[31]_i_2 
       (.I0(\CPU_src2_value_a3_reg[31]_i_5_n_0 ),
        .I1(\CPU_src2_value_a3_reg[31]_i_6_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[31]_i_3 
       (.I0(\CPU_src2_value_a3_reg[31]_i_7_n_0 ),
        .I1(\CPU_src2_value_a3_reg[31]_i_8_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[31]_i_5 
       (.I0(\CPU_src2_value_a3[31]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[31]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[31]_i_6 
       (.I0(\CPU_src2_value_a3[31]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[31]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[31]_i_7 
       (.I0(\CPU_src2_value_a3[31]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[31]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[31]_i_8 
       (.I0(\CPU_src2_value_a3[31]_i_16_n_0 ),
        .I1(\CPU_src2_value_a3[31]_i_17_n_0 ),
        .O(\CPU_src2_value_a3_reg[31]_i_8_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[3]),
        .Q(CPU_src2_value_a3[3]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[3]_i_2 
       (.I0(\CPU_src2_value_a3_reg[3]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[3]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[3]_i_3 
       (.I0(\CPU_src2_value_a3_reg[3]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[3]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[3]_i_4 
       (.I0(\CPU_src2_value_a3[3]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[3]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[3]_i_5 
       (.I0(\CPU_src2_value_a3[3]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[3]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[3]_i_6 
       (.I0(\CPU_src2_value_a3[3]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[3]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[3]_i_7 
       (.I0(\CPU_src2_value_a3[3]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[3]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[3]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[4]),
        .Q(CPU_src2_value_a3[4]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[4]_i_2 
       (.I0(\CPU_src2_value_a3_reg[4]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[4]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[4]_i_3 
       (.I0(\CPU_src2_value_a3_reg[4]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[4]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[4]_i_4 
       (.I0(\CPU_src2_value_a3[4]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[4]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[4]_i_5 
       (.I0(\CPU_src2_value_a3[4]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[4]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[4]_i_6 
       (.I0(\CPU_src2_value_a3[4]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[4]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[4]_i_7 
       (.I0(\CPU_src2_value_a3[4]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[4]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[4]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[5]),
        .Q(CPU_src2_value_a3[5]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[5]_i_2 
       (.I0(\CPU_src2_value_a3_reg[5]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[5]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[5]_i_3 
       (.I0(\CPU_src2_value_a3_reg[5]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[5]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[5]_i_4 
       (.I0(\CPU_src2_value_a3[5]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[5]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[5]_i_5 
       (.I0(\CPU_src2_value_a3[5]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[5]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[5]_i_6 
       (.I0(\CPU_src2_value_a3[5]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[5]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[5]_i_7 
       (.I0(\CPU_src2_value_a3[5]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[5]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[5]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[6]),
        .Q(CPU_src2_value_a3[6]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[6]_i_2 
       (.I0(\CPU_src2_value_a3_reg[6]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[6]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[6]_i_3 
       (.I0(\CPU_src2_value_a3_reg[6]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[6]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[6]_i_4 
       (.I0(\CPU_src2_value_a3[6]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[6]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[6]_i_5 
       (.I0(\CPU_src2_value_a3[6]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[6]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[6]_i_6 
       (.I0(\CPU_src2_value_a3[6]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[6]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[6]_i_7 
       (.I0(\CPU_src2_value_a3[6]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[6]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[6]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[7]),
        .Q(CPU_src2_value_a3[7]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[7]_i_2 
       (.I0(\CPU_src2_value_a3_reg[7]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[7]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[7]_i_3 
       (.I0(\CPU_src2_value_a3_reg[7]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[7]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[7]_i_4 
       (.I0(\CPU_src2_value_a3[7]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[7]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[7]_i_5 
       (.I0(\CPU_src2_value_a3[7]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[7]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[7]_i_6 
       (.I0(\CPU_src2_value_a3[7]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[7]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[7]_i_7 
       (.I0(\CPU_src2_value_a3[7]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[7]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[7]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[8]),
        .Q(CPU_src2_value_a3[8]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[8]_i_2 
       (.I0(\CPU_src2_value_a3_reg[8]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[8]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[8]_i_3 
       (.I0(\CPU_src2_value_a3_reg[8]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[8]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[8]_i_4 
       (.I0(\CPU_src2_value_a3[8]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[8]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[8]_i_5 
       (.I0(\CPU_src2_value_a3[8]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[8]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[8]_i_6 
       (.I0(\CPU_src2_value_a3[8]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[8]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[8]_i_7 
       (.I0(\CPU_src2_value_a3[8]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[8]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[8]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a3_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a2[9]),
        .Q(CPU_src2_value_a3[9]),
        .R(1'b0));
  MUXF8 \CPU_src2_value_a3_reg[9]_i_2 
       (.I0(\CPU_src2_value_a3_reg[9]_i_4_n_0 ),
        .I1(\CPU_src2_value_a3_reg[9]_i_5_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_2_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF8 \CPU_src2_value_a3_reg[9]_i_3 
       (.I0(\CPU_src2_value_a3_reg[9]_i_6_n_0 ),
        .I1(\CPU_src2_value_a3_reg[9]_i_7_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_3_n_0 ),
        .S(CPU_rs2_a2[3]));
  MUXF7 \CPU_src2_value_a3_reg[9]_i_4 
       (.I0(\CPU_src2_value_a3[9]_i_8_n_0 ),
        .I1(\CPU_src2_value_a3[9]_i_9_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_4_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[9]_i_5 
       (.I0(\CPU_src2_value_a3[9]_i_10_n_0 ),
        .I1(\CPU_src2_value_a3[9]_i_11_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_5_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[9]_i_6 
       (.I0(\CPU_src2_value_a3[9]_i_12_n_0 ),
        .I1(\CPU_src2_value_a3[9]_i_13_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_6_n_0 ),
        .S(CPU_rs2_a2[2]));
  MUXF7 \CPU_src2_value_a3_reg[9]_i_7 
       (.I0(\CPU_src2_value_a3[9]_i_14_n_0 ),
        .I1(\CPU_src2_value_a3[9]_i_15_n_0 ),
        .O(\CPU_src2_value_a3_reg[9]_i_7_n_0 ),
        .S(CPU_rs2_a2[2]));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[0]),
        .Q(CPU_src2_value_a4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[10]),
        .Q(CPU_src2_value_a4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[11]),
        .Q(CPU_src2_value_a4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[12]),
        .Q(CPU_src2_value_a4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[13]),
        .Q(CPU_src2_value_a4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[14]),
        .Q(CPU_src2_value_a4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[15]),
        .Q(CPU_src2_value_a4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[16]),
        .Q(CPU_src2_value_a4[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[17]),
        .Q(CPU_src2_value_a4[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[18]),
        .Q(CPU_src2_value_a4[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[19]),
        .Q(CPU_src2_value_a4[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[1]),
        .Q(CPU_src2_value_a4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[20]),
        .Q(CPU_src2_value_a4[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[21]),
        .Q(CPU_src2_value_a4[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[22]),
        .Q(CPU_src2_value_a4[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[23]),
        .Q(CPU_src2_value_a4[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[24]),
        .Q(CPU_src2_value_a4[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[25]),
        .Q(CPU_src2_value_a4[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[26]),
        .Q(CPU_src2_value_a4[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[27]),
        .Q(CPU_src2_value_a4[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[28]),
        .Q(CPU_src2_value_a4[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[29]),
        .Q(CPU_src2_value_a4[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[2]),
        .Q(CPU_src2_value_a4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[30]),
        .Q(CPU_src2_value_a4[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[31]),
        .Q(CPU_src2_value_a4[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[3]),
        .Q(CPU_src2_value_a4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[4]),
        .Q(CPU_src2_value_a4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[5]),
        .Q(CPU_src2_value_a4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[6]),
        .Q(CPU_src2_value_a4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[7]),
        .Q(CPU_src2_value_a4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[8]),
        .Q(CPU_src2_value_a4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CPU_src2_value_a4_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_src2_value_a3[9]),
        .Q(CPU_src2_value_a4[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    CPU_valid_a4_i_1
       (.I0(CPU_valid_taken_br_a4),
        .I1(CPU_valid_load_a4),
        .I2(CPU_valid_taken_br_a5),
        .I3(CPU_valid_load_a5),
        .O(CPU_valid_a3));
  FDRE #(
    .INIT(1'b0)) 
    CPU_valid_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_valid_a3),
        .Q(CPU_valid_a4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    CPU_valid_load_a4_i_1
       (.I0(CPU_valid_load_a5),
        .I1(CPU_valid_taken_br_a5),
        .I2(CPU_valid_load_a4),
        .I3(CPU_valid_taken_br_a4),
        .I4(CPU_is_load_a3),
        .O(CPU_valid_load_a3));
  FDRE #(
    .INIT(1'b0)) 
    CPU_valid_load_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_valid_load_a3),
        .Q(CPU_valid_load_a4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_valid_load_a5_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_valid_load_a4),
        .Q(CPU_valid_load_a5),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96000000)) 
    CPU_valid_taken_br_a4_i_1
       (.I0(p_1_in),
        .I1(CPU_src2_value_a3[31]),
        .I2(CPU_sltu_result_a3),
        .I3(CPU_is_blt_a3),
        .I4(CPU_valid_a3),
        .O(CPU_valid_taken_br_a3));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_10
       (.I0(CPU_src2_value_a3[26]),
        .I1(\CPU_src1_value_a3_reg_n_0_[26] ),
        .I2(CPU_src2_value_a3[27]),
        .I3(\CPU_src1_value_a3_reg_n_0_[27] ),
        .O(CPU_valid_taken_br_a4_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_11
       (.I0(CPU_src2_value_a3[24]),
        .I1(\CPU_src1_value_a3_reg_n_0_[24] ),
        .I2(CPU_src2_value_a3[25]),
        .I3(\CPU_src1_value_a3_reg_n_0_[25] ),
        .O(CPU_valid_taken_br_a4_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_13
       (.I0(CPU_src2_value_a3[22]),
        .I1(\CPU_src1_value_a3_reg_n_0_[22] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[23] ),
        .I3(CPU_src2_value_a3[23]),
        .O(CPU_valid_taken_br_a4_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_14
       (.I0(CPU_src2_value_a3[20]),
        .I1(\CPU_src1_value_a3_reg_n_0_[20] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[21] ),
        .I3(CPU_src2_value_a3[21]),
        .O(CPU_valid_taken_br_a4_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_15
       (.I0(CPU_src2_value_a3[18]),
        .I1(\CPU_src1_value_a3_reg_n_0_[18] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[19] ),
        .I3(CPU_src2_value_a3[19]),
        .O(CPU_valid_taken_br_a4_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_16
       (.I0(CPU_src2_value_a3[16]),
        .I1(\CPU_src1_value_a3_reg_n_0_[16] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[17] ),
        .I3(CPU_src2_value_a3[17]),
        .O(CPU_valid_taken_br_a4_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_17
       (.I0(CPU_src2_value_a3[22]),
        .I1(\CPU_src1_value_a3_reg_n_0_[22] ),
        .I2(CPU_src2_value_a3[23]),
        .I3(\CPU_src1_value_a3_reg_n_0_[23] ),
        .O(CPU_valid_taken_br_a4_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_18
       (.I0(CPU_src2_value_a3[20]),
        .I1(\CPU_src1_value_a3_reg_n_0_[20] ),
        .I2(CPU_src2_value_a3[21]),
        .I3(\CPU_src1_value_a3_reg_n_0_[21] ),
        .O(CPU_valid_taken_br_a4_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_19
       (.I0(CPU_src2_value_a3[18]),
        .I1(\CPU_src1_value_a3_reg_n_0_[18] ),
        .I2(CPU_src2_value_a3[19]),
        .I3(\CPU_src1_value_a3_reg_n_0_[19] ),
        .O(CPU_valid_taken_br_a4_i_19_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_20
       (.I0(CPU_src2_value_a3[16]),
        .I1(\CPU_src1_value_a3_reg_n_0_[16] ),
        .I2(CPU_src2_value_a3[17]),
        .I3(\CPU_src1_value_a3_reg_n_0_[17] ),
        .O(CPU_valid_taken_br_a4_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_22
       (.I0(CPU_src2_value_a3[14]),
        .I1(\CPU_src1_value_a3_reg_n_0_[14] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[15] ),
        .I3(CPU_src2_value_a3[15]),
        .O(CPU_valid_taken_br_a4_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_23
       (.I0(CPU_src2_value_a3[12]),
        .I1(\CPU_src1_value_a3_reg_n_0_[12] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[13] ),
        .I3(CPU_src2_value_a3[13]),
        .O(CPU_valid_taken_br_a4_i_23_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_24
       (.I0(CPU_src2_value_a3[10]),
        .I1(\CPU_src1_value_a3_reg_n_0_[10] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[11] ),
        .I3(CPU_src2_value_a3[11]),
        .O(CPU_valid_taken_br_a4_i_24_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_25
       (.I0(CPU_src2_value_a3[8]),
        .I1(\CPU_src1_value_a3_reg_n_0_[8] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[9] ),
        .I3(CPU_src2_value_a3[9]),
        .O(CPU_valid_taken_br_a4_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_26
       (.I0(CPU_src2_value_a3[14]),
        .I1(\CPU_src1_value_a3_reg_n_0_[14] ),
        .I2(CPU_src2_value_a3[15]),
        .I3(\CPU_src1_value_a3_reg_n_0_[15] ),
        .O(CPU_valid_taken_br_a4_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_27
       (.I0(CPU_src2_value_a3[12]),
        .I1(\CPU_src1_value_a3_reg_n_0_[12] ),
        .I2(CPU_src2_value_a3[13]),
        .I3(\CPU_src1_value_a3_reg_n_0_[13] ),
        .O(CPU_valid_taken_br_a4_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_28
       (.I0(CPU_src2_value_a3[10]),
        .I1(\CPU_src1_value_a3_reg_n_0_[10] ),
        .I2(CPU_src2_value_a3[11]),
        .I3(\CPU_src1_value_a3_reg_n_0_[11] ),
        .O(CPU_valid_taken_br_a4_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_29
       (.I0(CPU_src2_value_a3[8]),
        .I1(\CPU_src1_value_a3_reg_n_0_[8] ),
        .I2(CPU_src2_value_a3[9]),
        .I3(\CPU_src1_value_a3_reg_n_0_[9] ),
        .O(CPU_valid_taken_br_a4_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_30
       (.I0(CPU_src2_value_a3[6]),
        .I1(\CPU_src1_value_a3_reg_n_0_[6] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[7] ),
        .I3(CPU_src2_value_a3[7]),
        .O(CPU_valid_taken_br_a4_i_30_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_31
       (.I0(CPU_src2_value_a3[4]),
        .I1(\CPU_src1_value_a3_reg_n_0_[4] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[5] ),
        .I3(CPU_src2_value_a3[5]),
        .O(CPU_valid_taken_br_a4_i_31_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_32
       (.I0(CPU_src2_value_a3[2]),
        .I1(\CPU_src1_value_a3_reg_n_0_[2] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[3] ),
        .I3(CPU_src2_value_a3[3]),
        .O(CPU_valid_taken_br_a4_i_32_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_33
       (.I0(CPU_src2_value_a3[0]),
        .I1(\CPU_src1_value_a3_reg_n_0_[0] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[1] ),
        .I3(CPU_src2_value_a3[1]),
        .O(CPU_valid_taken_br_a4_i_33_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_34
       (.I0(CPU_src2_value_a3[6]),
        .I1(\CPU_src1_value_a3_reg_n_0_[6] ),
        .I2(CPU_src2_value_a3[7]),
        .I3(\CPU_src1_value_a3_reg_n_0_[7] ),
        .O(CPU_valid_taken_br_a4_i_34_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_35
       (.I0(CPU_src2_value_a3[4]),
        .I1(\CPU_src1_value_a3_reg_n_0_[4] ),
        .I2(CPU_src2_value_a3[5]),
        .I3(\CPU_src1_value_a3_reg_n_0_[5] ),
        .O(CPU_valid_taken_br_a4_i_35_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_36
       (.I0(CPU_src2_value_a3[2]),
        .I1(\CPU_src1_value_a3_reg_n_0_[2] ),
        .I2(CPU_src2_value_a3[3]),
        .I3(\CPU_src1_value_a3_reg_n_0_[3] ),
        .O(CPU_valid_taken_br_a4_i_36_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_37
       (.I0(CPU_src2_value_a3[1]),
        .I1(\CPU_src1_value_a3_reg_n_0_[1] ),
        .I2(CPU_src2_value_a3[0]),
        .I3(\CPU_src1_value_a3_reg_n_0_[0] ),
        .O(CPU_valid_taken_br_a4_i_37_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_4
       (.I0(CPU_src2_value_a3[30]),
        .I1(\CPU_src1_value_a3_reg_n_0_[30] ),
        .I2(p_1_in),
        .I3(CPU_src2_value_a3[31]),
        .O(CPU_valid_taken_br_a4_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_5
       (.I0(CPU_src2_value_a3[28]),
        .I1(\CPU_src1_value_a3_reg_n_0_[28] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[29] ),
        .I3(CPU_src2_value_a3[29]),
        .O(CPU_valid_taken_br_a4_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_6
       (.I0(CPU_src2_value_a3[26]),
        .I1(\CPU_src1_value_a3_reg_n_0_[26] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[27] ),
        .I3(CPU_src2_value_a3[27]),
        .O(CPU_valid_taken_br_a4_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CPU_valid_taken_br_a4_i_7
       (.I0(CPU_src2_value_a3[24]),
        .I1(\CPU_src1_value_a3_reg_n_0_[24] ),
        .I2(\CPU_src1_value_a3_reg_n_0_[25] ),
        .I3(CPU_src2_value_a3[25]),
        .O(CPU_valid_taken_br_a4_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_8
       (.I0(CPU_src2_value_a3[30]),
        .I1(\CPU_src1_value_a3_reg_n_0_[30] ),
        .I2(CPU_src2_value_a3[31]),
        .I3(p_1_in),
        .O(CPU_valid_taken_br_a4_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CPU_valid_taken_br_a4_i_9
       (.I0(CPU_src2_value_a3[28]),
        .I1(\CPU_src1_value_a3_reg_n_0_[28] ),
        .I2(CPU_src2_value_a3[29]),
        .I3(\CPU_src1_value_a3_reg_n_0_[29] ),
        .O(CPU_valid_taken_br_a4_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPU_valid_taken_br_a4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_valid_taken_br_a3),
        .Q(CPU_valid_taken_br_a4),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 CPU_valid_taken_br_a4_reg_i_12
       (.CI(CPU_valid_taken_br_a4_reg_i_21_n_0),
        .CO({CPU_valid_taken_br_a4_reg_i_12_n_0,CPU_valid_taken_br_a4_reg_i_12_n_1,CPU_valid_taken_br_a4_reg_i_12_n_2,CPU_valid_taken_br_a4_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({CPU_valid_taken_br_a4_i_22_n_0,CPU_valid_taken_br_a4_i_23_n_0,CPU_valid_taken_br_a4_i_24_n_0,CPU_valid_taken_br_a4_i_25_n_0}),
        .O(NLW_CPU_valid_taken_br_a4_reg_i_12_O_UNCONNECTED[3:0]),
        .S({CPU_valid_taken_br_a4_i_26_n_0,CPU_valid_taken_br_a4_i_27_n_0,CPU_valid_taken_br_a4_i_28_n_0,CPU_valid_taken_br_a4_i_29_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 CPU_valid_taken_br_a4_reg_i_2
       (.CI(CPU_valid_taken_br_a4_reg_i_3_n_0),
        .CO({CPU_sltu_result_a3,CPU_valid_taken_br_a4_reg_i_2_n_1,CPU_valid_taken_br_a4_reg_i_2_n_2,CPU_valid_taken_br_a4_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({CPU_valid_taken_br_a4_i_4_n_0,CPU_valid_taken_br_a4_i_5_n_0,CPU_valid_taken_br_a4_i_6_n_0,CPU_valid_taken_br_a4_i_7_n_0}),
        .O(NLW_CPU_valid_taken_br_a4_reg_i_2_O_UNCONNECTED[3:0]),
        .S({CPU_valid_taken_br_a4_i_8_n_0,CPU_valid_taken_br_a4_i_9_n_0,CPU_valid_taken_br_a4_i_10_n_0,CPU_valid_taken_br_a4_i_11_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 CPU_valid_taken_br_a4_reg_i_21
       (.CI(1'b0),
        .CO({CPU_valid_taken_br_a4_reg_i_21_n_0,CPU_valid_taken_br_a4_reg_i_21_n_1,CPU_valid_taken_br_a4_reg_i_21_n_2,CPU_valid_taken_br_a4_reg_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({CPU_valid_taken_br_a4_i_30_n_0,CPU_valid_taken_br_a4_i_31_n_0,CPU_valid_taken_br_a4_i_32_n_0,CPU_valid_taken_br_a4_i_33_n_0}),
        .O(NLW_CPU_valid_taken_br_a4_reg_i_21_O_UNCONNECTED[3:0]),
        .S({CPU_valid_taken_br_a4_i_34_n_0,CPU_valid_taken_br_a4_i_35_n_0,CPU_valid_taken_br_a4_i_36_n_0,CPU_valid_taken_br_a4_i_37_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 CPU_valid_taken_br_a4_reg_i_3
       (.CI(CPU_valid_taken_br_a4_reg_i_12_n_0),
        .CO({CPU_valid_taken_br_a4_reg_i_3_n_0,CPU_valid_taken_br_a4_reg_i_3_n_1,CPU_valid_taken_br_a4_reg_i_3_n_2,CPU_valid_taken_br_a4_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({CPU_valid_taken_br_a4_i_13_n_0,CPU_valid_taken_br_a4_i_14_n_0,CPU_valid_taken_br_a4_i_15_n_0,CPU_valid_taken_br_a4_i_16_n_0}),
        .O(NLW_CPU_valid_taken_br_a4_reg_i_3_O_UNCONNECTED[3:0]),
        .S({CPU_valid_taken_br_a4_i_17_n_0,CPU_valid_taken_br_a4_i_18_n_0,CPU_valid_taken_br_a4_i_19_n_0,CPU_valid_taken_br_a4_i_20_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    CPU_valid_taken_br_a5_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CPU_valid_taken_br_a4),
        .Q(CPU_valid_taken_br_a5),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1 
       (.I0(CPU_result_a4[3]),
        .I1(CPU_result_a4[5]),
        .I2(CPU_valid_a4),
        .I3(CPU_is_s_instr_a4),
        .I4(CPU_result_a4[4]),
        .I5(CPU_result_a4[2]),
        .O(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5[0][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[0].CPU_Dmem_value_a5_reg[0] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5[10][31]_i_1 
       (.I0(CPU_result_a4[4]),
        .I1(CPU_result_a4[5]),
        .I2(CPU_valid_a4),
        .I3(CPU_is_s_instr_a4),
        .I4(CPU_result_a4[3]),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[10].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[10].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[10].CPU_Dmem_value_a5_reg[10] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5[11][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_is_s_instr_a4),
        .I3(CPU_valid_a4),
        .I4(CPU_result_a4[5]),
        .I5(CPU_result_a4[4]),
        .O(\L1_CPU_Dmem[11].L1_wr_a4 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[11].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[11].CPU_Dmem_value_a5_reg[11] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5[12][31]_i_1 
       (.I0(CPU_result_a4[3]),
        .I1(CPU_result_a4[4]),
        .I2(CPU_result_a4[5]),
        .I3(CPU_valid_a4),
        .I4(CPU_is_s_instr_a4),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[12].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[12].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[12].CPU_Dmem_value_a5_reg[12] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_result_a4[4]),
        .I3(CPU_result_a4[5]),
        .I4(CPU_valid_a4),
        .I5(CPU_is_s_instr_a4),
        .O(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5[13][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[13].CPU_Dmem_value_a5_reg[13] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5[14][31]_i_1 
       (.I0(CPU_result_a4[4]),
        .I1(CPU_result_a4[5]),
        .I2(CPU_valid_a4),
        .I3(CPU_is_s_instr_a4),
        .I4(CPU_result_a4[3]),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[14].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[14].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[14].CPU_Dmem_value_a5_reg[14] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5[15][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_is_s_instr_a4),
        .I3(CPU_valid_a4),
        .I4(CPU_result_a4[5]),
        .I5(CPU_result_a4[4]),
        .O(\L1_CPU_Dmem[15].L1_wr_a4 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[15].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[15].CPU_Dmem_value_a5_reg[15] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_result_a4[5]),
        .I3(CPU_valid_a4),
        .I4(CPU_is_s_instr_a4),
        .I5(CPU_result_a4[4]),
        .O(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5[1][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[1].CPU_Dmem_value_a5_reg[1] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5[2][31]_i_1 
       (.I0(CPU_result_a4[5]),
        .I1(CPU_valid_a4),
        .I2(CPU_is_s_instr_a4),
        .I3(CPU_result_a4[4]),
        .I4(CPU_result_a4[3]),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[2].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[2].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[2].CPU_Dmem_value_a5_reg[2] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5[3][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_result_a4[4]),
        .I3(CPU_is_s_instr_a4),
        .I4(CPU_valid_a4),
        .I5(CPU_result_a4[5]),
        .O(\L1_CPU_Dmem[3].L1_wr_a4 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[3].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[3].CPU_Dmem_value_a5_reg[3] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5[4][31]_i_1 
       (.I0(CPU_result_a4[3]),
        .I1(CPU_result_a4[4]),
        .I2(CPU_result_a4[5]),
        .I3(CPU_valid_a4),
        .I4(CPU_is_s_instr_a4),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[4].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[4].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[4].CPU_Dmem_value_a5_reg[4] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_result_a4[4]),
        .I3(CPU_result_a4[5]),
        .I4(CPU_valid_a4),
        .I5(CPU_is_s_instr_a4),
        .O(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5[5][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[5].CPU_Dmem_value_a5_reg[5] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5[6][31]_i_1 
       (.I0(CPU_is_s_instr_a4),
        .I1(CPU_valid_a4),
        .I2(CPU_result_a4[5]),
        .I3(CPU_result_a4[4]),
        .I4(CPU_result_a4[3]),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[6].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[6].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[6].CPU_Dmem_value_a5_reg[6] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5[7][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[4]),
        .I2(CPU_result_a4[5]),
        .I3(CPU_valid_a4),
        .I4(CPU_is_s_instr_a4),
        .I5(CPU_result_a4[3]),
        .O(\L1_CPU_Dmem[7].L1_wr_a4 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [19]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [1]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [29]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [2]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [31]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [3]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[7].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[7].CPU_Dmem_value_a5_reg[7] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5[8][31]_i_1 
       (.I0(CPU_result_a4[3]),
        .I1(CPU_result_a4[4]),
        .I2(CPU_result_a4[5]),
        .I3(CPU_valid_a4),
        .I4(CPU_is_s_instr_a4),
        .I5(CPU_result_a4[2]),
        .O(\L1_CPU_Dmem[8].L1_wr_a4 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [0]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Dmem[8].L1_wr_a4 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[8].CPU_Dmem_value_a5_reg[8] [9]),
        .R(CPU_reset_a4));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1 
       (.I0(CPU_result_a4[2]),
        .I1(CPU_result_a4[3]),
        .I2(CPU_result_a4[4]),
        .I3(CPU_result_a4[5]),
        .I4(CPU_valid_a4),
        .I5(CPU_is_s_instr_a4),
        .O(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[0]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [0]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[10]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [10]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[11]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [11]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[12]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [12]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[13]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [13]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[14]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [14]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[15]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [15]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[16]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [16]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[17]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [17]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[18]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [18]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[19]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [19]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[1]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [1]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[20]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [20]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[21]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [21]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[22]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [22]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[23]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [23]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[24]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [24]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[25]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [25]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[26]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [26]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[27]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [27]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[28]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [28]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[29]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [29]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[2]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [2]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[30]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [30]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[31]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [31]),
        .R(CPU_reset_a4));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[3]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [3]),
        .S(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[4]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [4]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[5]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [5]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[6]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [6]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[7]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [7]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[8]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [8]),
        .R(CPU_reset_a4));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5[9][31]_i_1_n_0 ),
        .D(CPU_src2_value_a4[9]),
        .Q(\L1gen_CPU_Dmem[9].CPU_Dmem_value_a5_reg[9] [9]),
        .R(CPU_reset_a4));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4[0][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[0].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[0].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[0].CPU_Xreg_value_a4_reg[0] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4[10][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[10].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[10].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[10].CPU_Xreg_value_a4_reg[10] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4[11][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[11].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[11].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[11].CPU_Xreg_value_a4_reg[11] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4[12][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[12].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[12].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[12].CPU_Xreg_value_a4_reg[12] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4[13][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[13].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[13].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[13].CPU_Xreg_value_a4_reg[13] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4[14][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[14].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[14].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[14].CPU_Xreg_value_a4_reg[14] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[15].L1_wr_a3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCACFFAFF)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2 
       (.I0(CPU_rd_a5[4]),
        .I1(CPU_rd_a3[4]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a5[3]),
        .I4(CPU_rd_a3[3]),
        .O(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[15].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4_reg[15] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4[16][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[16].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[16].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[16].CPU_Xreg_value_a4_reg[16] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4[17][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[17].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[17].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [9]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [0]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [10]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [11]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [12]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [13]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [14]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [15]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [16]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [17]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [18]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [19]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [1]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [20]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [21]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [22]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [23]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [24]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [25]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [26]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [27]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [28]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [29]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [2]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [30]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [31]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [3]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [4]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [5]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [6]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [7]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [8]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg[17][9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a4_reg[17] [9]),
        .Q(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4[18][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[18].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[18].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[18].CPU_Xreg_value_a4_reg[18] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4[19][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[19].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[19].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[19].CPU_Xreg_value_a4_reg[19] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4[1][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[1].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[1].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[1].CPU_Xreg_value_a4_reg[1] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4[20][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[20].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[20].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[20].CPU_Xreg_value_a4_reg[20] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4[21][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[21].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[21].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[21].CPU_Xreg_value_a4_reg[21] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4[22][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[22].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[22].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[22].CPU_Xreg_value_a4_reg[22] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ),
        .O(\L1_CPU_Xreg[23].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'h775FFF5F77FFFFFF)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[0]),
        .I2(CPU_rd_a5[0]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[1]),
        .I5(CPU_rd_a5[1]),
        .O(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCACFFAFF)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3 
       (.I0(CPU_rd_a5[3]),
        .I1(CPU_rd_a3[3]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a5[4]),
        .I4(CPU_rd_a3[4]),
        .O(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [3]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[23].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4_reg[23] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[24].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hFFFFEEFFFFFAEEFA)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[0]),
        .I2(CPU_rd_a5[0]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[1]),
        .I5(CPU_rd_a5[1]),
        .O(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[24].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4_reg[24] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[25].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hEEFAFFFAEEFFFFFF)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[1]),
        .I2(CPU_rd_a5[1]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[0]),
        .I5(CPU_rd_a5[0]),
        .O(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[25].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4_reg[25] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[26].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hEEFAFFFAEEFFFFFF)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[0]),
        .I2(CPU_rd_a5[0]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[1]),
        .I5(CPU_rd_a5[1]),
        .O(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[26].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4_reg[26] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[27].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hBBAFFFAFBBFFFFFF)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[0]),
        .I2(CPU_rd_a5[0]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[1]),
        .I5(CPU_rd_a5[1]),
        .O(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[27].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4_reg[27] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[28].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hFFAFFCACFFFFFFFF)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2 
       (.I0(CPU_rd_a3[0]),
        .I1(CPU_rd_a5[0]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a3[1]),
        .I4(CPU_rd_a5[1]),
        .I5(CPU_rf_wr_index_a3[2]),
        .O(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[28].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4_reg[28] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[29].L1_wr_a3 ));
  LUT6 #(
    .INIT(64'hDDF5FFF5DDFFFFFF)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[1]),
        .I2(CPU_rd_a5[1]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[0]),
        .I5(CPU_rd_a5[0]),
        .O(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[29].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4_reg[29] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4[2][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[26].CPU_Xreg_value_a4[26][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[2].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[2].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[2].CPU_Xreg_value_a4_reg[2] [9]),
        .R(CPU_reset_a3));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[0]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[0]));
  LUT4 #(
    .INIT(16'hAAE2)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2 
       (.I0(data21[0]),
        .I1(CPU_is_add_a3),
        .I2(\CPU_result_a4_reg[3]_i_2_n_7 ),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[10]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[10]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_5 ),
        .I2(data21[10]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[11]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[10] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_11 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[9] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_12 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[8] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_4 ),
        .I2(data21[11]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_5 
       (.I0(CPU_src2_value_a3[11]),
        .I1(\CPU_src1_value_a3_reg_n_0_[11] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_6 
       (.I0(CPU_src2_value_a3[10]),
        .I1(\CPU_src1_value_a3_reg_n_0_[10] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_7 
       (.I0(CPU_src2_value_a3[9]),
        .I1(\CPU_src1_value_a3_reg_n_0_[9] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_8 
       (.I0(CPU_src2_value_a3[8]),
        .I1(\CPU_src1_value_a3_reg_n_0_[8] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[11] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[12]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[12]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_7 ),
        .I2(data21[12]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[13]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[13]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_6 ),
        .I2(data21[13]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[14]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[14]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_5 ),
        .I2(data21[14]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[15]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[14] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_11 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[13] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_12 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[12] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_4 ),
        .I2(data21[15]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_5 
       (.I0(CPU_src2_value_a3[15]),
        .I1(\CPU_src1_value_a3_reg_n_0_[15] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_6 
       (.I0(CPU_src2_value_a3[14]),
        .I1(\CPU_src1_value_a3_reg_n_0_[14] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_7 
       (.I0(CPU_src2_value_a3[13]),
        .I1(\CPU_src1_value_a3_reg_n_0_[13] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_8 
       (.I0(CPU_src2_value_a3[12]),
        .I1(\CPU_src1_value_a3_reg_n_0_[12] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[15] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[16]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[16]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_7 ),
        .I2(data21[16]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[17]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[17]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_6 ),
        .I2(data21[17]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[18]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[18]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_5 ),
        .I2(data21[18]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[19]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[18] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_11 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[17] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_12 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[16] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_4 ),
        .I2(data21[19]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_5 
       (.I0(CPU_src2_value_a3[19]),
        .I1(\CPU_src1_value_a3_reg_n_0_[19] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_6 
       (.I0(CPU_src2_value_a3[18]),
        .I1(\CPU_src1_value_a3_reg_n_0_[18] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_7 
       (.I0(CPU_src2_value_a3[17]),
        .I1(\CPU_src1_value_a3_reg_n_0_[17] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_8 
       (.I0(CPU_src2_value_a3[16]),
        .I1(\CPU_src1_value_a3_reg_n_0_[16] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[19] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[1]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[1]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[3]_i_2_n_6 ),
        .I2(data21[1]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[20]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[20]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_7 ),
        .I2(data21[20]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[21]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[21]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_6 ),
        .I2(data21[21]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[22]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[22]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_5 ),
        .I2(data21[22]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[23]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[22] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_11 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[21] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_12 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[20] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_4 ),
        .I2(data21[23]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_5 
       (.I0(CPU_src2_value_a3[23]),
        .I1(\CPU_src1_value_a3_reg_n_0_[23] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_6 
       (.I0(CPU_src2_value_a3[22]),
        .I1(\CPU_src1_value_a3_reg_n_0_[22] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_7 
       (.I0(CPU_src2_value_a3[21]),
        .I1(\CPU_src1_value_a3_reg_n_0_[21] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_8 
       (.I0(CPU_src2_value_a3[20]),
        .I1(\CPU_src1_value_a3_reg_n_0_[20] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[23] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[24]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[24]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_7 ),
        .I2(data21[24]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[25]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[25]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_6 ),
        .I2(data21[25]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[26]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[26]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_5 ),
        .I2(data21[26]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[27]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_10 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[26] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_11 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[25] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_12 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[24] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_4 ),
        .I2(data21[27]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_5 
       (.I0(CPU_src2_value_a3[27]),
        .I1(\CPU_src1_value_a3_reg_n_0_[27] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_6 
       (.I0(CPU_src2_value_a3[26]),
        .I1(\CPU_src1_value_a3_reg_n_0_[26] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_7 
       (.I0(CPU_src2_value_a3[25]),
        .I1(\CPU_src1_value_a3_reg_n_0_[25] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_8 
       (.I0(CPU_src2_value_a3[24]),
        .I1(\CPU_src1_value_a3_reg_n_0_[24] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_9 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[27] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[28]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[28]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_7 ),
        .I2(data21[28]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[29]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[29]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_6 ),
        .I2(data21[29]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][2]_i_1 
       (.I0(p_0_in__0[0]),
        .I1(CPU_dmem_rd_data_a5[2]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[30]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[30]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_5 ),
        .I2(data21[30]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[30].L1_wr_a3 ));
  LUT5 #(
    .INIT(32'hFFFACFCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_10 
       (.I0(CPU_rd_a5[1]),
        .I1(CPU_rd_a3[1]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a5[0]),
        .I4(CPU_rd_a3[0]),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_11 
       (.I0(CPU_rd_a3[3]),
        .I1(CPU_rd_a5[3]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_index_a3[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_14 
       (.I0(CPU_rd_a3[3]),
        .I1(CPU_rd_a3[1]),
        .I2(CPU_rd_a3[0]),
        .I3(CPU_rd_a3[4]),
        .I4(CPU_rd_a3[2]),
        .O(CPU_rf_wr_en_a31));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_15 
       (.I0(p_1_in),
        .I1(CPU_src2_value_a3[31]),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_16 
       (.I0(CPU_src2_value_a3[30]),
        .I1(\CPU_src1_value_a3_reg_n_0_[30] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_17 
       (.I0(CPU_src2_value_a3[29]),
        .I1(\CPU_src1_value_a3_reg_n_0_[29] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_18 
       (.I0(CPU_src2_value_a3[28]),
        .I1(\CPU_src1_value_a3_reg_n_0_[28] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_19 
       (.I0(p_1_in),
        .I1(p_0_in0_in),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_2 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6_n_0 ),
        .I1(CPU_dmem_rd_data_a5[31]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_20 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[30] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_21 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[29] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_22 
       (.I0(p_0_in0_in),
        .I1(\CPU_src1_value_a3_reg_n_0_[28] ),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_3 
       (.I0(CPU_rf_wr_en_a3),
        .I1(CPU_rf_wr_index_a3[2]),
        .I2(CPU_rf_wr_index_a3[4]),
        .I3(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_10_n_0 ),
        .I4(CPU_rf_wr_index_a3[3]),
        .O(p_64_in));
  LUT6 #(
    .INIT(64'hDDF5FFF5DDFFFFFF)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4 
       (.I0(CPU_rf_wr_index_a3[2]),
        .I1(CPU_rd_a3[0]),
        .I2(CPU_rd_a5[0]),
        .I3(CPU_valid_a3),
        .I4(CPU_rd_a3[1]),
        .I5(CPU_rd_a5[1]),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h353FF5FF)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5 
       (.I0(CPU_rd_a5[4]),
        .I1(CPU_rd_a3[4]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a5[3]),
        .I4(CPU_rd_a3[3]),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_4 ),
        .I2(data21[31]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_7 
       (.I0(CPU_rf_wr_en_a31),
        .I1(CPU_valid_taken_br_a5),
        .I2(CPU_valid_load_a4),
        .I3(CPU_valid_taken_br_a4),
        .I4(CPU_rd_valid_a3),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_en_a3));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_8 
       (.I0(CPU_rd_a3[2]),
        .I1(CPU_rd_a5[2]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_index_a3[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_9 
       (.I0(CPU_rd_a3[4]),
        .I1(CPU_rd_a5[4]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_index_a3[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][3]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(CPU_dmem_rd_data_a5[3]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[3]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][4]_i_1 
       (.I0(p_0_in__0[2]),
        .I1(CPU_dmem_rd_data_a5[4]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][5]_i_1 
       (.I0(p_0_in__0[3]),
        .I1(CPU_dmem_rd_data_a5[5]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[5]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[6]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[6]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[5]_i_2_n_5 ),
        .I2(data21[6]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[7]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[7]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\CPU_result_a4_reg[5]_i_2_n_4 ),
        .I2(data21[7]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[8]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[8]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_7 ),
        .I2(data21[8]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCA)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_1 
       (.I0(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2_n_0 ),
        .I1(CPU_dmem_rd_data_a5[9]),
        .I2(CPU_valid_taken_br_a4),
        .I3(CPU_valid_load_a4),
        .I4(CPU_valid_taken_br_a5),
        .I5(CPU_valid_load_a5),
        .O(CPU_rf_wr_data_a3[9]));
  LUT4 #(
    .INIT(16'hF0D8)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2 
       (.I0(CPU_is_add_a3),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_6 ),
        .I2(data21[9]),
        .I3(CPU_is_addi_a3),
        .O(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [11]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3 
       (.CI(\CPU_result_a4_reg[5]_i_2_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[11] ,\CPU_src1_value_a3_reg_n_0_[10] ,\CPU_src1_value_a3_reg_n_0_[9] ,\CPU_src1_value_a3_reg_n_0_[8] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_5_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_6_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_7_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4 
       (.CI(\CPU_result_a4_reg[5]_i_3_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[11] ,\CPU_src1_value_a3_reg_n_0_[10] ,\CPU_src1_value_a3_reg_n_0_[9] ,\CPU_src1_value_a3_reg_n_0_[8] }),
        .O(data21[11:8]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_9_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_10_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_11_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][11]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [15]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_3_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[15] ,\CPU_src1_value_a3_reg_n_0_[14] ,\CPU_src1_value_a3_reg_n_0_[13] ,\CPU_src1_value_a3_reg_n_0_[12] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_5_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_6_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_7_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][11]_i_4_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[15] ,\CPU_src1_value_a3_reg_n_0_[14] ,\CPU_src1_value_a3_reg_n_0_[13] ,\CPU_src1_value_a3_reg_n_0_[12] }),
        .O(data21[15:12]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_9_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_10_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_11_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][15]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [19]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_3_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[19] ,\CPU_src1_value_a3_reg_n_0_[18] ,\CPU_src1_value_a3_reg_n_0_[17] ,\CPU_src1_value_a3_reg_n_0_[16] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_5_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_6_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_7_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][15]_i_4_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[19] ,\CPU_src1_value_a3_reg_n_0_[18] ,\CPU_src1_value_a3_reg_n_0_[17] ,\CPU_src1_value_a3_reg_n_0_[16] }),
        .O(data21[19:16]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_9_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_10_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_11_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][19]_i_12_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [23]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_3_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[23] ,\CPU_src1_value_a3_reg_n_0_[22] ,\CPU_src1_value_a3_reg_n_0_[21] ,\CPU_src1_value_a3_reg_n_0_[20] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_5_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_6_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_7_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][19]_i_4_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[23] ,\CPU_src1_value_a3_reg_n_0_[22] ,\CPU_src1_value_a3_reg_n_0_[21] ,\CPU_src1_value_a3_reg_n_0_[20] }),
        .O(data21[23:20]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_9_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_10_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_11_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][23]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [27]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_3_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[27] ,\CPU_src1_value_a3_reg_n_0_[26] ,\CPU_src1_value_a3_reg_n_0_[25] ,\CPU_src1_value_a3_reg_n_0_[24] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_5_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_6_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_7_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][23]_i_4_n_0 ),
        .CO({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\CPU_src1_value_a3_reg_n_0_[27] ,\CPU_src1_value_a3_reg_n_0_[26] ,\CPU_src1_value_a3_reg_n_0_[25] ,\CPU_src1_value_a3_reg_n_0_[24] }),
        .O(data21[27:24]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_9_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_10_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_11_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][27]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [31]),
        .R(CPU_reset_a3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_3_n_0 ),
        .CO({\NLW_L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_CO_UNCONNECTED [3],\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\CPU_src1_value_a3_reg_n_0_[30] ,\CPU_src1_value_a3_reg_n_0_[29] ,\CPU_src1_value_a3_reg_n_0_[28] }),
        .O({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_4 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_5 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_6 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_12_n_7 }),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_15_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_16_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_17_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13 
       (.CI(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][27]_i_4_n_0 ),
        .CO({\NLW_L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_CO_UNCONNECTED [3],\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_1 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_2 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\CPU_src1_value_a3_reg_n_0_[30] ,\CPU_src1_value_a3_reg_n_0_[29] ,\CPU_src1_value_a3_reg_n_0_[28] }),
        .O(data21[31:28]),
        .S({\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_19_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_20_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_21_n_0 ,\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_22_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[30].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4_reg[30] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4[31][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_5_n_0 ),
        .O(\L1_CPU_Xreg[31].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [3]),
        .S(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [4]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[31].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[31].CPU_Xreg_value_a4_reg[31] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4[3][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[27].CPU_Xreg_value_a4[27][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[3].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[3].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[3].CPU_Xreg_value_a4_reg[3] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4[4][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[28].CPU_Xreg_value_a4[28][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[4].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[4].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[4].CPU_Xreg_value_a4_reg[4] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4[5][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[29].CPU_Xreg_value_a4[29][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[5].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[5].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[5].CPU_Xreg_value_a4_reg[5] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4[6][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[30].CPU_Xreg_value_a4[30][31]_i_4_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[6].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[6].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[6].CPU_Xreg_value_a4_reg[6] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[23].CPU_Xreg_value_a4[23][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[7].L1_wr_a3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFACFCA)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2 
       (.I0(CPU_rd_a5[4]),
        .I1(CPU_rd_a3[4]),
        .I2(CPU_valid_a3),
        .I3(CPU_rd_a5[3]),
        .I4(CPU_rd_a3[3]),
        .O(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4[7][31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [19]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [1]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [29]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [2]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [31]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [3]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[7].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[7].CPU_Xreg_value_a4_reg[7] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4[8][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[24].CPU_Xreg_value_a4[24][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[8].L1_wr_a3 ));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [0]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[8].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[8].CPU_Xreg_value_a4_reg[8] [9]),
        .R(CPU_reset_a3));
  LUT3 #(
    .INIT(8'h02)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4[9][31]_i_1 
       (.I0(p_64_in),
        .I1(\L1gen_CPU_Xreg[25].CPU_Xreg_value_a4[25][31]_i_2_n_0 ),
        .I2(\L1gen_CPU_Xreg[15].CPU_Xreg_value_a4[15][31]_i_2_n_0 ),
        .O(\L1_CPU_Xreg[9].L1_wr_a3 ));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[0]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [0]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[10]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [10]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[11]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [11]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[12]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [12]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[13]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [13]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[14]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [14]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[15]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [15]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[16]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [16]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[17]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [17]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[18]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [18]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[19]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [19]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[1]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [1]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[20]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [20]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[21]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [21]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[22]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [22]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[23]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [23]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[24]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [24]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[25]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [25]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[26]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [26]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[27]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [27]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[28]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [28]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[29]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [29]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[2]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [2]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[30]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [30]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[31]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [31]),
        .R(CPU_reset_a3));
  FDSE #(
    .INIT(1'b1)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[3]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [3]),
        .S(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[4]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [4]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[5]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [5]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[6]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [6]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[7]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [7]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[8]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [8]),
        .R(CPU_reset_a3));
  FDRE #(
    .INIT(1'b0)) 
    \L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\L1_CPU_Xreg[9].L1_wr_a3 ),
        .D(CPU_rf_wr_data_a3[9]),
        .Q(\L1gen_CPU_Xreg[9].CPU_Xreg_value_a4_reg[9] [9]),
        .R(CPU_reset_a3));
  BUFG clkP_CPU_dmem_rd_en_a5_BUFG_inst
       (.I(clkP_CPU_dmem_rd_en_a5),
        .O(clkP_CPU_dmem_rd_en_a5_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  clk_gate gen_clkP_CPU_dmem_rd_en_a5
       (.CLK(clk_IBUF_BUFG),
        .CPU_valid_load_a4(CPU_valid_load_a4),
        .clkP_CPU_dmem_rd_en_a5(clkP_CPU_dmem_rd_en_a5),
        .clk_IBUF(clk_IBUF),
        .clk_IBUF_BUFG_inst(gen_clkP_CPU_dmem_rd_en_a5_n_0));
  clk_gate_0 gen_clkP_CPU_rd_valid_a2
       (.CPU_imem_rd_addr_a1(CPU_imem_rd_addr_a1),
        .\CPU_imem_rd_addr_a1_reg[3] (gen_clkP_CPU_rd_valid_a2_n_0),
        .\CPU_rd_a2_reg[0] (gen_clkP_CPU_dmem_rd_en_a5_n_0),
        .clkP_CPU_rd_valid_a2(clkP_CPU_rd_valid_a2),
        .clk_IBUF(clk_IBUF));
  clk_gate_1 gen_clkP_CPU_rd_valid_a3
       (.CLK(clkP_CPU_rd_valid_a3),
        .\CPU_rd_a3_reg[4] (gen_clkP_CPU_dmem_rd_en_a5_n_0),
        .CPU_rd_valid_a2(CPU_rd_valid_a2),
        .clk_IBUF(clk_IBUF));
  clk_gate_2 gen_clkP_CPU_rd_valid_a4
       (.CLK(clkP_CPU_rd_valid_a4),
        .\CPU_rd_a4_reg[4] (gen_clkP_CPU_dmem_rd_en_a5_n_0),
        .CPU_rd_valid_a3(CPU_rd_valid_a3),
        .clk_IBUF(clk_IBUF));
  clk_gate_3 gen_clkP_CPU_rd_valid_a5
       (.CLK(clkP_CPU_rd_valid_a5),
        .\CPU_rd_a5_reg[4] (gen_clkP_CPU_dmem_rd_en_a5_n_0),
        .CPU_rd_valid_a4(CPU_rd_valid_a4),
        .clk_IBUF(clk_IBUF));
  clk_gate_4 gen_clkP_CPU_rs2_valid_a2
       (.CPU_imem_rd_addr_a1(CPU_imem_rd_addr_a1),
        .\CPU_rs2_a2_reg[0] (gen_clkP_CPU_dmem_rd_en_a5_n_0),
        .clkP_CPU_rs2_valid_a2(clkP_CPU_rs2_valid_a2),
        .clk_IBUF(clk_IBUF));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(\out[7]_i_4_n_0 ),
        .I3(\out[7]_i_5_n_0 ),
        .I4(\out[7]_i_6_n_0 ),
        .I5(\out[7]_i_7_n_0 ),
        .O(\out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_2 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][0] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][1] ),
        .O(\out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \out[7]_i_3 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][5] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][4] ),
        .I2(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][2] ),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][3] ),
        .I4(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][7] ),
        .I5(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][6] ),
        .O(\out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \out[7]_i_4 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][10] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][11] ),
        .I2(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][8] ),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][9] ),
        .I4(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][13] ),
        .I5(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][12] ),
        .O(\out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \out[7]_i_5 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][16] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][17] ),
        .I2(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][14] ),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][15] ),
        .I4(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][19] ),
        .I5(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][18] ),
        .O(\out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \out[7]_i_6 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][22] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][23] ),
        .I2(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][20] ),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][21] ),
        .I4(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][25] ),
        .I5(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][24] ),
        .O(\out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \out[7]_i_7 
       (.I0(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][28] ),
        .I1(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][29] ),
        .I2(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][26] ),
        .I3(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][27] ),
        .I4(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][31] ),
        .I5(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][30] ),
        .O(\out[7]_i_7_n_0 ));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][0] ),
        .Q(out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][1] ),
        .Q(out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][2] ),
        .Q(out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][3] ),
        .Q(out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][4] ),
        .Q(out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][5] ),
        .Q(out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][6] ),
        .Q(out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .D(\L1gen_CPU_Xreg[17].CPU_Xreg_value_a5_reg_n_0_[17][7] ),
        .Q(out_OBUF[7]),
        .R(1'b0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
