// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Feb 27 11:30:19 2026
// Host        : sc017 running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/yliu1047/RC/lab2/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "matrix_mult,Vivado 2024.1" *)
module bd_0_hls_inst_0(a_ce0, a_ce1, b_ce0, b_ce1, prod_ce0, prod_we0, 
  ap_clk, ap_rst, ap_done, ap_idle, ap_ready, ap_start, a_address0, a_q0, a_address1, a_q1, b_address0, 
  b_q0, b_address1, b_q1, prod_address0, prod_d0)
/* synthesis syn_black_box black_box_pad_pin="a_ce0,a_ce1,b_ce0,b_ce1,prod_ce0,prod_we0,ap_rst,ap_done,ap_idle,ap_ready,ap_start,a_address0[7:0],a_q0[7:0],a_address1[7:0],a_q1[7:0],b_address0[7:0],b_q0[7:0],b_address1[7:0],b_q1[7:0],prod_address0[7:0],prod_d0[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output a_ce0;
  output a_ce1;
  output b_ce0;
  output b_ce1;
  output prod_ce0;
  output prod_we0;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_start;
  output [7:0]a_address0;
  input [7:0]a_q0;
  output [7:0]a_address1;
  input [7:0]a_q1;
  output [7:0]b_address0;
  input [7:0]b_q0;
  output [7:0]b_address1;
  input [7:0]b_q1;
  output [7:0]prod_address0;
  output [31:0]prod_d0;
endmodule
