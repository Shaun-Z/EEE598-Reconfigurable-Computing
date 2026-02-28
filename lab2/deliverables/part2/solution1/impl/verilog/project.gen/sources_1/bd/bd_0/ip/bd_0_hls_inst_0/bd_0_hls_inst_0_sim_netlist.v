// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Feb 27 11:30:19 2026
// Host        : sc017 running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/yliu1047/RC/lab2/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,matrix_mult,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "matrix_mult,Vivado 2024.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (a_ce0,
    a_ce1,
    b_ce0,
    b_ce1,
    prod_ce0,
    prod_we0,
    ap_clk,
    ap_rst,
    ap_done,
    ap_idle,
    ap_ready,
    ap_start,
    a_address0,
    a_q0,
    a_address1,
    a_q1,
    b_address0,
    b_q0,
    b_address1,
    b_q1,
    prod_address0,
    prod_d0);
  output a_ce0;
  output a_ce1;
  output b_ce0;
  output b_ce1;
  output prod_ce0;
  output prod_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [7:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [7:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address1, LAYERED_METADATA undef" *) output [7:0]a_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q1, LAYERED_METADATA undef" *) input [7:0]a_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [7:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [7:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address1, LAYERED_METADATA undef" *) output [7:0]b_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q1, LAYERED_METADATA undef" *) input [7:0]b_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 prod_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME prod_address0, LAYERED_METADATA undef" *) output [7:0]prod_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 prod_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME prod_d0, LAYERED_METADATA undef" *) output [31:0]prod_d0;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]\^a_address0 ;
  wire [7:0]\^a_address1 ;
  wire a_ce0;
  wire a_ce1;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]b_address0;
  wire [7:0]b_address1;
  wire b_ce0;
  wire b_ce1;
  wire [7:0]b_q0;
  wire [7:0]b_q1;
  wire [7:0]prod_address0;
  wire prod_ce0;
  wire [19:0]\^prod_d0 ;
  wire prod_we0;
  wire [1:1]NLW_inst_a_address0_UNCONNECTED;
  wire [1:1]NLW_inst_a_address1_UNCONNECTED;
  wire [31:20]NLW_inst_prod_d0_UNCONNECTED;

  assign a_address0[7:2] = \^a_address0 [7:2];
  assign a_address0[1] = \<const1> ;
  assign a_address0[0] = \^a_address0 [0];
  assign a_address1[7:2] = \^a_address1 [7:2];
  assign a_address1[1] = \<const0> ;
  assign a_address1[0] = \^a_address1 [0];
  assign prod_d0[31] = \<const0> ;
  assign prod_d0[30] = \<const0> ;
  assign prod_d0[29] = \<const0> ;
  assign prod_d0[28] = \<const0> ;
  assign prod_d0[27] = \<const0> ;
  assign prod_d0[26] = \<const0> ;
  assign prod_d0[25] = \<const0> ;
  assign prod_d0[24] = \<const0> ;
  assign prod_d0[23] = \<const0> ;
  assign prod_d0[22] = \<const0> ;
  assign prod_d0[21] = \<const0> ;
  assign prod_d0[20] = \<const0> ;
  assign prod_d0[19:0] = \^prod_d0 [19:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "8'b00000001" *) 
  (* ap_ST_fsm_pp0_stage1 = "8'b00000010" *) 
  (* ap_ST_fsm_pp0_stage2 = "8'b00000100" *) 
  (* ap_ST_fsm_pp0_stage3 = "8'b00001000" *) 
  (* ap_ST_fsm_pp0_stage4 = "8'b00010000" *) 
  (* ap_ST_fsm_pp0_stage5 = "8'b00100000" *) 
  (* ap_ST_fsm_pp0_stage6 = "8'b01000000" *) 
  (* ap_ST_fsm_pp0_stage7 = "8'b10000000" *) 
  bd_0_hls_inst_0_matrix_mult inst
       (.a_address0(\^a_address0 ),
        .a_address1(\^a_address1 ),
        .a_ce0(a_ce0),
        .a_ce1(a_ce1),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address0(b_address0),
        .b_address1(b_address1),
        .b_ce0(b_ce0),
        .b_ce1(b_ce1),
        .b_q0(b_q0),
        .b_q1(b_q1),
        .prod_address0(prod_address0),
        .prod_ce0(prod_ce0),
        .prod_d0({NLW_inst_prod_d0_UNCONNECTED[31:20],\^prod_d0 }),
        .prod_we0(prod_we0));
endmodule

(* ORIG_REF_NAME = "matrix_mult" *) (* ap_ST_fsm_pp0_stage0 = "8'b00000001" *) (* ap_ST_fsm_pp0_stage1 = "8'b00000010" *) 
(* ap_ST_fsm_pp0_stage2 = "8'b00000100" *) (* ap_ST_fsm_pp0_stage3 = "8'b00001000" *) (* ap_ST_fsm_pp0_stage4 = "8'b00010000" *) 
(* ap_ST_fsm_pp0_stage5 = "8'b00100000" *) (* ap_ST_fsm_pp0_stage6 = "8'b01000000" *) (* ap_ST_fsm_pp0_stage7 = "8'b10000000" *) 
(* hls_module = "yes" *) 
module bd_0_hls_inst_0_matrix_mult
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_ce0,
    a_q0,
    a_address1,
    a_ce1,
    a_q1,
    b_address0,
    b_ce0,
    b_q0,
    b_address1,
    b_ce1,
    b_q1,
    prod_address0,
    prod_ce0,
    prod_we0,
    prod_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [7:0]a_address0;
  output a_ce0;
  input [7:0]a_q0;
  output [7:0]a_address1;
  output a_ce1;
  input [7:0]a_q1;
  output [7:0]b_address0;
  output b_ce0;
  input [7:0]b_q0;
  output [7:0]b_address1;
  output b_ce1;
  input [7:0]b_q1;
  output [7:0]prod_address0;
  output prod_ce0;
  output prod_we0;
  output [31:0]prod_d0;

  wire \<const0> ;
  wire [7:0]\^a_address0 ;
  wire \a_address0[0]_INST_0_i_1_n_0 ;
  wire [0:0]\^a_address1 ;
  wire \a_address1[0]_INST_0_i_1_n_0 ;
  wire \a_address1[2]_INST_0_i_1_n_0 ;
  wire \a_address1[3]_INST_0_i_1_n_0 ;
  wire \a_address1[7]_INST_0_i_1_n_0 ;
  wire \a_address1[7]_INST_0_i_3_n_0 ;
  wire a_ce0;
  wire a_load_11_reg_14690;
  wire a_load_12_reg_16890;
  wire a_load_13_reg_15250;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire [7:0]add_ln10_1_fu_908_p2;
  wire [16:0]add_ln16_10_reg_1789;
  wire add_ln16_10_reg_17890;
  wire [18:0]add_ln16_13_fu_1200_p2;
  wire [18:0]add_ln16_13_reg_1794;
  wire [4:4]add_ln16_17_reg_1384;
  wire [16:0]add_ln16_1_reg_1679;
  wire [7:4]add_ln16_21_fu_629_p2;
  wire [7:4]add_ln16_21_reg_1419;
  wire \add_ln16_21_reg_1419[7]_i_2_n_0 ;
  wire \add_ln16_21_reg_1419_reg[7]_i_1_n_1 ;
  wire \add_ln16_21_reg_1419_reg[7]_i_1_n_2 ;
  wire \add_ln16_21_reg_1419_reg[7]_i_1_n_3 ;
  wire [17:0]add_ln16_2_fu_1060_p2;
  wire [17:0]add_ln16_2_reg_1729;
  wire [16:0]add_ln16_3_reg_1709;
  wire [18:0]add_ln16_6_fu_1108_p2;
  wire [18:0]add_ln16_6_reg_1749;
  wire [16:0]add_ln16_7_reg_1769;
  wire add_ln16_7_reg_17690;
  wire [17:0]add_ln16_9_fu_1159_p2;
  wire [17:0]add_ln16_9_reg_1779;
  wire [4:4]add_ln16_s_fu_973_p3;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire ap_CS_fsm_pp0_stage4;
  wire ap_CS_fsm_pp0_stage5;
  wire ap_CS_fsm_pp0_stage6;
  wire ap_CS_fsm_pp0_stage7;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0;
  wire ap_ready;
  wire ap_ready_int;
  wire ap_rst;
  wire ap_start;
  wire [7:0]b_address0;
  wire \b_address0[3]_INST_0_i_1_n_0 ;
  wire \b_address0[3]_INST_0_i_2_n_0 ;
  wire \b_address0[4]_INST_0_i_1_n_0 ;
  wire \b_address0[4]_INST_0_i_2_n_0 ;
  wire \b_address0[4]_INST_0_i_3_n_0 ;
  wire \b_address0[4]_INST_0_i_4_n_0 ;
  wire \b_address0[5]_INST_0_i_1_n_0 ;
  wire \b_address0[5]_INST_0_i_2_n_0 ;
  wire \b_address0[5]_INST_0_i_3_n_0 ;
  wire \b_address0[5]_INST_0_i_4_n_0 ;
  wire \b_address0[6]_INST_0_i_1_n_0 ;
  wire \b_address0[7]_INST_0_i_1_n_0 ;
  wire \b_address0[7]_INST_0_i_2_n_0 ;
  wire [7:0]b_address1;
  wire \b_address1[5]_INST_0_i_1_n_0 ;
  wire \b_address1[6]_INST_0_i_1_n_0 ;
  wire \b_address1[7]_INST_0_i_1_n_0 ;
  wire b_ce0_INST_0_i_1_n_0;
  wire b_ce1;
  wire [7:0]b_q0;
  wire [7:0]b_q1;
  wire bit_sel_reg_1331;
  wire [7:4]data1;
  wire flow_control_loop_pipe_U_n_0;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_10;
  wire flow_control_loop_pipe_U_n_11;
  wire flow_control_loop_pipe_U_n_12;
  wire flow_control_loop_pipe_U_n_9;
  wire i2_fu_118;
  wire \i2_fu_118[3]_i_1_n_0 ;
  wire [3:0]i2_fu_118_reg;
  wire [3:0]i_fu_512_p3;
  wire icmp_ln10_fu_920_p2;
  wire icmp_ln10_reg_1635;
  wire icmp_ln10_reg_1635_pp0_iter1_reg;
  wire \icmp_ln124_reg_413_reg_n_0_[0] ;
  wire icmp_ln12_fu_914_p2;
  wire icmp_ln12_reg_1630;
  wire \icmp_ln12_reg_1630[0]_i_1_n_0 ;
  wire [7:0]indvar_flatten1_fu_114_reg;
  wire [4:0]j3_fu_122;
  wire [4:0]j_fu_903_p2;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8;
  wire mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9;
  wire mul_8ns_8ns_16_1_1_U1_n_0;
  wire mul_8ns_8ns_16_1_1_U1_n_1;
  wire mul_8ns_8ns_16_1_1_U1_n_10;
  wire mul_8ns_8ns_16_1_1_U1_n_11;
  wire mul_8ns_8ns_16_1_1_U1_n_12;
  wire mul_8ns_8ns_16_1_1_U1_n_13;
  wire mul_8ns_8ns_16_1_1_U1_n_14;
  wire mul_8ns_8ns_16_1_1_U1_n_15;
  wire mul_8ns_8ns_16_1_1_U1_n_2;
  wire mul_8ns_8ns_16_1_1_U1_n_3;
  wire mul_8ns_8ns_16_1_1_U1_n_4;
  wire mul_8ns_8ns_16_1_1_U1_n_5;
  wire mul_8ns_8ns_16_1_1_U1_n_6;
  wire mul_8ns_8ns_16_1_1_U1_n_7;
  wire mul_8ns_8ns_16_1_1_U1_n_8;
  wire mul_8ns_8ns_16_1_1_U1_n_9;
  wire mul_8ns_8ns_16_1_1_U2_n_0;
  wire mul_8ns_8ns_16_1_1_U2_n_1;
  wire mul_8ns_8ns_16_1_1_U2_n_10;
  wire mul_8ns_8ns_16_1_1_U2_n_11;
  wire mul_8ns_8ns_16_1_1_U2_n_12;
  wire mul_8ns_8ns_16_1_1_U2_n_13;
  wire mul_8ns_8ns_16_1_1_U2_n_14;
  wire mul_8ns_8ns_16_1_1_U2_n_15;
  wire mul_8ns_8ns_16_1_1_U2_n_2;
  wire mul_8ns_8ns_16_1_1_U2_n_3;
  wire mul_8ns_8ns_16_1_1_U2_n_4;
  wire mul_8ns_8ns_16_1_1_U2_n_5;
  wire mul_8ns_8ns_16_1_1_U2_n_6;
  wire mul_8ns_8ns_16_1_1_U2_n_7;
  wire mul_8ns_8ns_16_1_1_U2_n_8;
  wire mul_8ns_8ns_16_1_1_U2_n_9;
  wire mul_8ns_8ns_16_1_1_U3_n_0;
  wire mul_8ns_8ns_16_1_1_U3_n_1;
  wire mul_8ns_8ns_16_1_1_U3_n_10;
  wire mul_8ns_8ns_16_1_1_U3_n_11;
  wire mul_8ns_8ns_16_1_1_U3_n_12;
  wire mul_8ns_8ns_16_1_1_U3_n_13;
  wire mul_8ns_8ns_16_1_1_U3_n_14;
  wire mul_8ns_8ns_16_1_1_U3_n_15;
  wire mul_8ns_8ns_16_1_1_U3_n_2;
  wire mul_8ns_8ns_16_1_1_U3_n_3;
  wire mul_8ns_8ns_16_1_1_U3_n_4;
  wire mul_8ns_8ns_16_1_1_U3_n_5;
  wire mul_8ns_8ns_16_1_1_U3_n_6;
  wire mul_8ns_8ns_16_1_1_U3_n_7;
  wire mul_8ns_8ns_16_1_1_U3_n_8;
  wire mul_8ns_8ns_16_1_1_U3_n_9;
  wire mul_8ns_8ns_16_1_1_U4_n_0;
  wire mul_8ns_8ns_16_1_1_U4_n_1;
  wire mul_8ns_8ns_16_1_1_U4_n_10;
  wire mul_8ns_8ns_16_1_1_U4_n_11;
  wire mul_8ns_8ns_16_1_1_U4_n_12;
  wire mul_8ns_8ns_16_1_1_U4_n_13;
  wire mul_8ns_8ns_16_1_1_U4_n_14;
  wire mul_8ns_8ns_16_1_1_U4_n_15;
  wire mul_8ns_8ns_16_1_1_U4_n_17;
  wire mul_8ns_8ns_16_1_1_U4_n_2;
  wire mul_8ns_8ns_16_1_1_U4_n_26;
  wire mul_8ns_8ns_16_1_1_U4_n_27;
  wire mul_8ns_8ns_16_1_1_U4_n_28;
  wire mul_8ns_8ns_16_1_1_U4_n_29;
  wire mul_8ns_8ns_16_1_1_U4_n_3;
  wire mul_8ns_8ns_16_1_1_U4_n_30;
  wire mul_8ns_8ns_16_1_1_U4_n_31;
  wire mul_8ns_8ns_16_1_1_U4_n_32;
  wire mul_8ns_8ns_16_1_1_U4_n_33;
  wire mul_8ns_8ns_16_1_1_U4_n_4;
  wire mul_8ns_8ns_16_1_1_U4_n_5;
  wire mul_8ns_8ns_16_1_1_U4_n_6;
  wire mul_8ns_8ns_16_1_1_U4_n_7;
  wire mul_8ns_8ns_16_1_1_U4_n_8;
  wire mul_8ns_8ns_16_1_1_U4_n_9;
  wire mul_8ns_8ns_16_1_1_U5_n_0;
  wire mul_8ns_8ns_16_1_1_U5_n_1;
  wire mul_8ns_8ns_16_1_1_U5_n_10;
  wire mul_8ns_8ns_16_1_1_U5_n_11;
  wire mul_8ns_8ns_16_1_1_U5_n_12;
  wire mul_8ns_8ns_16_1_1_U5_n_13;
  wire mul_8ns_8ns_16_1_1_U5_n_14;
  wire mul_8ns_8ns_16_1_1_U5_n_15;
  wire mul_8ns_8ns_16_1_1_U5_n_16;
  wire mul_8ns_8ns_16_1_1_U5_n_17;
  wire mul_8ns_8ns_16_1_1_U5_n_18;
  wire mul_8ns_8ns_16_1_1_U5_n_19;
  wire mul_8ns_8ns_16_1_1_U5_n_2;
  wire mul_8ns_8ns_16_1_1_U5_n_20;
  wire mul_8ns_8ns_16_1_1_U5_n_21;
  wire mul_8ns_8ns_16_1_1_U5_n_22;
  wire mul_8ns_8ns_16_1_1_U5_n_23;
  wire mul_8ns_8ns_16_1_1_U5_n_24;
  wire mul_8ns_8ns_16_1_1_U5_n_3;
  wire mul_8ns_8ns_16_1_1_U5_n_4;
  wire mul_8ns_8ns_16_1_1_U5_n_5;
  wire mul_8ns_8ns_16_1_1_U5_n_6;
  wire mul_8ns_8ns_16_1_1_U5_n_7;
  wire mul_8ns_8ns_16_1_1_U5_n_8;
  wire mul_8ns_8ns_16_1_1_U5_n_9;
  wire mul_8ns_8ns_16_1_1_U6_n_0;
  wire mul_8ns_8ns_16_1_1_U6_n_1;
  wire mul_8ns_8ns_16_1_1_U6_n_10;
  wire mul_8ns_8ns_16_1_1_U6_n_11;
  wire mul_8ns_8ns_16_1_1_U6_n_12;
  wire mul_8ns_8ns_16_1_1_U6_n_13;
  wire mul_8ns_8ns_16_1_1_U6_n_14;
  wire mul_8ns_8ns_16_1_1_U6_n_15;
  wire mul_8ns_8ns_16_1_1_U6_n_2;
  wire mul_8ns_8ns_16_1_1_U6_n_3;
  wire mul_8ns_8ns_16_1_1_U6_n_4;
  wire mul_8ns_8ns_16_1_1_U6_n_5;
  wire mul_8ns_8ns_16_1_1_U6_n_6;
  wire mul_8ns_8ns_16_1_1_U6_n_7;
  wire mul_8ns_8ns_16_1_1_U6_n_8;
  wire mul_8ns_8ns_16_1_1_U6_n_9;
  wire mul_8ns_8ns_16_1_1_U7_n_0;
  wire mul_8ns_8ns_16_1_1_U7_n_1;
  wire mul_8ns_8ns_16_1_1_U7_n_10;
  wire mul_8ns_8ns_16_1_1_U7_n_11;
  wire mul_8ns_8ns_16_1_1_U7_n_12;
  wire mul_8ns_8ns_16_1_1_U7_n_13;
  wire mul_8ns_8ns_16_1_1_U7_n_14;
  wire mul_8ns_8ns_16_1_1_U7_n_15;
  wire mul_8ns_8ns_16_1_1_U7_n_2;
  wire mul_8ns_8ns_16_1_1_U7_n_3;
  wire mul_8ns_8ns_16_1_1_U7_n_4;
  wire mul_8ns_8ns_16_1_1_U7_n_5;
  wire mul_8ns_8ns_16_1_1_U7_n_6;
  wire mul_8ns_8ns_16_1_1_U7_n_7;
  wire mul_8ns_8ns_16_1_1_U7_n_8;
  wire mul_8ns_8ns_16_1_1_U7_n_9;
  wire mul_8ns_8ns_16_1_1_U8_n_0;
  wire mul_8ns_8ns_16_1_1_U8_n_1;
  wire mul_8ns_8ns_16_1_1_U8_n_10;
  wire mul_8ns_8ns_16_1_1_U8_n_11;
  wire mul_8ns_8ns_16_1_1_U8_n_12;
  wire mul_8ns_8ns_16_1_1_U8_n_13;
  wire mul_8ns_8ns_16_1_1_U8_n_14;
  wire mul_8ns_8ns_16_1_1_U8_n_15;
  wire mul_8ns_8ns_16_1_1_U8_n_2;
  wire mul_8ns_8ns_16_1_1_U8_n_3;
  wire mul_8ns_8ns_16_1_1_U8_n_4;
  wire mul_8ns_8ns_16_1_1_U8_n_5;
  wire mul_8ns_8ns_16_1_1_U8_n_6;
  wire mul_8ns_8ns_16_1_1_U8_n_7;
  wire mul_8ns_8ns_16_1_1_U8_n_8;
  wire mul_8ns_8ns_16_1_1_U8_n_9;
  wire [7:0]p_1_in__0;
  wire [7:0]prod_address0;
  wire prod_ce0;
  wire [19:0]\^prod_d0 ;
  wire \prod_d0[0]_INST_0_i_1_n_0 ;
  wire \prod_d0[0]_INST_0_i_2_n_0 ;
  wire \prod_d0[0]_INST_0_i_3_n_0 ;
  wire \prod_d0[0]_INST_0_i_4_n_0 ;
  wire \prod_d0[0]_INST_0_n_0 ;
  wire \prod_d0[0]_INST_0_n_1 ;
  wire \prod_d0[0]_INST_0_n_2 ;
  wire \prod_d0[0]_INST_0_n_3 ;
  wire \prod_d0[12]_INST_0_i_1_n_0 ;
  wire \prod_d0[12]_INST_0_i_2_n_0 ;
  wire \prod_d0[12]_INST_0_i_3_n_0 ;
  wire \prod_d0[12]_INST_0_i_4_n_0 ;
  wire \prod_d0[12]_INST_0_n_0 ;
  wire \prod_d0[12]_INST_0_n_1 ;
  wire \prod_d0[12]_INST_0_n_2 ;
  wire \prod_d0[12]_INST_0_n_3 ;
  wire \prod_d0[16]_INST_0_i_1_n_0 ;
  wire \prod_d0[16]_INST_0_i_2_n_0 ;
  wire \prod_d0[16]_INST_0_i_3_n_0 ;
  wire \prod_d0[16]_INST_0_n_2 ;
  wire \prod_d0[16]_INST_0_n_3 ;
  wire \prod_d0[4]_INST_0_i_1_n_0 ;
  wire \prod_d0[4]_INST_0_i_2_n_0 ;
  wire \prod_d0[4]_INST_0_i_3_n_0 ;
  wire \prod_d0[4]_INST_0_i_4_n_0 ;
  wire \prod_d0[4]_INST_0_n_0 ;
  wire \prod_d0[4]_INST_0_n_1 ;
  wire \prod_d0[4]_INST_0_n_2 ;
  wire \prod_d0[4]_INST_0_n_3 ;
  wire \prod_d0[8]_INST_0_i_1_n_0 ;
  wire \prod_d0[8]_INST_0_i_2_n_0 ;
  wire \prod_d0[8]_INST_0_i_3_n_0 ;
  wire \prod_d0[8]_INST_0_i_4_n_0 ;
  wire \prod_d0[8]_INST_0_n_0 ;
  wire \prod_d0[8]_INST_0_n_1 ;
  wire \prod_d0[8]_INST_0_n_2 ;
  wire \prod_d0[8]_INST_0_n_3 ;
  wire reg_4240;
  wire reg_4280;
  wire reg_432;
  wire reg_4370;
  wire reg_4460;
  wire reg_4511;
  wire reg_4560;
  wire [3:0]trunc_ln16_reg_1336;
  wire [4:0]zext_ln16_47_reg_1404;
  wire [4:0]zext_ln16_48_reg_1374_reg;
  wire [4:0]zext_ln16_49_reg_1474;
  wire [3:3]\NLW_add_ln16_21_reg_1419_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:2]\NLW_prod_d0[16]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_prod_d0[16]_INST_0_O_UNCONNECTED ;

  assign a_address0[7:2] = \^a_address0 [7:2];
  assign a_address0[1] = \<const0> ;
  assign a_address0[0] = \^a_address0 [0];
  assign a_address1[7:2] = \^a_address0 [7:2];
  assign a_address1[1] = \<const0> ;
  assign a_address1[0] = \^a_address1 [0];
  assign a_ce1 = a_ce0;
  assign b_ce0 = a_ce0;
  assign prod_d0[31] = \<const0> ;
  assign prod_d0[30] = \<const0> ;
  assign prod_d0[29] = \<const0> ;
  assign prod_d0[28] = \<const0> ;
  assign prod_d0[27] = \<const0> ;
  assign prod_d0[26] = \<const0> ;
  assign prod_d0[25] = \<const0> ;
  assign prod_d0[24] = \<const0> ;
  assign prod_d0[23] = \<const0> ;
  assign prod_d0[22] = \<const0> ;
  assign prod_d0[21] = \<const0> ;
  assign prod_d0[20] = \<const0> ;
  assign prod_d0[19:0] = \^prod_d0 [19:0];
  assign prod_we0 = prod_ce0;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h001F001F111FFF1F)) 
    \a_address0[0]_INST_0 
       (.I0(\a_address0[0]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\^a_address0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \a_address0[0]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage6),
        .I1(ap_CS_fsm_pp0_stage7),
        .O(\a_address0[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \a_address1[0]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(\a_address1[0]_INST_0_i_1_n_0 ),
        .I5(\a_address0[0]_INST_0_i_1_n_0 ),
        .O(\^a_address1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \a_address1[0]_INST_0_i_1 
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .O(\a_address1[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008800A00088)) 
    \a_address1[2]_INST_0 
       (.I0(\a_address1[2]_INST_0_i_1_n_0 ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(ap_CS_fsm_pp0_stage7),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\^a_address0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF0F0FFF2)) 
    \a_address1[2]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_CS_fsm_pp0_stage6),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage5),
        .O(\a_address1[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDD55555555)) 
    \a_address1[3]_INST_0 
       (.I0(\a_address1[3]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage7),
        .I2(ap_CS_fsm_pp0_stage5),
        .I3(ap_CS_fsm_pp0_stage6),
        .I4(flow_control_loop_pipe_U_n_9),
        .I5(ap_enable_reg_pp0_iter0),
        .O(\^a_address0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \a_address1[3]_INST_0_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(\a_address1[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \a_address1[4]_INST_0 
       (.I0(data1[4]),
        .I1(\a_address1[7]_INST_0_i_1_n_0 ),
        .I2(i2_fu_118_reg[0]),
        .I3(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .I4(\a_address1[7]_INST_0_i_3_n_0 ),
        .O(\^a_address0 [4]));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \a_address1[5]_INST_0 
       (.I0(data1[5]),
        .I1(\a_address1[7]_INST_0_i_1_n_0 ),
        .I2(i2_fu_118_reg[0]),
        .I3(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .I4(i2_fu_118_reg[1]),
        .I5(\a_address1[7]_INST_0_i_3_n_0 ),
        .O(\^a_address0 [5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \a_address1[6]_INST_0 
       (.I0(data1[6]),
        .I1(\a_address1[7]_INST_0_i_1_n_0 ),
        .I2(i_fu_512_p3[2]),
        .I3(\a_address1[7]_INST_0_i_3_n_0 ),
        .O(\^a_address0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \a_address1[6]_INST_0_i_1 
       (.I0(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .I1(i2_fu_118_reg[0]),
        .I2(i2_fu_118_reg[1]),
        .I3(i2_fu_118_reg[2]),
        .O(i_fu_512_p3[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \a_address1[7]_INST_0 
       (.I0(data1[7]),
        .I1(\a_address1[7]_INST_0_i_1_n_0 ),
        .I2(i_fu_512_p3[3]),
        .I3(\a_address1[7]_INST_0_i_3_n_0 ),
        .O(\^a_address0 [7]));
  LUT6 #(
    .INIT(64'hAAAAAAA8FFFFFFFF)) 
    \a_address1[7]_INST_0_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\b_address0[7]_INST_0_i_2_n_0 ),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\a_address1[3]_INST_0_i_1_n_0 ),
        .O(\a_address1[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \a_address1[7]_INST_0_i_2 
       (.I0(i2_fu_118_reg[1]),
        .I1(i2_fu_118_reg[2]),
        .I2(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .I3(i2_fu_118_reg[0]),
        .I4(i2_fu_118_reg[3]),
        .O(i_fu_512_p3[3]));
  LUT6 #(
    .INIT(64'h001F001F111FFF1F)) 
    \a_address1[7]_INST_0_i_3 
       (.I0(flow_control_loop_pipe_U_n_10),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\a_address1[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln16_10_reg_1789[16]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage6),
        .O(add_ln16_10_reg_17890));
  FDRE \add_ln16_10_reg_1789_reg[0] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16),
        .Q(add_ln16_10_reg_1789[0]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[10] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6),
        .Q(add_ln16_10_reg_1789[10]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[11] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5),
        .Q(add_ln16_10_reg_1789[11]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[12] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4),
        .Q(add_ln16_10_reg_1789[12]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[13] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3),
        .Q(add_ln16_10_reg_1789[13]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[14] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2),
        .Q(add_ln16_10_reg_1789[14]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[15] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1),
        .Q(add_ln16_10_reg_1789[15]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[16] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0),
        .Q(add_ln16_10_reg_1789[16]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15),
        .Q(add_ln16_10_reg_1789[1]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14),
        .Q(add_ln16_10_reg_1789[2]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[3] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13),
        .Q(add_ln16_10_reg_1789[3]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[4] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12),
        .Q(add_ln16_10_reg_1789[4]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[5] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11),
        .Q(add_ln16_10_reg_1789[5]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[6] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10),
        .Q(add_ln16_10_reg_1789[6]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[7] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9),
        .Q(add_ln16_10_reg_1789[7]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[8] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8),
        .Q(add_ln16_10_reg_1789[8]),
        .R(1'b0));
  FDRE \add_ln16_10_reg_1789_reg[9] 
       (.C(ap_clk),
        .CE(add_ln16_10_reg_17890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7),
        .Q(add_ln16_10_reg_1789[9]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[0]),
        .Q(add_ln16_13_reg_1794[0]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[10]),
        .Q(add_ln16_13_reg_1794[10]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[11]),
        .Q(add_ln16_13_reg_1794[11]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[12]),
        .Q(add_ln16_13_reg_1794[12]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[13]),
        .Q(add_ln16_13_reg_1794[13]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[14]),
        .Q(add_ln16_13_reg_1794[14]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[15]),
        .Q(add_ln16_13_reg_1794[15]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[16]),
        .Q(add_ln16_13_reg_1794[16]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[17]),
        .Q(add_ln16_13_reg_1794[17]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[18]),
        .Q(add_ln16_13_reg_1794[18]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[1]),
        .Q(add_ln16_13_reg_1794[1]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[2]),
        .Q(add_ln16_13_reg_1794[2]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[3]),
        .Q(add_ln16_13_reg_1794[3]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[4]),
        .Q(add_ln16_13_reg_1794[4]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[5]),
        .Q(add_ln16_13_reg_1794[5]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[6]),
        .Q(add_ln16_13_reg_1794[6]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[7]),
        .Q(add_ln16_13_reg_1794[7]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[8]),
        .Q(add_ln16_13_reg_1794[8]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_1794_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(add_ln16_13_fu_1200_p2[9]),
        .Q(add_ln16_13_reg_1794[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_17_reg_1384[4]_i_1 
       (.I0(bit_sel_reg_1331),
        .O(add_ln16_s_fu_973_p3));
  FDRE \add_ln16_17_reg_1384_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(add_ln16_s_fu_973_p3),
        .Q(add_ln16_17_reg_1384),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[0] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16),
        .Q(add_ln16_1_reg_1679[0]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[10] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6),
        .Q(add_ln16_1_reg_1679[10]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[11] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5),
        .Q(add_ln16_1_reg_1679[11]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[12] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4),
        .Q(add_ln16_1_reg_1679[12]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[13] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3),
        .Q(add_ln16_1_reg_1679[13]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[14] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2),
        .Q(add_ln16_1_reg_1679[14]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[15] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1),
        .Q(add_ln16_1_reg_1679[15]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[16] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0),
        .Q(add_ln16_1_reg_1679[16]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[1] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15),
        .Q(add_ln16_1_reg_1679[1]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[2] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14),
        .Q(add_ln16_1_reg_1679[2]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[3] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13),
        .Q(add_ln16_1_reg_1679[3]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[4] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12),
        .Q(add_ln16_1_reg_1679[4]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[5] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11),
        .Q(add_ln16_1_reg_1679[5]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[6] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10),
        .Q(add_ln16_1_reg_1679[6]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[7] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9),
        .Q(add_ln16_1_reg_1679[7]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[8] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8),
        .Q(add_ln16_1_reg_1679[8]),
        .R(1'b0));
  FDRE \add_ln16_1_reg_1679_reg[9] 
       (.C(ap_clk),
        .CE(reg_4511),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7),
        .Q(add_ln16_1_reg_1679[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_21_reg_1419[7]_i_2 
       (.I0(data1[4]),
        .I1(bit_sel_reg_1331),
        .O(\add_ln16_21_reg_1419[7]_i_2_n_0 ));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(zext_ln16_47_reg_1404[0]),
        .Q(prod_address0[0]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(zext_ln16_47_reg_1404[1]),
        .Q(prod_address0[1]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(zext_ln16_47_reg_1404[2]),
        .Q(prod_address0[2]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(zext_ln16_47_reg_1404[3]),
        .Q(prod_address0[3]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_reg_1419[4]),
        .Q(prod_address0[4]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_reg_1419[5]),
        .Q(prod_address0[5]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_reg_1419[6]),
        .Q(prod_address0[6]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_reg_1419[7]),
        .Q(prod_address0[7]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_fu_629_p2[4]),
        .Q(add_ln16_21_reg_1419[4]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_fu_629_p2[5]),
        .Q(add_ln16_21_reg_1419[5]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_fu_629_p2[6]),
        .Q(add_ln16_21_reg_1419[6]),
        .R(1'b0));
  FDRE \add_ln16_21_reg_1419_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_21_fu_629_p2[7]),
        .Q(add_ln16_21_reg_1419[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln16_21_reg_1419_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\NLW_add_ln16_21_reg_1419_reg[7]_i_1_CO_UNCONNECTED [3],\add_ln16_21_reg_1419_reg[7]_i_1_n_1 ,\add_ln16_21_reg_1419_reg[7]_i_1_n_2 ,\add_ln16_21_reg_1419_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data1[4]}),
        .O(add_ln16_21_fu_629_p2),
        .S({data1[7:5],\add_ln16_21_reg_1419[7]_i_2_n_0 }));
  FDRE \add_ln16_2_reg_1729_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[0]),
        .Q(add_ln16_2_reg_1729[0]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[10]),
        .Q(add_ln16_2_reg_1729[10]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[11]),
        .Q(add_ln16_2_reg_1729[11]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[12]),
        .Q(add_ln16_2_reg_1729[12]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[13]),
        .Q(add_ln16_2_reg_1729[13]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[14]),
        .Q(add_ln16_2_reg_1729[14]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[15]),
        .Q(add_ln16_2_reg_1729[15]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[16]),
        .Q(add_ln16_2_reg_1729[16]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[17]),
        .Q(add_ln16_2_reg_1729[17]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[1]),
        .Q(add_ln16_2_reg_1729[1]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[2]),
        .Q(add_ln16_2_reg_1729[2]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[3]),
        .Q(add_ln16_2_reg_1729[3]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[4]),
        .Q(add_ln16_2_reg_1729[4]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[5]),
        .Q(add_ln16_2_reg_1729[5]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[6]),
        .Q(add_ln16_2_reg_1729[6]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[7]),
        .Q(add_ln16_2_reg_1729[7]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[8]),
        .Q(add_ln16_2_reg_1729[8]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_1729_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(add_ln16_2_fu_1060_p2[9]),
        .Q(add_ln16_2_reg_1729[9]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[0] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16),
        .Q(add_ln16_3_reg_1709[0]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[10] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6),
        .Q(add_ln16_3_reg_1709[10]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[11] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5),
        .Q(add_ln16_3_reg_1709[11]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[12] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4),
        .Q(add_ln16_3_reg_1709[12]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[13] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3),
        .Q(add_ln16_3_reg_1709[13]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[14] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2),
        .Q(add_ln16_3_reg_1709[14]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[15] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1),
        .Q(add_ln16_3_reg_1709[15]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[16] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0),
        .Q(add_ln16_3_reg_1709[16]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[1] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15),
        .Q(add_ln16_3_reg_1709[1]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[2] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14),
        .Q(add_ln16_3_reg_1709[2]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[3] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13),
        .Q(add_ln16_3_reg_1709[3]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[4] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12),
        .Q(add_ln16_3_reg_1709[4]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[5] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11),
        .Q(add_ln16_3_reg_1709[5]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[6] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10),
        .Q(add_ln16_3_reg_1709[6]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[7] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9),
        .Q(add_ln16_3_reg_1709[7]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[8] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8),
        .Q(add_ln16_3_reg_1709[8]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_1709_reg[9] 
       (.C(ap_clk),
        .CE(a_load_12_reg_16890),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7),
        .Q(add_ln16_3_reg_1709[9]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[0]),
        .Q(add_ln16_6_reg_1749[0]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[10]),
        .Q(add_ln16_6_reg_1749[10]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[11]),
        .Q(add_ln16_6_reg_1749[11]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[12]),
        .Q(add_ln16_6_reg_1749[12]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[13]),
        .Q(add_ln16_6_reg_1749[13]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[14]),
        .Q(add_ln16_6_reg_1749[14]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[15]),
        .Q(add_ln16_6_reg_1749[15]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[16]),
        .Q(add_ln16_6_reg_1749[16]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[17]),
        .Q(add_ln16_6_reg_1749[17]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[18]),
        .Q(add_ln16_6_reg_1749[18]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[1]),
        .Q(add_ln16_6_reg_1749[1]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[2]),
        .Q(add_ln16_6_reg_1749[2]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[3]),
        .Q(add_ln16_6_reg_1749[3]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[4]),
        .Q(add_ln16_6_reg_1749[4]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[5]),
        .Q(add_ln16_6_reg_1749[5]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[6]),
        .Q(add_ln16_6_reg_1749[6]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[7]),
        .Q(add_ln16_6_reg_1749[7]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[8]),
        .Q(add_ln16_6_reg_1749[8]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_1749_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage3),
        .D(add_ln16_6_fu_1108_p2[9]),
        .Q(add_ln16_6_reg_1749[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln16_7_reg_1769[16]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage4),
        .O(add_ln16_7_reg_17690));
  FDRE \add_ln16_7_reg_1769_reg[0] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16),
        .Q(add_ln16_7_reg_1769[0]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[10] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6),
        .Q(add_ln16_7_reg_1769[10]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[11] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5),
        .Q(add_ln16_7_reg_1769[11]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[12] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4),
        .Q(add_ln16_7_reg_1769[12]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[13] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3),
        .Q(add_ln16_7_reg_1769[13]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[14] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2),
        .Q(add_ln16_7_reg_1769[14]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[15] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1),
        .Q(add_ln16_7_reg_1769[15]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[16] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0),
        .Q(add_ln16_7_reg_1769[16]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15),
        .Q(add_ln16_7_reg_1769[1]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14),
        .Q(add_ln16_7_reg_1769[2]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[3] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13),
        .Q(add_ln16_7_reg_1769[3]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[4] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12),
        .Q(add_ln16_7_reg_1769[4]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[5] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11),
        .Q(add_ln16_7_reg_1769[5]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[6] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10),
        .Q(add_ln16_7_reg_1769[6]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[7] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9),
        .Q(add_ln16_7_reg_1769[7]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[8] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8),
        .Q(add_ln16_7_reg_1769[8]),
        .R(1'b0));
  FDRE \add_ln16_7_reg_1769_reg[9] 
       (.C(ap_clk),
        .CE(add_ln16_7_reg_17690),
        .D(mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7),
        .Q(add_ln16_7_reg_1769[9]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[0]),
        .Q(add_ln16_9_reg_1779[0]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[10]),
        .Q(add_ln16_9_reg_1779[10]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[11]),
        .Q(add_ln16_9_reg_1779[11]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[12]),
        .Q(add_ln16_9_reg_1779[12]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[13]),
        .Q(add_ln16_9_reg_1779[13]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[14]),
        .Q(add_ln16_9_reg_1779[14]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[15]),
        .Q(add_ln16_9_reg_1779[15]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[16]),
        .Q(add_ln16_9_reg_1779[16]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[17]),
        .Q(add_ln16_9_reg_1779[17]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[1]),
        .Q(add_ln16_9_reg_1779[1]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[2]),
        .Q(add_ln16_9_reg_1779[2]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[3]),
        .Q(add_ln16_9_reg_1779[3]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[4]),
        .Q(add_ln16_9_reg_1779[4]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[5]),
        .Q(add_ln16_9_reg_1779[5]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[6]),
        .Q(add_ln16_9_reg_1779[6]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[7]),
        .Q(add_ln16_9_reg_1779[7]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[8]),
        .Q(add_ln16_9_reg_1779[8]),
        .R(1'b0));
  FDRE \add_ln16_9_reg_1779_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage5),
        .D(add_ln16_9_fu_1159_p2[9]),
        .Q(add_ln16_9_reg_1779[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAFAAABAAAAAAAA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage7),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(icmp_ln10_reg_1635_pp0_iter1_reg),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0E0F0F0F0E0E0E0E)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_start),
        .I2(b_ce0_INST_0_i_1_n_0),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(icmp_ln10_reg_1635_pp0_iter1_reg),
        .I5(ap_enable_reg_pp0_iter2),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_pp0_stage0),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage2),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage3),
        .Q(ap_CS_fsm_pp0_stage4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage4),
        .Q(ap_CS_fsm_pp0_stage5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage5),
        .Q(ap_CS_fsm_pp0_stage6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage6),
        .Q(ap_CS_fsm_pp0_stage7),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_done_INST_0
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(ap_done));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage7),
        .I4(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00454040)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage7),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hEF00FF00FF00FF00)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln10_reg_1635_pp0_iter1_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_2
       (.I0(indvar_flatten1_fu_114_reg[7]),
        .I1(ap_ready_int),
        .I2(indvar_flatten1_fu_114_reg[6]),
        .I3(flow_control_loop_pipe_U_n_1),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(ap_loop_exit_ready_pp0_iter1_reg),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF00BF0FBF000000)) 
    ap_loop_exit_ready_pp0_iter2_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(ap_loop_exit_ready_pp0_iter2_reg),
        .O(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    ap_loop_exit_ready_pp0_iter2_reg_i_2
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln10_reg_1635_pp0_iter1_reg),
        .O(ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ap_ready_INST_0
       (.I0(indvar_flatten1_fu_114_reg[7]),
        .I1(ap_ready_int),
        .I2(indvar_flatten1_fu_114_reg[6]),
        .I3(flow_control_loop_pipe_U_n_1),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \b_address0[0]_INST_0 
       (.I0(\b_address0[3]_INST_0_i_1_n_0 ),
        .I1(zext_ln16_48_reg_1374_reg[0]),
        .I2(\b_address0[4]_INST_0_i_3_n_0 ),
        .I3(zext_ln16_49_reg_1474[0]),
        .I4(trunc_ln16_reg_1336[0]),
        .I5(\b_address0[3]_INST_0_i_2_n_0 ),
        .O(b_address0[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \b_address0[1]_INST_0 
       (.I0(\b_address0[3]_INST_0_i_1_n_0 ),
        .I1(zext_ln16_48_reg_1374_reg[1]),
        .I2(\b_address0[4]_INST_0_i_3_n_0 ),
        .I3(zext_ln16_49_reg_1474[1]),
        .I4(trunc_ln16_reg_1336[1]),
        .I5(\b_address0[3]_INST_0_i_2_n_0 ),
        .O(b_address0[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \b_address0[2]_INST_0 
       (.I0(\b_address0[3]_INST_0_i_1_n_0 ),
        .I1(zext_ln16_48_reg_1374_reg[2]),
        .I2(\b_address0[4]_INST_0_i_3_n_0 ),
        .I3(zext_ln16_49_reg_1474[2]),
        .I4(trunc_ln16_reg_1336[2]),
        .I5(\b_address0[3]_INST_0_i_2_n_0 ),
        .O(b_address0[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \b_address0[3]_INST_0 
       (.I0(\b_address0[3]_INST_0_i_1_n_0 ),
        .I1(zext_ln16_48_reg_1374_reg[3]),
        .I2(\b_address0[4]_INST_0_i_3_n_0 ),
        .I3(zext_ln16_49_reg_1474[3]),
        .I4(trunc_ln16_reg_1336[3]),
        .I5(\b_address0[3]_INST_0_i_2_n_0 ),
        .O(b_address0[3]));
  LUT6 #(
    .INIT(64'h1010101000100000)) 
    \b_address0[3]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage6),
        .I1(ap_CS_fsm_pp0_stage7),
        .I2(\a_address1[0]_INST_0_i_1_n_0 ),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(ap_CS_fsm_pp0_stage5),
        .O(\b_address0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555F7FFFFFFFF)) 
    \b_address0[3]_INST_0_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_CS_fsm_pp0_stage4),
        .I3(ap_CS_fsm_pp0_stage5),
        .I4(\a_address0[0]_INST_0_i_1_n_0 ),
        .I5(\a_address1[3]_INST_0_i_1_n_0 ),
        .O(\b_address0[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEFEEEFEEEF)) 
    \b_address0[4]_INST_0 
       (.I0(\b_address0[4]_INST_0_i_1_n_0 ),
        .I1(\b_address0[4]_INST_0_i_2_n_0 ),
        .I2(\a_address1[3]_INST_0_i_1_n_0 ),
        .I3(bit_sel_reg_1331),
        .I4(\b_address0[4]_INST_0_i_3_n_0 ),
        .I5(zext_ln16_49_reg_1474[4]),
        .O(b_address0[4]));
  LUT6 #(
    .INIT(64'h0A080A00000F0000)) 
    \b_address0[4]_INST_0_i_1 
       (.I0(\a_address1[0]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(\b_address0[7]_INST_0_i_2_n_0 ),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(add_ln16_17_reg_1384),
        .I5(bit_sel_reg_1331),
        .O(\b_address0[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808080FF8080FFFF)) 
    \b_address0[4]_INST_0_i_2 
       (.I0(ap_CS_fsm_pp0_stage5),
        .I1(zext_ln16_48_reg_1374_reg[4]),
        .I2(\b_address0[4]_INST_0_i_4_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(bit_sel_reg_1331),
        .I5(flow_control_loop_pipe_U_n_10),
        .O(\b_address0[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E0EEE000E000E0)) 
    \b_address0[4]_INST_0_i_3 
       (.I0(ap_CS_fsm_pp0_stage7),
        .I1(ap_CS_fsm_pp0_stage6),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_start),
        .O(\b_address0[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \b_address0[4]_INST_0_i_4 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_start),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(ap_CS_fsm_pp0_stage6),
        .O(\b_address0[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF999F111)) 
    \b_address0[5]_INST_0 
       (.I0(\a_address1[3]_INST_0_i_1_n_0 ),
        .I1(bit_sel_reg_1331),
        .I2(ap_CS_fsm_pp0_stage7),
        .I3(\a_address1[0]_INST_0_i_1_n_0 ),
        .I4(\b_address0[5]_INST_0_i_1_n_0 ),
        .I5(\b_address0[5]_INST_0_i_2_n_0 ),
        .O(b_address0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \b_address0[5]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage6),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_CS_fsm_pp0_stage4),
        .I3(ap_CS_fsm_pp0_stage3),
        .O(\b_address0[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \b_address0[5]_INST_0_i_2 
       (.I0(bit_sel_reg_1331),
        .I1(\b_address0[5]_INST_0_i_3_n_0 ),
        .I2(\a_address1[0]_INST_0_i_1_n_0 ),
        .I3(\b_address0[5]_INST_0_i_4_n_0 ),
        .I4(zext_ln16_48_reg_1374_reg[4]),
        .I5(flow_control_loop_pipe_U_n_11),
        .O(\b_address0[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \b_address0[5]_INST_0_i_3 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_start),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .O(\b_address0[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \b_address0[5]_INST_0_i_4 
       (.I0(ap_CS_fsm_pp0_stage5),
        .I1(ap_CS_fsm_pp0_stage6),
        .O(\b_address0[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFABAAAAFFFF)) 
    \b_address0[6]_INST_0 
       (.I0(\b_address0[6]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage5),
        .I3(\a_address0[0]_INST_0_i_1_n_0 ),
        .I4(bit_sel_reg_1331),
        .I5(\a_address1[3]_INST_0_i_1_n_0 ),
        .O(b_address0[6]));
  LUT6 #(
    .INIT(64'h002F002F222FFF2F)) 
    \b_address0[6]_INST_0_i_1 
       (.I0(flow_control_loop_pipe_U_n_9),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\b_address0[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF32FF00FF00)) 
    \b_address0[7]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(ap_CS_fsm_pp0_stage4),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(\b_address0[7]_INST_0_i_1_n_0 ),
        .I4(\b_address0[7]_INST_0_i_2_n_0 ),
        .I5(\a_address1[0]_INST_0_i_1_n_0 ),
        .O(b_address0[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \b_address0[7]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(bit_sel_reg_1331),
        .O(\b_address0[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \b_address0[7]_INST_0_i_2 
       (.I0(ap_CS_fsm_pp0_stage7),
        .I1(ap_CS_fsm_pp0_stage6),
        .I2(ap_CS_fsm_pp0_stage5),
        .O(\b_address0[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAFFFE)) 
    \b_address1[5]_INST_0 
       (.I0(\b_address1[5]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_CS_fsm_pp0_stage6),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(zext_ln16_49_reg_1474[4]),
        .O(b_address1[5]));
  LUT6 #(
    .INIT(64'h00000000555500FC)) 
    \b_address1[5]_INST_0_i_1 
       (.I0(zext_ln16_47_reg_1404[4]),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(bit_sel_reg_1331),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(ap_CS_fsm_pp0_stage7),
        .O(\b_address1[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00EE00AA00FA)) 
    \b_address1[6]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage5),
        .I1(zext_ln16_47_reg_1404[4]),
        .I2(\b_address1[6]_INST_0_i_1_n_0 ),
        .I3(\a_address0[0]_INST_0_i_1_n_0 ),
        .I4(ap_CS_fsm_pp0_stage4),
        .I5(ap_CS_fsm_pp0_stage3),
        .O(b_address1[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \b_address1[6]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(bit_sel_reg_1331),
        .I2(ap_CS_fsm_pp0_stage2),
        .O(\b_address1[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000008F)) 
    \b_address1[7]_INST_0 
       (.I0(bit_sel_reg_1331),
        .I1(\b_address1[7]_INST_0_i_1_n_0 ),
        .I2(flow_control_loop_pipe_U_n_11),
        .I3(ap_CS_fsm_pp0_stage5),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(ap_CS_fsm_pp0_stage6),
        .O(b_address1[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \b_address1[7]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage4),
        .O(\b_address1[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFC0A0C0)) 
    b_ce0_INST_0
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(b_ce0_INST_0_i_1_n_0),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .O(a_ce0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    b_ce0_INST_0_i_1
       (.I0(\a_address0[0]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(b_ce0_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    b_ce1_INST_0
       (.I0(ap_start),
        .I1(b_ce0_INST_0_i_1_n_0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(b_ce1));
  FDRE \bit_sel_reg_1331_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(j3_fu_122[4]),
        .Q(bit_sel_reg_1331),
        .R(flow_control_loop_pipe_U_n_12));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \empty_reg_1341[0]_i_1 
       (.I0(i2_fu_118_reg[0]),
        .I1(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .O(i_fu_512_p3[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \empty_reg_1341[1]_i_1 
       (.I0(i2_fu_118_reg[0]),
        .I1(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .I2(i2_fu_118_reg[1]),
        .O(i_fu_512_p3[1]));
  FDRE \empty_reg_1341_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(i_fu_512_p3[0]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \empty_reg_1341_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(i_fu_512_p3[1]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \empty_reg_1341_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(i_fu_512_p3[2]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \empty_reg_1341_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(i_fu_512_p3[3]),
        .Q(data1[7]),
        .R(1'b0));
  bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe flow_control_loop_pipe_U
       (.Q({ap_CS_fsm_pp0_stage7,ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage4,ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .SR(i2_fu_118),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_U_n_12),
        .\ap_CS_fsm_reg[3] (flow_control_loop_pipe_U_n_9),
        .\ap_CS_fsm_reg[4] (flow_control_loop_pipe_U_n_10),
        .\ap_CS_fsm_reg[4]_0 (flow_control_loop_pipe_U_n_11),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init_reg_0(indvar_flatten1_fu_114_reg),
        .ap_ready_int(ap_ready_int),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address1(b_address1[4:0]),
        .\b_address1[4] (zext_ln16_49_reg_1474),
        .\b_address1[4]_0 (j3_fu_122),
        .bit_sel_reg_1331(bit_sel_reg_1331),
        .icmp_ln10_reg_1635(icmp_ln10_reg_1635),
        .\icmp_ln124_reg_413_reg[0] (\icmp_ln124_reg_413_reg_n_0_[0] ),
        .icmp_ln12_reg_1630(icmp_ln12_reg_1630),
        .\icmp_ln12_reg_1630_reg[0] (flow_control_loop_pipe_U_n_0),
        .\indvar_flatten1_fu_114_reg[4] (flow_control_loop_pipe_U_n_1),
        .trunc_ln16_reg_1336(trunc_ln16_reg_1336),
        .zext_ln16_47_reg_1404(zext_ln16_47_reg_1404));
  LUT4 #(
    .INIT(16'hE200)) 
    \i2_fu_118[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_start),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(\i2_fu_118[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i2_fu_118_reg[0] 
       (.C(ap_clk),
        .CE(\i2_fu_118[3]_i_1_n_0 ),
        .D(i_fu_512_p3[0]),
        .Q(i2_fu_118_reg[0]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \i2_fu_118_reg[1] 
       (.C(ap_clk),
        .CE(\i2_fu_118[3]_i_1_n_0 ),
        .D(i_fu_512_p3[1]),
        .Q(i2_fu_118_reg[1]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \i2_fu_118_reg[2] 
       (.C(ap_clk),
        .CE(\i2_fu_118[3]_i_1_n_0 ),
        .D(i_fu_512_p3[2]),
        .Q(i2_fu_118_reg[2]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \i2_fu_118_reg[3] 
       (.C(ap_clk),
        .CE(\i2_fu_118[3]_i_1_n_0 ),
        .D(i_fu_512_p3[3]),
        .Q(i2_fu_118_reg[3]),
        .R(i2_fu_118));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \icmp_ln10_reg_1635[0]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[6]),
        .I1(flow_control_loop_pipe_U_n_1),
        .I2(indvar_flatten1_fu_114_reg[7]),
        .O(icmp_ln10_fu_920_p2));
  FDRE \icmp_ln10_reg_1635_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(icmp_ln10_reg_1635),
        .Q(icmp_ln10_reg_1635_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln10_reg_1635_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage7),
        .D(icmp_ln10_fu_920_p2),
        .Q(icmp_ln10_reg_1635),
        .R(1'b0));
  FDRE \icmp_ln124_reg_413_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_0),
        .Q(\icmp_ln124_reg_413_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
    \icmp_ln12_reg_1630[0]_i_1 
       (.I0(icmp_ln12_fu_914_p2),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_start),
        .I4(ap_CS_fsm_pp0_stage7),
        .I5(icmp_ln12_reg_1630),
        .O(\icmp_ln12_reg_1630[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \icmp_ln12_reg_1630[0]_i_2 
       (.I0(trunc_ln16_reg_1336[0]),
        .I1(trunc_ln16_reg_1336[2]),
        .I2(trunc_ln16_reg_1336[3]),
        .I3(trunc_ln16_reg_1336[1]),
        .I4(bit_sel_reg_1331),
        .O(icmp_ln12_fu_914_p2));
  FDRE \icmp_ln12_reg_1630_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln12_reg_1630[0]_i_1_n_0 ),
        .Q(icmp_ln12_reg_1630),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten1_fu_114[0]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[0]),
        .O(add_ln10_1_fu_908_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten1_fu_114[1]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[0]),
        .I1(indvar_flatten1_fu_114_reg[1]),
        .O(add_ln10_1_fu_908_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \indvar_flatten1_fu_114[2]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[1]),
        .I1(indvar_flatten1_fu_114_reg[0]),
        .I2(indvar_flatten1_fu_114_reg[2]),
        .O(add_ln10_1_fu_908_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \indvar_flatten1_fu_114[3]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[2]),
        .I1(indvar_flatten1_fu_114_reg[0]),
        .I2(indvar_flatten1_fu_114_reg[1]),
        .I3(indvar_flatten1_fu_114_reg[3]),
        .O(add_ln10_1_fu_908_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \indvar_flatten1_fu_114[4]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[3]),
        .I1(indvar_flatten1_fu_114_reg[1]),
        .I2(indvar_flatten1_fu_114_reg[0]),
        .I3(indvar_flatten1_fu_114_reg[2]),
        .I4(indvar_flatten1_fu_114_reg[4]),
        .O(add_ln10_1_fu_908_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \indvar_flatten1_fu_114[5]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[4]),
        .I1(indvar_flatten1_fu_114_reg[2]),
        .I2(indvar_flatten1_fu_114_reg[0]),
        .I3(indvar_flatten1_fu_114_reg[1]),
        .I4(indvar_flatten1_fu_114_reg[3]),
        .I5(indvar_flatten1_fu_114_reg[5]),
        .O(add_ln10_1_fu_908_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten1_fu_114[6]_i_1 
       (.I0(flow_control_loop_pipe_U_n_1),
        .I1(indvar_flatten1_fu_114_reg[6]),
        .O(add_ln10_1_fu_908_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \indvar_flatten1_fu_114[7]_i_1 
       (.I0(indvar_flatten1_fu_114_reg[6]),
        .I1(flow_control_loop_pipe_U_n_1),
        .I2(indvar_flatten1_fu_114_reg[7]),
        .O(add_ln10_1_fu_908_p2[7]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[0]),
        .Q(indvar_flatten1_fu_114_reg[0]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[1]),
        .Q(indvar_flatten1_fu_114_reg[1]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[2]),
        .Q(indvar_flatten1_fu_114_reg[2]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[3]),
        .Q(indvar_flatten1_fu_114_reg[3]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[4]),
        .Q(indvar_flatten1_fu_114_reg[4]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[5] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[5]),
        .Q(indvar_flatten1_fu_114_reg[5]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[6] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[6]),
        .Q(indvar_flatten1_fu_114_reg[6]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten1_fu_114_reg[7] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(add_ln10_1_fu_908_p2[7]),
        .Q(indvar_flatten1_fu_114_reg[7]),
        .R(i2_fu_118));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j3_fu_122[0]_i_1 
       (.I0(trunc_ln16_reg_1336[0]),
        .O(j_fu_903_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j3_fu_122[1]_i_1 
       (.I0(trunc_ln16_reg_1336[0]),
        .I1(trunc_ln16_reg_1336[1]),
        .O(j_fu_903_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j3_fu_122[2]_i_1 
       (.I0(trunc_ln16_reg_1336[1]),
        .I1(trunc_ln16_reg_1336[0]),
        .I2(trunc_ln16_reg_1336[2]),
        .O(j_fu_903_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \j3_fu_122[3]_i_1 
       (.I0(trunc_ln16_reg_1336[0]),
        .I1(trunc_ln16_reg_1336[1]),
        .I2(trunc_ln16_reg_1336[2]),
        .I3(trunc_ln16_reg_1336[3]),
        .O(j_fu_903_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j3_fu_122[4]_i_2 
       (.I0(trunc_ln16_reg_1336[2]),
        .I1(trunc_ln16_reg_1336[3]),
        .I2(trunc_ln16_reg_1336[0]),
        .I3(trunc_ln16_reg_1336[1]),
        .I4(bit_sel_reg_1331),
        .O(j_fu_903_p2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \j3_fu_122_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(j_fu_903_p2[0]),
        .Q(j3_fu_122[0]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \j3_fu_122_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(j_fu_903_p2[1]),
        .Q(j3_fu_122[1]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \j3_fu_122_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(j_fu_903_p2[2]),
        .Q(j3_fu_122[2]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \j3_fu_122_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(j_fu_903_p2[3]),
        .Q(j3_fu_122[3]),
        .R(i2_fu_118));
  FDRE #(
    .INIT(1'b0)) 
    \j3_fu_122_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(j_fu_903_p2[4]),
        .Q(j3_fu_122[4]),
        .R(i2_fu_118));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1 mac_muladd_8ns_8ns_16ns_17_4_1_U10
       (.A({mul_8ns_8ns_16_1_1_U4_n_26,mul_8ns_8ns_16_1_1_U4_n_27,mul_8ns_8ns_16_1_1_U4_n_28,mul_8ns_8ns_16_1_1_U4_n_29,mul_8ns_8ns_16_1_1_U4_n_30,mul_8ns_8ns_16_1_1_U4_n_31,mul_8ns_8ns_16_1_1_U4_n_32,mul_8ns_8ns_16_1_1_U4_n_33}),
        .B(p_1_in__0),
        .D({mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15,mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16}),
        .P({mul_8ns_8ns_16_1_1_U2_n_0,mul_8ns_8ns_16_1_1_U2_n_1,mul_8ns_8ns_16_1_1_U2_n_2,mul_8ns_8ns_16_1_1_U2_n_3,mul_8ns_8ns_16_1_1_U2_n_4,mul_8ns_8ns_16_1_1_U2_n_5,mul_8ns_8ns_16_1_1_U2_n_6,mul_8ns_8ns_16_1_1_U2_n_7,mul_8ns_8ns_16_1_1_U2_n_8,mul_8ns_8ns_16_1_1_U2_n_9,mul_8ns_8ns_16_1_1_U2_n_10,mul_8ns_8ns_16_1_1_U2_n_11,mul_8ns_8ns_16_1_1_U2_n_12,mul_8ns_8ns_16_1_1_U2_n_13,mul_8ns_8ns_16_1_1_U2_n_14,mul_8ns_8ns_16_1_1_U2_n_15}),
        .ap_clk(ap_clk),
        .p_reg_reg(mul_8ns_8ns_16_1_1_U4_n_17),
        .reg_432(reg_432));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0 mac_muladd_8ns_8ns_16ns_17_4_1_U11
       (.P({mul_8ns_8ns_16_1_1_U3_n_0,mul_8ns_8ns_16_1_1_U3_n_1,mul_8ns_8ns_16_1_1_U3_n_2,mul_8ns_8ns_16_1_1_U3_n_3,mul_8ns_8ns_16_1_1_U3_n_4,mul_8ns_8ns_16_1_1_U3_n_5,mul_8ns_8ns_16_1_1_U3_n_6,mul_8ns_8ns_16_1_1_U3_n_7,mul_8ns_8ns_16_1_1_U3_n_8,mul_8ns_8ns_16_1_1_U3_n_9,mul_8ns_8ns_16_1_1_U3_n_10,mul_8ns_8ns_16_1_1_U3_n_11,mul_8ns_8ns_16_1_1_U3_n_12,mul_8ns_8ns_16_1_1_U3_n_13,mul_8ns_8ns_16_1_1_U3_n_14,mul_8ns_8ns_16_1_1_U3_n_15}),
        .Q({ap_CS_fsm_pp0_stage7,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .a_q1(a_q1),
        .add_ln16_2_fu_1060_p2(add_ln16_2_fu_1060_p2),
        .\add_ln16_2_reg_1729_reg[17] (add_ln16_1_reg_1679),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .b_q1(b_q1),
        .reg_4240(reg_4240),
        .reg_4280(reg_4280));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1 mac_muladd_8ns_8ns_16ns_17_4_1_U12
       (.B({mul_8ns_8ns_16_1_1_U5_n_17,mul_8ns_8ns_16_1_1_U5_n_18,mul_8ns_8ns_16_1_1_U5_n_19,mul_8ns_8ns_16_1_1_U5_n_20,mul_8ns_8ns_16_1_1_U5_n_21,mul_8ns_8ns_16_1_1_U5_n_22,mul_8ns_8ns_16_1_1_U5_n_23,mul_8ns_8ns_16_1_1_U5_n_24}),
        .P({mul_8ns_8ns_16_1_1_U4_n_0,mul_8ns_8ns_16_1_1_U4_n_1,mul_8ns_8ns_16_1_1_U4_n_2,mul_8ns_8ns_16_1_1_U4_n_3,mul_8ns_8ns_16_1_1_U4_n_4,mul_8ns_8ns_16_1_1_U4_n_5,mul_8ns_8ns_16_1_1_U4_n_6,mul_8ns_8ns_16_1_1_U4_n_7,mul_8ns_8ns_16_1_1_U4_n_8,mul_8ns_8ns_16_1_1_U4_n_9,mul_8ns_8ns_16_1_1_U4_n_10,mul_8ns_8ns_16_1_1_U4_n_11,mul_8ns_8ns_16_1_1_U4_n_12,mul_8ns_8ns_16_1_1_U4_n_13,mul_8ns_8ns_16_1_1_U4_n_14,mul_8ns_8ns_16_1_1_U4_n_15}),
        .Q(add_ln16_2_reg_1729),
        .add_ln16_6_fu_1108_p2(add_ln16_6_fu_1108_p2),
        .\add_ln16_6_reg_1749_reg[18] (add_ln16_3_reg_1709),
        .ap_clk(ap_clk),
        .b_q1(b_q1),
        .p_reg_reg(mul_8ns_8ns_16_1_1_U5_n_16),
        .reg_4460(reg_4460));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2 mac_muladd_8ns_8ns_16ns_17_4_1_U13
       (.D({mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15,mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16}),
        .P({mul_8ns_8ns_16_1_1_U5_n_0,mul_8ns_8ns_16_1_1_U5_n_1,mul_8ns_8ns_16_1_1_U5_n_2,mul_8ns_8ns_16_1_1_U5_n_3,mul_8ns_8ns_16_1_1_U5_n_4,mul_8ns_8ns_16_1_1_U5_n_5,mul_8ns_8ns_16_1_1_U5_n_6,mul_8ns_8ns_16_1_1_U5_n_7,mul_8ns_8ns_16_1_1_U5_n_8,mul_8ns_8ns_16_1_1_U5_n_9,mul_8ns_8ns_16_1_1_U5_n_10,mul_8ns_8ns_16_1_1_U5_n_11,mul_8ns_8ns_16_1_1_U5_n_12,mul_8ns_8ns_16_1_1_U5_n_13,mul_8ns_8ns_16_1_1_U5_n_14,mul_8ns_8ns_16_1_1_U5_n_15}),
        .Q({ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage0}),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .reg_4460(reg_4460));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3 mac_muladd_8ns_8ns_16ns_17_4_1_U14
       (.P({mul_8ns_8ns_16_1_1_U6_n_0,mul_8ns_8ns_16_1_1_U6_n_1,mul_8ns_8ns_16_1_1_U6_n_2,mul_8ns_8ns_16_1_1_U6_n_3,mul_8ns_8ns_16_1_1_U6_n_4,mul_8ns_8ns_16_1_1_U6_n_5,mul_8ns_8ns_16_1_1_U6_n_6,mul_8ns_8ns_16_1_1_U6_n_7,mul_8ns_8ns_16_1_1_U6_n_8,mul_8ns_8ns_16_1_1_U6_n_9,mul_8ns_8ns_16_1_1_U6_n_10,mul_8ns_8ns_16_1_1_U6_n_11,mul_8ns_8ns_16_1_1_U6_n_12,mul_8ns_8ns_16_1_1_U6_n_13,mul_8ns_8ns_16_1_1_U6_n_14,mul_8ns_8ns_16_1_1_U6_n_15}),
        .Q({ap_CS_fsm_pp0_stage4,ap_CS_fsm_pp0_stage0}),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_q0(a_q0),
        .add_ln16_9_fu_1159_p2(add_ln16_9_fu_1159_p2),
        .\add_ln16_9_reg_1779_reg[17] (add_ln16_7_reg_1769),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q1(b_q1));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4 mac_muladd_8ns_8ns_16ns_17_4_1_U15
       (.D({mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15,mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16}),
        .P({mul_8ns_8ns_16_1_1_U7_n_0,mul_8ns_8ns_16_1_1_U7_n_1,mul_8ns_8ns_16_1_1_U7_n_2,mul_8ns_8ns_16_1_1_U7_n_3,mul_8ns_8ns_16_1_1_U7_n_4,mul_8ns_8ns_16_1_1_U7_n_5,mul_8ns_8ns_16_1_1_U7_n_6,mul_8ns_8ns_16_1_1_U7_n_7,mul_8ns_8ns_16_1_1_U7_n_8,mul_8ns_8ns_16_1_1_U7_n_9,mul_8ns_8ns_16_1_1_U7_n_10,mul_8ns_8ns_16_1_1_U7_n_11,mul_8ns_8ns_16_1_1_U7_n_12,mul_8ns_8ns_16_1_1_U7_n_13,mul_8ns_8ns_16_1_1_U7_n_14,mul_8ns_8ns_16_1_1_U7_n_15}),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_load_13_reg_15250(a_load_13_reg_15250),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .b_q0(b_q0));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5 mac_muladd_8ns_8ns_16ns_17_4_1_U16
       (.P({mul_8ns_8ns_16_1_1_U8_n_0,mul_8ns_8ns_16_1_1_U8_n_1,mul_8ns_8ns_16_1_1_U8_n_2,mul_8ns_8ns_16_1_1_U8_n_3,mul_8ns_8ns_16_1_1_U8_n_4,mul_8ns_8ns_16_1_1_U8_n_5,mul_8ns_8ns_16_1_1_U8_n_6,mul_8ns_8ns_16_1_1_U8_n_7,mul_8ns_8ns_16_1_1_U8_n_8,mul_8ns_8ns_16_1_1_U8_n_9,mul_8ns_8ns_16_1_1_U8_n_10,mul_8ns_8ns_16_1_1_U8_n_11,mul_8ns_8ns_16_1_1_U8_n_12,mul_8ns_8ns_16_1_1_U8_n_13,mul_8ns_8ns_16_1_1_U8_n_14,mul_8ns_8ns_16_1_1_U8_n_15}),
        .Q({ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .a_load_13_reg_15250(a_load_13_reg_15250),
        .a_q0(a_q0),
        .add_ln16_13_fu_1200_p2(add_ln16_13_fu_1200_p2),
        .\add_ln16_13_reg_1794_reg[18] (add_ln16_9_reg_1779),
        .\add_ln16_13_reg_1794_reg[18]_0 (add_ln16_10_reg_1789),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .reg_4560(reg_4560));
  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6 mac_muladd_8ns_8ns_16ns_17_4_1_U9
       (.B({mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25}),
        .D({mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16}),
        .P({mul_8ns_8ns_16_1_1_U1_n_0,mul_8ns_8ns_16_1_1_U1_n_1,mul_8ns_8ns_16_1_1_U1_n_2,mul_8ns_8ns_16_1_1_U1_n_3,mul_8ns_8ns_16_1_1_U1_n_4,mul_8ns_8ns_16_1_1_U1_n_5,mul_8ns_8ns_16_1_1_U1_n_6,mul_8ns_8ns_16_1_1_U1_n_7,mul_8ns_8ns_16_1_1_U1_n_8,mul_8ns_8ns_16_1_1_U1_n_9,mul_8ns_8ns_16_1_1_U1_n_10,mul_8ns_8ns_16_1_1_U1_n_11,mul_8ns_8ns_16_1_1_U1_n_12,mul_8ns_8ns_16_1_1_U1_n_13,mul_8ns_8ns_16_1_1_U1_n_14,mul_8ns_8ns_16_1_1_U1_n_15}),
        .Q({ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage0}),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q1(b_q1),
        .reg_432(reg_432),
        .reg_4370(reg_4370));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1 mul_8ns_8ns_16_1_1_U1
       (.B(p_1_in__0),
        .P({mul_8ns_8ns_16_1_1_U1_n_0,mul_8ns_8ns_16_1_1_U1_n_1,mul_8ns_8ns_16_1_1_U1_n_2,mul_8ns_8ns_16_1_1_U1_n_3,mul_8ns_8ns_16_1_1_U1_n_4,mul_8ns_8ns_16_1_1_U1_n_5,mul_8ns_8ns_16_1_1_U1_n_6,mul_8ns_8ns_16_1_1_U1_n_7,mul_8ns_8ns_16_1_1_U1_n_8,mul_8ns_8ns_16_1_1_U1_n_9,mul_8ns_8ns_16_1_1_U1_n_10,mul_8ns_8ns_16_1_1_U1_n_11,mul_8ns_8ns_16_1_1_U1_n_12,mul_8ns_8ns_16_1_1_U1_n_13,mul_8ns_8ns_16_1_1_U1_n_14,mul_8ns_8ns_16_1_1_U1_n_15}),
        .ap_clk(ap_clk),
        .b_q1(b_q1),
        .reg_4370(reg_4370),
        .tmp_product_0(mul_8ns_8ns_16_1_1_U4_n_17));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7 mul_8ns_8ns_16_1_1_U2
       (.P({mul_8ns_8ns_16_1_1_U2_n_0,mul_8ns_8ns_16_1_1_U2_n_1,mul_8ns_8ns_16_1_1_U2_n_2,mul_8ns_8ns_16_1_1_U2_n_3,mul_8ns_8ns_16_1_1_U2_n_4,mul_8ns_8ns_16_1_1_U2_n_5,mul_8ns_8ns_16_1_1_U2_n_6,mul_8ns_8ns_16_1_1_U2_n_7,mul_8ns_8ns_16_1_1_U2_n_8,mul_8ns_8ns_16_1_1_U2_n_9,mul_8ns_8ns_16_1_1_U2_n_10,mul_8ns_8ns_16_1_1_U2_n_11,mul_8ns_8ns_16_1_1_U2_n_12,mul_8ns_8ns_16_1_1_U2_n_13,mul_8ns_8ns_16_1_1_U2_n_14,mul_8ns_8ns_16_1_1_U2_n_15}),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .b_q0(b_q0),
        .reg_4280(reg_4280),
        .reg_4560(reg_4560));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8 mul_8ns_8ns_16_1_1_U3
       (.B({mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24,mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25}),
        .P({mul_8ns_8ns_16_1_1_U3_n_0,mul_8ns_8ns_16_1_1_U3_n_1,mul_8ns_8ns_16_1_1_U3_n_2,mul_8ns_8ns_16_1_1_U3_n_3,mul_8ns_8ns_16_1_1_U3_n_4,mul_8ns_8ns_16_1_1_U3_n_5,mul_8ns_8ns_16_1_1_U3_n_6,mul_8ns_8ns_16_1_1_U3_n_7,mul_8ns_8ns_16_1_1_U3_n_8,mul_8ns_8ns_16_1_1_U3_n_9,mul_8ns_8ns_16_1_1_U3_n_10,mul_8ns_8ns_16_1_1_U3_n_11,mul_8ns_8ns_16_1_1_U3_n_12,mul_8ns_8ns_16_1_1_U3_n_13,mul_8ns_8ns_16_1_1_U3_n_14,mul_8ns_8ns_16_1_1_U3_n_15}),
        .ap_clk(ap_clk),
        .b_q1(b_q1),
        .reg_4240(reg_4240),
        .reg_432(reg_432));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9 mul_8ns_8ns_16_1_1_U4
       (.A({mul_8ns_8ns_16_1_1_U4_n_26,mul_8ns_8ns_16_1_1_U4_n_27,mul_8ns_8ns_16_1_1_U4_n_28,mul_8ns_8ns_16_1_1_U4_n_29,mul_8ns_8ns_16_1_1_U4_n_30,mul_8ns_8ns_16_1_1_U4_n_31,mul_8ns_8ns_16_1_1_U4_n_32,mul_8ns_8ns_16_1_1_U4_n_33}),
        .B(p_1_in__0),
        .P({mul_8ns_8ns_16_1_1_U4_n_0,mul_8ns_8ns_16_1_1_U4_n_1,mul_8ns_8ns_16_1_1_U4_n_2,mul_8ns_8ns_16_1_1_U4_n_3,mul_8ns_8ns_16_1_1_U4_n_4,mul_8ns_8ns_16_1_1_U4_n_5,mul_8ns_8ns_16_1_1_U4_n_6,mul_8ns_8ns_16_1_1_U4_n_7,mul_8ns_8ns_16_1_1_U4_n_8,mul_8ns_8ns_16_1_1_U4_n_9,mul_8ns_8ns_16_1_1_U4_n_10,mul_8ns_8ns_16_1_1_U4_n_11,mul_8ns_8ns_16_1_1_U4_n_12,mul_8ns_8ns_16_1_1_U4_n_13,mul_8ns_8ns_16_1_1_U4_n_14,mul_8ns_8ns_16_1_1_U4_n_15}),
        .Q({ap_CS_fsm_pp0_stage7,ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage0}),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .\ap_CS_fsm_reg[3] (mul_8ns_8ns_16_1_1_U4_n_17),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .b_q1(b_q1),
        .reg_432(reg_432));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10 mul_8ns_8ns_16_1_1_U5
       (.B({mul_8ns_8ns_16_1_1_U5_n_17,mul_8ns_8ns_16_1_1_U5_n_18,mul_8ns_8ns_16_1_1_U5_n_19,mul_8ns_8ns_16_1_1_U5_n_20,mul_8ns_8ns_16_1_1_U5_n_21,mul_8ns_8ns_16_1_1_U5_n_22,mul_8ns_8ns_16_1_1_U5_n_23,mul_8ns_8ns_16_1_1_U5_n_24}),
        .P({mul_8ns_8ns_16_1_1_U5_n_0,mul_8ns_8ns_16_1_1_U5_n_1,mul_8ns_8ns_16_1_1_U5_n_2,mul_8ns_8ns_16_1_1_U5_n_3,mul_8ns_8ns_16_1_1_U5_n_4,mul_8ns_8ns_16_1_1_U5_n_5,mul_8ns_8ns_16_1_1_U5_n_6,mul_8ns_8ns_16_1_1_U5_n_7,mul_8ns_8ns_16_1_1_U5_n_8,mul_8ns_8ns_16_1_1_U5_n_9,mul_8ns_8ns_16_1_1_U5_n_10,mul_8ns_8ns_16_1_1_U5_n_11,mul_8ns_8ns_16_1_1_U5_n_12,mul_8ns_8ns_16_1_1_U5_n_13,mul_8ns_8ns_16_1_1_U5_n_14,mul_8ns_8ns_16_1_1_U5_n_15}),
        .Q({ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage0}),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .\ap_CS_fsm_reg[3] (mul_8ns_8ns_16_1_1_U5_n_16),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .b_q0(b_q0));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11 mul_8ns_8ns_16_1_1_U6
       (.E(ap_ready_int),
        .P({mul_8ns_8ns_16_1_1_U6_n_0,mul_8ns_8ns_16_1_1_U6_n_1,mul_8ns_8ns_16_1_1_U6_n_2,mul_8ns_8ns_16_1_1_U6_n_3,mul_8ns_8ns_16_1_1_U6_n_4,mul_8ns_8ns_16_1_1_U6_n_5,mul_8ns_8ns_16_1_1_U6_n_6,mul_8ns_8ns_16_1_1_U6_n_7,mul_8ns_8ns_16_1_1_U6_n_8,mul_8ns_8ns_16_1_1_U6_n_9,mul_8ns_8ns_16_1_1_U6_n_10,mul_8ns_8ns_16_1_1_U6_n_11,mul_8ns_8ns_16_1_1_U6_n_12,mul_8ns_8ns_16_1_1_U6_n_13,mul_8ns_8ns_16_1_1_U6_n_14,mul_8ns_8ns_16_1_1_U6_n_15}),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .b_q1(b_q1),
        .tmp_product_0(reg_4511));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12 mul_8ns_8ns_16_1_1_U7
       (.E(a_load_12_reg_16890),
        .P({mul_8ns_8ns_16_1_1_U7_n_0,mul_8ns_8ns_16_1_1_U7_n_1,mul_8ns_8ns_16_1_1_U7_n_2,mul_8ns_8ns_16_1_1_U7_n_3,mul_8ns_8ns_16_1_1_U7_n_4,mul_8ns_8ns_16_1_1_U7_n_5,mul_8ns_8ns_16_1_1_U7_n_6,mul_8ns_8ns_16_1_1_U7_n_7,mul_8ns_8ns_16_1_1_U7_n_8,mul_8ns_8ns_16_1_1_U7_n_9,mul_8ns_8ns_16_1_1_U7_n_10,mul_8ns_8ns_16_1_1_U7_n_11,mul_8ns_8ns_16_1_1_U7_n_12,mul_8ns_8ns_16_1_1_U7_n_13,mul_8ns_8ns_16_1_1_U7_n_14,mul_8ns_8ns_16_1_1_U7_n_15}),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_ready_int(ap_ready_int),
        .b_q0(b_q0));
  bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13 mul_8ns_8ns_16_1_1_U8
       (.E(reg_4511),
        .P({mul_8ns_8ns_16_1_1_U8_n_0,mul_8ns_8ns_16_1_1_U8_n_1,mul_8ns_8ns_16_1_1_U8_n_2,mul_8ns_8ns_16_1_1_U8_n_3,mul_8ns_8ns_16_1_1_U8_n_4,mul_8ns_8ns_16_1_1_U8_n_5,mul_8ns_8ns_16_1_1_U8_n_6,mul_8ns_8ns_16_1_1_U8_n_7,mul_8ns_8ns_16_1_1_U8_n_8,mul_8ns_8ns_16_1_1_U8_n_9,mul_8ns_8ns_16_1_1_U8_n_10,mul_8ns_8ns_16_1_1_U8_n_11,mul_8ns_8ns_16_1_1_U8_n_12,mul_8ns_8ns_16_1_1_U8_n_13,mul_8ns_8ns_16_1_1_U8_n_14,mul_8ns_8ns_16_1_1_U8_n_15}),
        .Q({ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(a_load_12_reg_16890),
        .b_q0(b_q0));
  CARRY4 \prod_d0[0]_INST_0 
       (.CI(1'b0),
        .CO({\prod_d0[0]_INST_0_n_0 ,\prod_d0[0]_INST_0_n_1 ,\prod_d0[0]_INST_0_n_2 ,\prod_d0[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_1794[3:0]),
        .O(\^prod_d0 [3:0]),
        .S({\prod_d0[0]_INST_0_i_1_n_0 ,\prod_d0[0]_INST_0_i_2_n_0 ,\prod_d0[0]_INST_0_i_3_n_0 ,\prod_d0[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_1 
       (.I0(add_ln16_13_reg_1794[3]),
        .I1(add_ln16_6_reg_1749[3]),
        .O(\prod_d0[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_2 
       (.I0(add_ln16_13_reg_1794[2]),
        .I1(add_ln16_6_reg_1749[2]),
        .O(\prod_d0[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_3 
       (.I0(add_ln16_13_reg_1794[1]),
        .I1(add_ln16_6_reg_1749[1]),
        .O(\prod_d0[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_4 
       (.I0(add_ln16_13_reg_1794[0]),
        .I1(add_ln16_6_reg_1749[0]),
        .O(\prod_d0[0]_INST_0_i_4_n_0 ));
  CARRY4 \prod_d0[12]_INST_0 
       (.CI(\prod_d0[8]_INST_0_n_0 ),
        .CO({\prod_d0[12]_INST_0_n_0 ,\prod_d0[12]_INST_0_n_1 ,\prod_d0[12]_INST_0_n_2 ,\prod_d0[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_1794[15:12]),
        .O(\^prod_d0 [15:12]),
        .S({\prod_d0[12]_INST_0_i_1_n_0 ,\prod_d0[12]_INST_0_i_2_n_0 ,\prod_d0[12]_INST_0_i_3_n_0 ,\prod_d0[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[12]_INST_0_i_1 
       (.I0(add_ln16_13_reg_1794[15]),
        .I1(add_ln16_6_reg_1749[15]),
        .O(\prod_d0[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[12]_INST_0_i_2 
       (.I0(add_ln16_13_reg_1794[14]),
        .I1(add_ln16_6_reg_1749[14]),
        .O(\prod_d0[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[12]_INST_0_i_3 
       (.I0(add_ln16_13_reg_1794[13]),
        .I1(add_ln16_6_reg_1749[13]),
        .O(\prod_d0[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[12]_INST_0_i_4 
       (.I0(add_ln16_13_reg_1794[12]),
        .I1(add_ln16_6_reg_1749[12]),
        .O(\prod_d0[12]_INST_0_i_4_n_0 ));
  CARRY4 \prod_d0[16]_INST_0 
       (.CI(\prod_d0[12]_INST_0_n_0 ),
        .CO({\^prod_d0 [19],\NLW_prod_d0[16]_INST_0_CO_UNCONNECTED [2],\prod_d0[16]_INST_0_n_2 ,\prod_d0[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,add_ln16_13_reg_1794[18:16]}),
        .O({\NLW_prod_d0[16]_INST_0_O_UNCONNECTED [3],\^prod_d0 [18:16]}),
        .S({1'b1,\prod_d0[16]_INST_0_i_1_n_0 ,\prod_d0[16]_INST_0_i_2_n_0 ,\prod_d0[16]_INST_0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[16]_INST_0_i_1 
       (.I0(add_ln16_13_reg_1794[18]),
        .I1(add_ln16_6_reg_1749[18]),
        .O(\prod_d0[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[16]_INST_0_i_2 
       (.I0(add_ln16_13_reg_1794[17]),
        .I1(add_ln16_6_reg_1749[17]),
        .O(\prod_d0[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[16]_INST_0_i_3 
       (.I0(add_ln16_13_reg_1794[16]),
        .I1(add_ln16_6_reg_1749[16]),
        .O(\prod_d0[16]_INST_0_i_3_n_0 ));
  CARRY4 \prod_d0[4]_INST_0 
       (.CI(\prod_d0[0]_INST_0_n_0 ),
        .CO({\prod_d0[4]_INST_0_n_0 ,\prod_d0[4]_INST_0_n_1 ,\prod_d0[4]_INST_0_n_2 ,\prod_d0[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_1794[7:4]),
        .O(\^prod_d0 [7:4]),
        .S({\prod_d0[4]_INST_0_i_1_n_0 ,\prod_d0[4]_INST_0_i_2_n_0 ,\prod_d0[4]_INST_0_i_3_n_0 ,\prod_d0[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_1 
       (.I0(add_ln16_13_reg_1794[7]),
        .I1(add_ln16_6_reg_1749[7]),
        .O(\prod_d0[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_2 
       (.I0(add_ln16_13_reg_1794[6]),
        .I1(add_ln16_6_reg_1749[6]),
        .O(\prod_d0[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_3 
       (.I0(add_ln16_13_reg_1794[5]),
        .I1(add_ln16_6_reg_1749[5]),
        .O(\prod_d0[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_4 
       (.I0(add_ln16_13_reg_1794[4]),
        .I1(add_ln16_6_reg_1749[4]),
        .O(\prod_d0[4]_INST_0_i_4_n_0 ));
  CARRY4 \prod_d0[8]_INST_0 
       (.CI(\prod_d0[4]_INST_0_n_0 ),
        .CO({\prod_d0[8]_INST_0_n_0 ,\prod_d0[8]_INST_0_n_1 ,\prod_d0[8]_INST_0_n_2 ,\prod_d0[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_1794[11:8]),
        .O(\^prod_d0 [11:8]),
        .S({\prod_d0[8]_INST_0_i_1_n_0 ,\prod_d0[8]_INST_0_i_2_n_0 ,\prod_d0[8]_INST_0_i_3_n_0 ,\prod_d0[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_1 
       (.I0(add_ln16_13_reg_1794[11]),
        .I1(add_ln16_6_reg_1749[11]),
        .O(\prod_d0[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_2 
       (.I0(add_ln16_13_reg_1794[10]),
        .I1(add_ln16_6_reg_1749[10]),
        .O(\prod_d0[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_3 
       (.I0(add_ln16_13_reg_1794[9]),
        .I1(add_ln16_6_reg_1749[9]),
        .O(\prod_d0[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_4 
       (.I0(add_ln16_13_reg_1794[8]),
        .I1(add_ln16_6_reg_1749[8]),
        .O(\prod_d0[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    prod_we0_INST_0
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter2),
        .O(prod_ce0));
  FDRE \trunc_ln16_reg_1336_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(j3_fu_122[0]),
        .Q(trunc_ln16_reg_1336[0]),
        .R(flow_control_loop_pipe_U_n_12));
  FDRE \trunc_ln16_reg_1336_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(j3_fu_122[1]),
        .Q(trunc_ln16_reg_1336[1]),
        .R(flow_control_loop_pipe_U_n_12));
  FDRE \trunc_ln16_reg_1336_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(j3_fu_122[2]),
        .Q(trunc_ln16_reg_1336[2]),
        .R(flow_control_loop_pipe_U_n_12));
  FDRE \trunc_ln16_reg_1336_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(j3_fu_122[3]),
        .Q(trunc_ln16_reg_1336[3]),
        .R(flow_control_loop_pipe_U_n_12));
  FDRE \zext_ln16_47_reg_1404_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln16_reg_1336[0]),
        .Q(zext_ln16_47_reg_1404[0]),
        .R(1'b0));
  FDRE \zext_ln16_47_reg_1404_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln16_reg_1336[1]),
        .Q(zext_ln16_47_reg_1404[1]),
        .R(1'b0));
  FDRE \zext_ln16_47_reg_1404_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln16_reg_1336[2]),
        .Q(zext_ln16_47_reg_1404[2]),
        .R(1'b0));
  FDRE \zext_ln16_47_reg_1404_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln16_reg_1336[3]),
        .Q(zext_ln16_47_reg_1404[3]),
        .R(1'b0));
  FDRE \zext_ln16_47_reg_1404_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(bit_sel_reg_1331),
        .Q(zext_ln16_47_reg_1404[4]),
        .R(1'b0));
  FDRE \zext_ln16_48_reg_1374_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(trunc_ln16_reg_1336[0]),
        .Q(zext_ln16_48_reg_1374_reg[0]),
        .R(1'b0));
  FDRE \zext_ln16_48_reg_1374_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(trunc_ln16_reg_1336[1]),
        .Q(zext_ln16_48_reg_1374_reg[1]),
        .R(1'b0));
  FDRE \zext_ln16_48_reg_1374_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(trunc_ln16_reg_1336[2]),
        .Q(zext_ln16_48_reg_1374_reg[2]),
        .R(1'b0));
  FDRE \zext_ln16_48_reg_1374_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(trunc_ln16_reg_1336[3]),
        .Q(zext_ln16_48_reg_1374_reg[3]),
        .R(1'b0));
  FDRE \zext_ln16_48_reg_1374_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(bit_sel_reg_1331),
        .Q(zext_ln16_48_reg_1374_reg[4]),
        .R(1'b0));
  FDRE \zext_ln16_49_reg_1474_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage4),
        .D(trunc_ln16_reg_1336[0]),
        .Q(zext_ln16_49_reg_1474[0]),
        .R(1'b0));
  FDRE \zext_ln16_49_reg_1474_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage4),
        .D(trunc_ln16_reg_1336[1]),
        .Q(zext_ln16_49_reg_1474[1]),
        .R(1'b0));
  FDRE \zext_ln16_49_reg_1474_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage4),
        .D(trunc_ln16_reg_1336[2]),
        .Q(zext_ln16_49_reg_1474[2]),
        .R(1'b0));
  FDRE \zext_ln16_49_reg_1474_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage4),
        .D(trunc_ln16_reg_1336[3]),
        .Q(zext_ln16_49_reg_1474[3]),
        .R(1'b0));
  FDRE \zext_ln16_49_reg_1474_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage4),
        .D(bit_sel_reg_1331),
        .Q(zext_ln16_49_reg_1474[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "matrix_mult_flow_control_loop_pipe" *) 
module bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe
   (\icmp_ln12_reg_1630_reg[0] ,
    \indvar_flatten1_fu_114_reg[4] ,
    ap_ready_int,
    SR,
    b_address1,
    \ap_CS_fsm_reg[3] ,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    \ap_CS_fsm_reg[0] ,
    ap_clk,
    icmp_ln12_reg_1630,
    Q,
    ap_enable_reg_pp0_iter1,
    icmp_ln10_reg_1635,
    \icmp_ln124_reg_413_reg[0] ,
    ap_rst,
    ap_loop_init_reg_0,
    ap_enable_reg_pp0_iter0_reg,
    ap_start,
    \b_address1[4] ,
    trunc_ln16_reg_1336,
    \b_address1[4]_0 ,
    bit_sel_reg_1331,
    zext_ln16_47_reg_1404);
  output \icmp_ln12_reg_1630_reg[0] ;
  output \indvar_flatten1_fu_114_reg[4] ;
  output ap_ready_int;
  output [0:0]SR;
  output [4:0]b_address1;
  output \ap_CS_fsm_reg[3] ;
  output \ap_CS_fsm_reg[4] ;
  output \ap_CS_fsm_reg[4]_0 ;
  output \ap_CS_fsm_reg[0] ;
  input ap_clk;
  input icmp_ln12_reg_1630;
  input [7:0]Q;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln10_reg_1635;
  input \icmp_ln124_reg_413_reg[0] ;
  input ap_rst;
  input [7:0]ap_loop_init_reg_0;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_start;
  input [4:0]\b_address1[4] ;
  input [3:0]trunc_ln16_reg_1336;
  input [4:0]\b_address1[4]_0 ;
  input bit_sel_reg_1331;
  input [4:0]zext_ln16_47_reg_1404;

  wire [7:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire [7:0]ap_loop_init_reg_0;
  wire ap_ready_int;
  wire ap_rst;
  wire ap_start;
  wire [4:0]b_address1;
  wire \b_address1[0]_INST_0_i_1_n_0 ;
  wire \b_address1[1]_INST_0_i_1_n_0 ;
  wire \b_address1[2]_INST_0_i_1_n_0 ;
  wire \b_address1[3]_INST_0_i_1_n_0 ;
  wire \b_address1[3]_INST_0_i_2_n_0 ;
  wire \b_address1[3]_INST_0_i_3_n_0 ;
  wire \b_address1[3]_INST_0_i_4_n_0 ;
  wire [4:0]\b_address1[4] ;
  wire [4:0]\b_address1[4]_0 ;
  wire \b_address1[4]_INST_0_i_1_n_0 ;
  wire \b_address1[4]_INST_0_i_2_n_0 ;
  wire \b_address1[4]_INST_0_i_3_n_0 ;
  wire \b_address1[4]_INST_0_i_4_n_0 ;
  wire \b_address1[4]_INST_0_i_5_n_0 ;
  wire \b_address1[4]_INST_0_i_6_n_0 ;
  wire \b_address1[4]_INST_0_i_7_n_0 ;
  wire \b_address1[4]_INST_0_i_8_n_0 ;
  wire bit_sel_reg_1331;
  wire icmp_ln10_reg_1635;
  wire \icmp_ln124_reg_413_reg[0] ;
  wire icmp_ln12_reg_1630;
  wire \icmp_ln12_reg_1630_reg[0] ;
  wire \indvar_flatten1_fu_114_reg[4] ;
  wire [3:0]trunc_ln16_reg_1336;
  wire [4:0]zext_ln16_47_reg_1404;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \a_address1[3]_INST_0_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\ap_CS_fsm_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \a_address1[7]_INST_0_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\ap_CS_fsm_reg[4] ));
  LUT6 #(
    .INIT(64'hFAAAEEEEAAAAEEEE)) 
    ap_loop_init_i_1
       (.I0(ap_rst),
        .I1(ap_loop_init),
        .I2(\indvar_flatten1_fu_114_reg[4] ),
        .I3(ap_loop_init_reg_0[6]),
        .I4(ap_ready_int),
        .I5(ap_loop_init_reg_0[7]),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    ap_ready_INST_0_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[7]),
        .O(ap_ready_int));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ap_ready_INST_0_i_2
       (.I0(ap_loop_init_reg_0[4]),
        .I1(ap_loop_init_reg_0[2]),
        .I2(ap_loop_init_reg_0[0]),
        .I3(ap_loop_init_reg_0[1]),
        .I4(ap_loop_init_reg_0[3]),
        .I5(ap_loop_init_reg_0[5]),
        .O(\indvar_flatten1_fu_114_reg[4] ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \b_address1[0]_INST_0 
       (.I0(\b_address1[4] [0]),
        .I1(\b_address1[3]_INST_0_i_1_n_0 ),
        .I2(\b_address1[3]_INST_0_i_2_n_0 ),
        .I3(trunc_ln16_reg_1336[0]),
        .I4(\b_address1[0]_INST_0_i_1_n_0 ),
        .O(b_address1[0]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \b_address1[0]_INST_0_i_1 
       (.I0(zext_ln16_47_reg_1404[0]),
        .I1(\b_address1[3]_INST_0_i_4_n_0 ),
        .I2(\b_address1[4]_0 [0]),
        .I3(\b_address1[4]_INST_0_i_7_n_0 ),
        .I4(\b_address1[4]_INST_0_i_6_n_0 ),
        .I5(\ap_CS_fsm_reg[4] ),
        .O(\b_address1[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \b_address1[1]_INST_0 
       (.I0(\b_address1[4] [1]),
        .I1(\b_address1[3]_INST_0_i_1_n_0 ),
        .I2(\b_address1[3]_INST_0_i_2_n_0 ),
        .I3(trunc_ln16_reg_1336[1]),
        .I4(\b_address1[1]_INST_0_i_1_n_0 ),
        .O(b_address1[1]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \b_address1[1]_INST_0_i_1 
       (.I0(zext_ln16_47_reg_1404[1]),
        .I1(\b_address1[3]_INST_0_i_4_n_0 ),
        .I2(\b_address1[4]_0 [1]),
        .I3(\b_address1[4]_INST_0_i_7_n_0 ),
        .I4(\b_address1[4]_INST_0_i_6_n_0 ),
        .I5(\ap_CS_fsm_reg[4] ),
        .O(\b_address1[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \b_address1[2]_INST_0 
       (.I0(\b_address1[4] [2]),
        .I1(\b_address1[3]_INST_0_i_1_n_0 ),
        .I2(\b_address1[3]_INST_0_i_2_n_0 ),
        .I3(trunc_ln16_reg_1336[2]),
        .I4(\b_address1[2]_INST_0_i_1_n_0 ),
        .O(b_address1[2]));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \b_address1[2]_INST_0_i_1 
       (.I0(zext_ln16_47_reg_1404[2]),
        .I1(\b_address1[3]_INST_0_i_4_n_0 ),
        .I2(\b_address1[4]_0 [2]),
        .I3(\b_address1[4]_INST_0_i_7_n_0 ),
        .I4(\b_address1[4]_INST_0_i_6_n_0 ),
        .I5(\ap_CS_fsm_reg[4] ),
        .O(\b_address1[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \b_address1[3]_INST_0 
       (.I0(\b_address1[4] [3]),
        .I1(\b_address1[3]_INST_0_i_1_n_0 ),
        .I2(\b_address1[3]_INST_0_i_2_n_0 ),
        .I3(trunc_ln16_reg_1336[3]),
        .I4(\b_address1[3]_INST_0_i_3_n_0 ),
        .O(b_address1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \b_address1[3]_INST_0_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[7]),
        .O(\b_address1[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F5F4F4)) 
    \b_address1[3]_INST_0_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(\b_address1[4]_INST_0_i_6_n_0 ),
        .I5(Q[7]),
        .O(\b_address1[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888F888)) 
    \b_address1[3]_INST_0_i_3 
       (.I0(zext_ln16_47_reg_1404[3]),
        .I1(\b_address1[3]_INST_0_i_4_n_0 ),
        .I2(\b_address1[4]_0 [3]),
        .I3(\b_address1[4]_INST_0_i_7_n_0 ),
        .I4(\b_address1[4]_INST_0_i_6_n_0 ),
        .I5(\ap_CS_fsm_reg[4] ),
        .O(\b_address1[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \b_address1[3]_INST_0_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\b_address1[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \b_address1[4]_INST_0 
       (.I0(Q[7]),
        .I1(\b_address1[4] [4]),
        .I2(\b_address1[4]_INST_0_i_1_n_0 ),
        .I3(\b_address1[4]_INST_0_i_2_n_0 ),
        .I4(\b_address1[4]_INST_0_i_3_n_0 ),
        .I5(\b_address1[4]_INST_0_i_4_n_0 ),
        .O(b_address1[4]));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \b_address1[4]_INST_0_i_1 
       (.I0(\b_address1[4]_INST_0_i_5_n_0 ),
        .I1(Q[4]),
        .I2(\b_address1[4]_INST_0_i_6_n_0 ),
        .I3(\b_address1[4]_0 [4]),
        .I4(Q[3]),
        .I5(\b_address1[4]_INST_0_i_7_n_0 ),
        .O(\b_address1[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020002000200)) 
    \b_address1[4]_INST_0_i_2 
       (.I0(\b_address1[4]_INST_0_i_8_n_0 ),
        .I1(\ap_CS_fsm_reg[3] ),
        .I2(bit_sel_reg_1331),
        .I3(\b_address1[4]_INST_0_i_6_n_0 ),
        .I4(\b_address1[4]_INST_0_i_7_n_0 ),
        .I5(\b_address1[4]_0 [4]),
        .O(\b_address1[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \b_address1[4]_INST_0_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(bit_sel_reg_1331),
        .O(\b_address1[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000F000000010101)) 
    \b_address1[4]_INST_0_i_4 
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .I1(zext_ln16_47_reg_1404[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\b_address1[4] [4]),
        .I5(Q[5]),
        .O(\b_address1[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1D00)) 
    \b_address1[4]_INST_0_i_5 
       (.I0(Q[5]),
        .I1(\b_address1[4] [4]),
        .I2(Q[7]),
        .I3(bit_sel_reg_1331),
        .O(\b_address1[4]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \b_address1[4]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\b_address1[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0303B3F333333333)) 
    \b_address1[4]_INST_0_i_7 
       (.I0(icmp_ln10_reg_1635),
        .I1(icmp_ln12_reg_1630),
        .I2(ap_loop_init),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_start),
        .I5(Q[0]),
        .O(\b_address1[4]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0311)) 
    \b_address1[4]_INST_0_i_8 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\b_address1[4] [4]),
        .O(\b_address1[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \b_address1[7]_INST_0_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\ap_CS_fsm_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h88AA8800A8AA8800)) 
    \bit_sel_reg_1331[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_loop_init),
        .I4(icmp_ln12_reg_1630),
        .I5(icmp_ln10_reg_1635),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'h33B30080FFBF0080)) 
    \icmp_ln124_reg_413[0]_i_1 
       (.I0(icmp_ln12_reg_1630),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln10_reg_1635),
        .I4(\icmp_ln124_reg_413_reg[0] ),
        .I5(ap_loop_init),
        .O(\icmp_ln12_reg_1630_reg[0] ));
  LUT3 #(
    .INIT(8'h80)) 
    \j3_fu_122[4]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1
   (D,
    reg_432,
    p_reg_reg,
    ap_clk,
    B,
    A,
    P);
  output [16:0]D;
  input reg_432;
  input p_reg_reg;
  input ap_clk;
  input [7:0]B;
  input [7:0]A;
  input [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [16:0]D;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg;
  wire reg_432;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .P(P),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg),
        .reg_432(reg_432));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0
   (reg_4240,
    reg_4280,
    add_ln16_2_fu_1060_p2,
    ap_clk,
    a_q1,
    b_q1,
    P,
    Q,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    ap_enable_reg_pp0_iter1,
    \add_ln16_2_reg_1729_reg[17] );
  output reg_4240;
  output reg_4280;
  output [17:0]add_ln16_2_fu_1060_p2;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q1;
  input [15:0]P;
  input [3:0]Q;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_enable_reg_pp0_iter1;
  input [16:0]\add_ln16_2_reg_1729_reg[17] ;

  wire [15:0]P;
  wire [3:0]Q;
  wire [7:0]a_q1;
  wire [17:0]add_ln16_2_fu_1060_p2;
  wire [16:0]\add_ln16_2_reg_1729_reg[17] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire [7:0]b_q1;
  wire reg_4240;
  wire reg_4280;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .a_q1(a_q1),
        .add_ln16_2_fu_1060_p2(add_ln16_2_fu_1060_p2),
        .\add_ln16_2_reg_1729_reg[17] (\add_ln16_2_reg_1729_reg[17] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .b_q1(b_q1),
        .reg_4240(reg_4240),
        .reg_4280(reg_4280));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1
   (add_ln16_6_fu_1108_p2,
    reg_4460,
    p_reg_reg,
    ap_clk,
    B,
    b_q1,
    P,
    Q,
    \add_ln16_6_reg_1749_reg[18] );
  output [18:0]add_ln16_6_fu_1108_p2;
  input reg_4460;
  input p_reg_reg;
  input ap_clk;
  input [7:0]B;
  input [7:0]b_q1;
  input [15:0]P;
  input [17:0]Q;
  input [16:0]\add_ln16_6_reg_1749_reg[18] ;

  wire [7:0]B;
  wire [15:0]P;
  wire [17:0]Q;
  wire [18:0]add_ln16_6_fu_1108_p2;
  wire [16:0]\add_ln16_6_reg_1749_reg[18] ;
  wire ap_clk;
  wire [7:0]b_q1;
  wire p_reg_reg;
  wire reg_4460;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.B(B),
        .P(P),
        .Q(Q),
        .add_ln16_6_fu_1108_p2(add_ln16_6_fu_1108_p2),
        .\add_ln16_6_reg_1749_reg[18] (\add_ln16_6_reg_1749_reg[18] ),
        .ap_clk(ap_clk),
        .b_q1(b_q1),
        .p_reg_reg_0(p_reg_reg),
        .reg_4460(reg_4460));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2
   (D,
    reg_4460,
    a_load_11_reg_14690,
    ap_clk,
    a_q1,
    b_q0,
    P,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    ap_start);
  output [16:0]D;
  output reg_4460;
  input a_load_11_reg_14690;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;
  input [15:0]P;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input ap_start;

  wire [16:0]D;
  wire [15:0]P;
  wire [1:0]Q;
  wire a_load_11_reg_14690;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q0;
  wire reg_4460;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.D(D),
        .P(P),
        .Q(Q),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .reg_4460(reg_4460));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3
   (a_load_11_reg_14690,
    add_ln16_9_fu_1159_p2,
    ap_clk,
    a_q0,
    b_q1,
    P,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    ap_start,
    \add_ln16_9_reg_1779_reg[17] );
  output a_load_11_reg_14690;
  output [17:0]add_ln16_9_fu_1159_p2;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q1;
  input [15:0]P;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input ap_start;
  input [16:0]\add_ln16_9_reg_1779_reg[17] ;

  wire [15:0]P;
  wire [1:0]Q;
  wire a_load_11_reg_14690;
  wire [7:0]a_q0;
  wire [17:0]add_ln16_9_fu_1159_p2;
  wire [16:0]\add_ln16_9_reg_1779_reg[17] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q1;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_q0(a_q0),
        .add_ln16_9_fu_1159_p2(add_ln16_9_fu_1159_p2),
        .\add_ln16_9_reg_1779_reg[17] (\add_ln16_9_reg_1779_reg[17] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q1(b_q1));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4
   (D,
    a_load_11_reg_14690,
    a_load_13_reg_15250,
    ap_clk,
    a_q1,
    b_q0,
    P);
  output [16:0]D;
  input a_load_11_reg_14690;
  input a_load_13_reg_15250;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;
  input [15:0]P;

  wire [16:0]D;
  wire [15:0]P;
  wire a_load_11_reg_14690;
  wire a_load_13_reg_15250;
  wire [7:0]a_q1;
  wire ap_clk;
  wire [7:0]b_q0;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.D(D),
        .P(P),
        .a_load_11_reg_14690(a_load_11_reg_14690),
        .a_load_13_reg_15250(a_load_13_reg_15250),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .b_q0(b_q0));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5
   (reg_4560,
    a_load_13_reg_15250,
    add_ln16_13_fu_1200_p2,
    ap_clk,
    a_q0,
    b_q0,
    P,
    Q,
    ap_enable_reg_pp0_iter1,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    \add_ln16_13_reg_1794_reg[18] ,
    \add_ln16_13_reg_1794_reg[18]_0 );
  output reg_4560;
  output a_load_13_reg_15250;
  output [18:0]add_ln16_13_fu_1200_p2;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q0;
  input [15:0]P;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input [17:0]\add_ln16_13_reg_1794_reg[18] ;
  input [16:0]\add_ln16_13_reg_1794_reg[18]_0 ;

  wire [15:0]P;
  wire [2:0]Q;
  wire a_load_13_reg_15250;
  wire [7:0]a_q0;
  wire [18:0]add_ln16_13_fu_1200_p2;
  wire [17:0]\add_ln16_13_reg_1794_reg[18] ;
  wire [16:0]\add_ln16_13_reg_1794_reg[18]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire [7:0]b_q0;
  wire reg_4560;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .a_load_13_reg_15250(a_load_13_reg_15250),
        .a_q0(a_q0),
        .add_ln16_13_fu_1200_p2(add_ln16_13_fu_1200_p2),
        .\add_ln16_13_reg_1794_reg[18] (\add_ln16_13_reg_1794_reg[18] ),
        .\add_ln16_13_reg_1794_reg[18]_0 (\add_ln16_13_reg_1794_reg[18]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .reg_4560(reg_4560));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6
   (D,
    reg_4370,
    B,
    reg_432,
    ap_clk,
    b_q1,
    P,
    Q,
    ap_enable_reg_pp0_iter0_reg,
    ap_start,
    a_q0,
    a_q1);
  output [16:0]D;
  output reg_4370;
  output [7:0]B;
  input reg_432;
  input ap_clk;
  input [7:0]b_q1;
  input [15:0]P;
  input [3:0]Q;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_start;
  input [7:0]a_q0;
  input [7:0]a_q1;

  wire [7:0]B;
  wire [16:0]D;
  wire [15:0]P;
  wire [3:0]Q;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q1;
  wire reg_432;
  wire reg_4370;

  bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0 matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U
       (.B(B),
        .D(D),
        .P(P),
        .Q(Q),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .b_q1(b_q1),
        .reg_432(reg_432),
        .reg_4370(reg_4370));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0
   (D,
    reg_4370,
    B,
    reg_432,
    ap_clk,
    b_q1,
    P,
    Q,
    ap_enable_reg_pp0_iter0_reg,
    ap_start,
    a_q0,
    a_q1);
  output [16:0]D;
  output reg_4370;
  output [7:0]B;
  input reg_432;
  input ap_clk;
  input [7:0]b_q1;
  input [15:0]P;
  input [3:0]Q;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_start;
  input [7:0]a_q0;
  input [7:0]a_q1;

  wire [7:0]B;
  wire [16:0]D;
  wire [15:0]P;
  wire [3:0]Q;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q1;
  wire reg_432;
  wire reg_4370;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_4370),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(reg_432),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    tmp_product_i_1__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[0]),
        .I4(ap_start),
        .O(reg_4370));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_2__0
       (.I0(a_q0[7]),
        .I1(Q[3]),
        .I2(a_q1[7]),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_3
       (.I0(a_q0[6]),
        .I1(Q[3]),
        .I2(a_q1[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_4
       (.I0(a_q0[5]),
        .I1(Q[3]),
        .I2(a_q1[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_5
       (.I0(a_q0[4]),
        .I1(Q[3]),
        .I2(a_q1[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_6
       (.I0(a_q0[3]),
        .I1(Q[3]),
        .I2(a_q1[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_7
       (.I0(a_q0[2]),
        .I1(Q[3]),
        .I2(a_q1[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_8
       (.I0(a_q0[1]),
        .I1(Q[3]),
        .I2(a_q1[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hE2)) 
    tmp_product_i_9
       (.I0(a_q0[0]),
        .I1(Q[3]),
        .I2(a_q1[0]),
        .O(B[0]));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14
   (reg_4560,
    a_load_13_reg_15250,
    add_ln16_13_fu_1200_p2,
    ap_clk,
    a_q0,
    b_q0,
    P,
    Q,
    ap_enable_reg_pp0_iter1,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    \add_ln16_13_reg_1794_reg[18] ,
    \add_ln16_13_reg_1794_reg[18]_0 );
  output reg_4560;
  output a_load_13_reg_15250;
  output [18:0]add_ln16_13_fu_1200_p2;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q0;
  input [15:0]P;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input [17:0]\add_ln16_13_reg_1794_reg[18] ;
  input [16:0]\add_ln16_13_reg_1794_reg[18]_0 ;

  wire [15:0]P;
  wire [2:0]Q;
  wire a_load_13_reg_15250;
  wire [7:0]a_q0;
  wire [18:0]add_ln16_13_fu_1200_p2;
  wire \add_ln16_13_reg_1794[11]_i_2_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_3_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_4_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_5_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_6_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_7_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_8_n_0 ;
  wire \add_ln16_13_reg_1794[11]_i_9_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_2_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_3_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_4_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_5_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_6_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_7_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_8_n_0 ;
  wire \add_ln16_13_reg_1794[15]_i_9_n_0 ;
  wire \add_ln16_13_reg_1794[18]_i_2_n_0 ;
  wire \add_ln16_13_reg_1794[18]_i_3_n_0 ;
  wire \add_ln16_13_reg_1794[18]_i_4_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_2_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_3_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_4_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_5_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_6_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_7_n_0 ;
  wire \add_ln16_13_reg_1794[3]_i_8_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_2_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_3_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_4_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_5_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_6_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_7_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_8_n_0 ;
  wire \add_ln16_13_reg_1794[7]_i_9_n_0 ;
  wire \add_ln16_13_reg_1794_reg[11]_i_1_n_0 ;
  wire \add_ln16_13_reg_1794_reg[11]_i_1_n_1 ;
  wire \add_ln16_13_reg_1794_reg[11]_i_1_n_2 ;
  wire \add_ln16_13_reg_1794_reg[11]_i_1_n_3 ;
  wire \add_ln16_13_reg_1794_reg[15]_i_1_n_0 ;
  wire \add_ln16_13_reg_1794_reg[15]_i_1_n_1 ;
  wire \add_ln16_13_reg_1794_reg[15]_i_1_n_2 ;
  wire \add_ln16_13_reg_1794_reg[15]_i_1_n_3 ;
  wire [17:0]\add_ln16_13_reg_1794_reg[18] ;
  wire [16:0]\add_ln16_13_reg_1794_reg[18]_0 ;
  wire \add_ln16_13_reg_1794_reg[18]_i_1_n_3 ;
  wire \add_ln16_13_reg_1794_reg[3]_i_1_n_0 ;
  wire \add_ln16_13_reg_1794_reg[3]_i_1_n_1 ;
  wire \add_ln16_13_reg_1794_reg[3]_i_1_n_2 ;
  wire \add_ln16_13_reg_1794_reg[3]_i_1_n_3 ;
  wire \add_ln16_13_reg_1794_reg[7]_i_1_n_0 ;
  wire \add_ln16_13_reg_1794_reg[7]_i_1_n_1 ;
  wire \add_ln16_13_reg_1794_reg[7]_i_1_n_2 ;
  wire \add_ln16_13_reg_1794_reg[7]_i_1_n_3 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire [7:0]b_q0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire reg_4560;
  wire [3:1]\NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_13_reg_1794_reg[18]_i_1_O_UNCONNECTED ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[11]_i_2 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [10]),
        .I1(\add_ln16_13_reg_1794_reg[18] [10]),
        .I2(p_reg_reg_n_95),
        .O(\add_ln16_13_reg_1794[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[11]_i_3 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [9]),
        .I1(\add_ln16_13_reg_1794_reg[18] [9]),
        .I2(p_reg_reg_n_96),
        .O(\add_ln16_13_reg_1794[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[11]_i_4 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [8]),
        .I1(\add_ln16_13_reg_1794_reg[18] [8]),
        .I2(p_reg_reg_n_97),
        .O(\add_ln16_13_reg_1794[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[11]_i_5 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [7]),
        .I1(\add_ln16_13_reg_1794_reg[18] [7]),
        .I2(p_reg_reg_n_98),
        .O(\add_ln16_13_reg_1794[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[11]_i_6 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [11]),
        .I1(\add_ln16_13_reg_1794_reg[18] [11]),
        .I2(p_reg_reg_n_94),
        .I3(\add_ln16_13_reg_1794[11]_i_2_n_0 ),
        .O(\add_ln16_13_reg_1794[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[11]_i_7 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [10]),
        .I1(\add_ln16_13_reg_1794_reg[18] [10]),
        .I2(p_reg_reg_n_95),
        .I3(\add_ln16_13_reg_1794[11]_i_3_n_0 ),
        .O(\add_ln16_13_reg_1794[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[11]_i_8 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [9]),
        .I1(\add_ln16_13_reg_1794_reg[18] [9]),
        .I2(p_reg_reg_n_96),
        .I3(\add_ln16_13_reg_1794[11]_i_4_n_0 ),
        .O(\add_ln16_13_reg_1794[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[11]_i_9 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [8]),
        .I1(\add_ln16_13_reg_1794_reg[18] [8]),
        .I2(p_reg_reg_n_97),
        .I3(\add_ln16_13_reg_1794[11]_i_5_n_0 ),
        .O(\add_ln16_13_reg_1794[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[15]_i_2 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [14]),
        .I1(\add_ln16_13_reg_1794_reg[18] [14]),
        .I2(p_reg_reg_n_91),
        .O(\add_ln16_13_reg_1794[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[15]_i_3 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [13]),
        .I1(\add_ln16_13_reg_1794_reg[18] [13]),
        .I2(p_reg_reg_n_92),
        .O(\add_ln16_13_reg_1794[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[15]_i_4 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [12]),
        .I1(\add_ln16_13_reg_1794_reg[18] [12]),
        .I2(p_reg_reg_n_93),
        .O(\add_ln16_13_reg_1794[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[15]_i_5 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [11]),
        .I1(\add_ln16_13_reg_1794_reg[18] [11]),
        .I2(p_reg_reg_n_94),
        .O(\add_ln16_13_reg_1794[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[15]_i_6 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [15]),
        .I1(\add_ln16_13_reg_1794_reg[18] [15]),
        .I2(p_reg_reg_n_90),
        .I3(\add_ln16_13_reg_1794[15]_i_2_n_0 ),
        .O(\add_ln16_13_reg_1794[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[15]_i_7 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [14]),
        .I1(\add_ln16_13_reg_1794_reg[18] [14]),
        .I2(p_reg_reg_n_91),
        .I3(\add_ln16_13_reg_1794[15]_i_3_n_0 ),
        .O(\add_ln16_13_reg_1794[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[15]_i_8 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [13]),
        .I1(\add_ln16_13_reg_1794_reg[18] [13]),
        .I2(p_reg_reg_n_92),
        .I3(\add_ln16_13_reg_1794[15]_i_4_n_0 ),
        .O(\add_ln16_13_reg_1794[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[15]_i_9 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [12]),
        .I1(\add_ln16_13_reg_1794_reg[18] [12]),
        .I2(p_reg_reg_n_93),
        .I3(\add_ln16_13_reg_1794[15]_i_5_n_0 ),
        .O(\add_ln16_13_reg_1794[15]_i_9_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[18]_i_2 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [15]),
        .I1(\add_ln16_13_reg_1794_reg[18] [15]),
        .I2(p_reg_reg_n_90),
        .O(\add_ln16_13_reg_1794[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \add_ln16_13_reg_1794[18]_i_3 
       (.I0(p_reg_reg_n_89),
        .I1(\add_ln16_13_reg_1794_reg[18] [16]),
        .I2(\add_ln16_13_reg_1794_reg[18]_0 [16]),
        .I3(\add_ln16_13_reg_1794_reg[18] [17]),
        .O(\add_ln16_13_reg_1794[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[18]_i_4 
       (.I0(\add_ln16_13_reg_1794[18]_i_2_n_0 ),
        .I1(\add_ln16_13_reg_1794_reg[18] [16]),
        .I2(\add_ln16_13_reg_1794_reg[18]_0 [16]),
        .I3(p_reg_reg_n_89),
        .O(\add_ln16_13_reg_1794[18]_i_4_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[3]_i_2 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [2]),
        .I1(\add_ln16_13_reg_1794_reg[18] [2]),
        .I2(p_reg_reg_n_103),
        .O(\add_ln16_13_reg_1794[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[3]_i_3 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [1]),
        .I1(\add_ln16_13_reg_1794_reg[18] [1]),
        .I2(p_reg_reg_n_104),
        .O(\add_ln16_13_reg_1794[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[3]_i_4 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [0]),
        .I1(\add_ln16_13_reg_1794_reg[18] [0]),
        .I2(p_reg_reg_n_105),
        .O(\add_ln16_13_reg_1794[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[3]_i_5 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [3]),
        .I1(\add_ln16_13_reg_1794_reg[18] [3]),
        .I2(p_reg_reg_n_102),
        .I3(\add_ln16_13_reg_1794[3]_i_2_n_0 ),
        .O(\add_ln16_13_reg_1794[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[3]_i_6 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [2]),
        .I1(\add_ln16_13_reg_1794_reg[18] [2]),
        .I2(p_reg_reg_n_103),
        .I3(\add_ln16_13_reg_1794[3]_i_3_n_0 ),
        .O(\add_ln16_13_reg_1794[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[3]_i_7 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [1]),
        .I1(\add_ln16_13_reg_1794_reg[18] [1]),
        .I2(p_reg_reg_n_104),
        .I3(\add_ln16_13_reg_1794[3]_i_4_n_0 ),
        .O(\add_ln16_13_reg_1794[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln16_13_reg_1794[3]_i_8 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [0]),
        .I1(\add_ln16_13_reg_1794_reg[18] [0]),
        .I2(p_reg_reg_n_105),
        .O(\add_ln16_13_reg_1794[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[7]_i_2 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [6]),
        .I1(\add_ln16_13_reg_1794_reg[18] [6]),
        .I2(p_reg_reg_n_99),
        .O(\add_ln16_13_reg_1794[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[7]_i_3 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [5]),
        .I1(\add_ln16_13_reg_1794_reg[18] [5]),
        .I2(p_reg_reg_n_100),
        .O(\add_ln16_13_reg_1794[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[7]_i_4 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [4]),
        .I1(\add_ln16_13_reg_1794_reg[18] [4]),
        .I2(p_reg_reg_n_101),
        .O(\add_ln16_13_reg_1794[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_13_reg_1794[7]_i_5 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [3]),
        .I1(\add_ln16_13_reg_1794_reg[18] [3]),
        .I2(p_reg_reg_n_102),
        .O(\add_ln16_13_reg_1794[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[7]_i_6 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [7]),
        .I1(\add_ln16_13_reg_1794_reg[18] [7]),
        .I2(p_reg_reg_n_98),
        .I3(\add_ln16_13_reg_1794[7]_i_2_n_0 ),
        .O(\add_ln16_13_reg_1794[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[7]_i_7 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [6]),
        .I1(\add_ln16_13_reg_1794_reg[18] [6]),
        .I2(p_reg_reg_n_99),
        .I3(\add_ln16_13_reg_1794[7]_i_3_n_0 ),
        .O(\add_ln16_13_reg_1794[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[7]_i_8 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [5]),
        .I1(\add_ln16_13_reg_1794_reg[18] [5]),
        .I2(p_reg_reg_n_100),
        .I3(\add_ln16_13_reg_1794[7]_i_4_n_0 ),
        .O(\add_ln16_13_reg_1794[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_13_reg_1794[7]_i_9 
       (.I0(\add_ln16_13_reg_1794_reg[18]_0 [4]),
        .I1(\add_ln16_13_reg_1794_reg[18] [4]),
        .I2(p_reg_reg_n_101),
        .I3(\add_ln16_13_reg_1794[7]_i_5_n_0 ),
        .O(\add_ln16_13_reg_1794[7]_i_9_n_0 ));
  CARRY4 \add_ln16_13_reg_1794_reg[11]_i_1 
       (.CI(\add_ln16_13_reg_1794_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_1794_reg[11]_i_1_n_0 ,\add_ln16_13_reg_1794_reg[11]_i_1_n_1 ,\add_ln16_13_reg_1794_reg[11]_i_1_n_2 ,\add_ln16_13_reg_1794_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_13_reg_1794[11]_i_2_n_0 ,\add_ln16_13_reg_1794[11]_i_3_n_0 ,\add_ln16_13_reg_1794[11]_i_4_n_0 ,\add_ln16_13_reg_1794[11]_i_5_n_0 }),
        .O(add_ln16_13_fu_1200_p2[11:8]),
        .S({\add_ln16_13_reg_1794[11]_i_6_n_0 ,\add_ln16_13_reg_1794[11]_i_7_n_0 ,\add_ln16_13_reg_1794[11]_i_8_n_0 ,\add_ln16_13_reg_1794[11]_i_9_n_0 }));
  CARRY4 \add_ln16_13_reg_1794_reg[15]_i_1 
       (.CI(\add_ln16_13_reg_1794_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_1794_reg[15]_i_1_n_0 ,\add_ln16_13_reg_1794_reg[15]_i_1_n_1 ,\add_ln16_13_reg_1794_reg[15]_i_1_n_2 ,\add_ln16_13_reg_1794_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_13_reg_1794[15]_i_2_n_0 ,\add_ln16_13_reg_1794[15]_i_3_n_0 ,\add_ln16_13_reg_1794[15]_i_4_n_0 ,\add_ln16_13_reg_1794[15]_i_5_n_0 }),
        .O(add_ln16_13_fu_1200_p2[15:12]),
        .S({\add_ln16_13_reg_1794[15]_i_6_n_0 ,\add_ln16_13_reg_1794[15]_i_7_n_0 ,\add_ln16_13_reg_1794[15]_i_8_n_0 ,\add_ln16_13_reg_1794[15]_i_9_n_0 }));
  CARRY4 \add_ln16_13_reg_1794_reg[18]_i_1 
       (.CI(\add_ln16_13_reg_1794_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED [3],add_ln16_13_fu_1200_p2[18],\NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED [1],\add_ln16_13_reg_1794_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_13_reg_1794_reg[18] [17],\add_ln16_13_reg_1794[18]_i_2_n_0 }),
        .O({\NLW_add_ln16_13_reg_1794_reg[18]_i_1_O_UNCONNECTED [3:2],add_ln16_13_fu_1200_p2[17:16]}),
        .S({1'b0,1'b1,\add_ln16_13_reg_1794[18]_i_3_n_0 ,\add_ln16_13_reg_1794[18]_i_4_n_0 }));
  CARRY4 \add_ln16_13_reg_1794_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_13_reg_1794_reg[3]_i_1_n_0 ,\add_ln16_13_reg_1794_reg[3]_i_1_n_1 ,\add_ln16_13_reg_1794_reg[3]_i_1_n_2 ,\add_ln16_13_reg_1794_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_13_reg_1794[3]_i_2_n_0 ,\add_ln16_13_reg_1794[3]_i_3_n_0 ,\add_ln16_13_reg_1794[3]_i_4_n_0 ,1'b0}),
        .O(add_ln16_13_fu_1200_p2[3:0]),
        .S({\add_ln16_13_reg_1794[3]_i_5_n_0 ,\add_ln16_13_reg_1794[3]_i_6_n_0 ,\add_ln16_13_reg_1794[3]_i_7_n_0 ,\add_ln16_13_reg_1794[3]_i_8_n_0 }));
  CARRY4 \add_ln16_13_reg_1794_reg[7]_i_1 
       (.CI(\add_ln16_13_reg_1794_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_1794_reg[7]_i_1_n_0 ,\add_ln16_13_reg_1794_reg[7]_i_1_n_1 ,\add_ln16_13_reg_1794_reg[7]_i_1_n_2 ,\add_ln16_13_reg_1794_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_13_reg_1794[7]_i_2_n_0 ,\add_ln16_13_reg_1794[7]_i_3_n_0 ,\add_ln16_13_reg_1794[7]_i_4_n_0 ,\add_ln16_13_reg_1794[7]_i_5_n_0 }),
        .O(add_ln16_13_fu_1200_p2[7:4]),
        .S({\add_ln16_13_reg_1794[7]_i_6_n_0 ,\add_ln16_13_reg_1794[7]_i_7_n_0 ,\add_ln16_13_reg_1794[7]_i_8_n_0 ,\add_ln16_13_reg_1794[7]_i_9_n_0 }));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_4560),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(a_load_13_reg_15250),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hE200)) 
    p_reg_reg_i_2__1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[2]),
        .O(a_load_13_reg_15250));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    tmp_product_i_1__2
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[2]),
        .I3(ap_start),
        .I4(Q[0]),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(reg_4560));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15
   (D,
    a_load_11_reg_14690,
    a_load_13_reg_15250,
    ap_clk,
    a_q1,
    b_q0,
    P);
  output [16:0]D;
  input a_load_11_reg_14690;
  input a_load_13_reg_15250;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;
  input [15:0]P;

  wire [16:0]D;
  wire [15:0]P;
  wire a_load_11_reg_14690;
  wire a_load_13_reg_15250;
  wire [7:0]a_q1;
  wire ap_clk;
  wire [7:0]b_q0;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(a_load_11_reg_14690),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(a_load_13_reg_15250),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16
   (a_load_11_reg_14690,
    add_ln16_9_fu_1159_p2,
    ap_clk,
    a_q0,
    b_q1,
    P,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    ap_start,
    \add_ln16_9_reg_1779_reg[17] );
  output a_load_11_reg_14690;
  output [17:0]add_ln16_9_fu_1159_p2;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q1;
  input [15:0]P;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input ap_start;
  input [16:0]\add_ln16_9_reg_1779_reg[17] ;

  wire [15:0]P;
  wire [1:0]Q;
  wire a_load_11_reg_14690;
  wire [7:0]a_q0;
  wire [17:0]add_ln16_9_fu_1159_p2;
  wire \add_ln16_9_reg_1779[11]_i_2_n_0 ;
  wire \add_ln16_9_reg_1779[11]_i_3_n_0 ;
  wire \add_ln16_9_reg_1779[11]_i_4_n_0 ;
  wire \add_ln16_9_reg_1779[11]_i_5_n_0 ;
  wire \add_ln16_9_reg_1779[15]_i_2_n_0 ;
  wire \add_ln16_9_reg_1779[15]_i_3_n_0 ;
  wire \add_ln16_9_reg_1779[15]_i_4_n_0 ;
  wire \add_ln16_9_reg_1779[15]_i_5_n_0 ;
  wire \add_ln16_9_reg_1779[17]_i_2_n_0 ;
  wire \add_ln16_9_reg_1779[3]_i_2_n_0 ;
  wire \add_ln16_9_reg_1779[3]_i_3_n_0 ;
  wire \add_ln16_9_reg_1779[3]_i_4_n_0 ;
  wire \add_ln16_9_reg_1779[3]_i_5_n_0 ;
  wire \add_ln16_9_reg_1779[7]_i_2_n_0 ;
  wire \add_ln16_9_reg_1779[7]_i_3_n_0 ;
  wire \add_ln16_9_reg_1779[7]_i_4_n_0 ;
  wire \add_ln16_9_reg_1779[7]_i_5_n_0 ;
  wire \add_ln16_9_reg_1779_reg[11]_i_1_n_0 ;
  wire \add_ln16_9_reg_1779_reg[11]_i_1_n_1 ;
  wire \add_ln16_9_reg_1779_reg[11]_i_1_n_2 ;
  wire \add_ln16_9_reg_1779_reg[11]_i_1_n_3 ;
  wire \add_ln16_9_reg_1779_reg[15]_i_1_n_0 ;
  wire \add_ln16_9_reg_1779_reg[15]_i_1_n_1 ;
  wire \add_ln16_9_reg_1779_reg[15]_i_1_n_2 ;
  wire \add_ln16_9_reg_1779_reg[15]_i_1_n_3 ;
  wire [16:0]\add_ln16_9_reg_1779_reg[17] ;
  wire \add_ln16_9_reg_1779_reg[3]_i_1_n_0 ;
  wire \add_ln16_9_reg_1779_reg[3]_i_1_n_1 ;
  wire \add_ln16_9_reg_1779_reg[3]_i_1_n_2 ;
  wire \add_ln16_9_reg_1779_reg[3]_i_1_n_3 ;
  wire \add_ln16_9_reg_1779_reg[7]_i_1_n_0 ;
  wire \add_ln16_9_reg_1779_reg[7]_i_1_n_1 ;
  wire \add_ln16_9_reg_1779_reg[7]_i_1_n_2 ;
  wire \add_ln16_9_reg_1779_reg[7]_i_1_n_3 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q1;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [3:0]\NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_9_reg_1779_reg[17]_i_1_O_UNCONNECTED ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[11]_i_2 
       (.I0(p_reg_reg_n_94),
        .I1(\add_ln16_9_reg_1779_reg[17] [11]),
        .O(\add_ln16_9_reg_1779[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[11]_i_3 
       (.I0(p_reg_reg_n_95),
        .I1(\add_ln16_9_reg_1779_reg[17] [10]),
        .O(\add_ln16_9_reg_1779[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[11]_i_4 
       (.I0(p_reg_reg_n_96),
        .I1(\add_ln16_9_reg_1779_reg[17] [9]),
        .O(\add_ln16_9_reg_1779[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[11]_i_5 
       (.I0(p_reg_reg_n_97),
        .I1(\add_ln16_9_reg_1779_reg[17] [8]),
        .O(\add_ln16_9_reg_1779[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[15]_i_2 
       (.I0(p_reg_reg_n_90),
        .I1(\add_ln16_9_reg_1779_reg[17] [15]),
        .O(\add_ln16_9_reg_1779[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[15]_i_3 
       (.I0(p_reg_reg_n_91),
        .I1(\add_ln16_9_reg_1779_reg[17] [14]),
        .O(\add_ln16_9_reg_1779[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[15]_i_4 
       (.I0(p_reg_reg_n_92),
        .I1(\add_ln16_9_reg_1779_reg[17] [13]),
        .O(\add_ln16_9_reg_1779[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[15]_i_5 
       (.I0(p_reg_reg_n_93),
        .I1(\add_ln16_9_reg_1779_reg[17] [12]),
        .O(\add_ln16_9_reg_1779[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[17]_i_2 
       (.I0(p_reg_reg_n_89),
        .I1(\add_ln16_9_reg_1779_reg[17] [16]),
        .O(\add_ln16_9_reg_1779[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[3]_i_2 
       (.I0(p_reg_reg_n_102),
        .I1(\add_ln16_9_reg_1779_reg[17] [3]),
        .O(\add_ln16_9_reg_1779[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[3]_i_3 
       (.I0(p_reg_reg_n_103),
        .I1(\add_ln16_9_reg_1779_reg[17] [2]),
        .O(\add_ln16_9_reg_1779[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[3]_i_4 
       (.I0(p_reg_reg_n_104),
        .I1(\add_ln16_9_reg_1779_reg[17] [1]),
        .O(\add_ln16_9_reg_1779[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[3]_i_5 
       (.I0(p_reg_reg_n_105),
        .I1(\add_ln16_9_reg_1779_reg[17] [0]),
        .O(\add_ln16_9_reg_1779[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[7]_i_2 
       (.I0(p_reg_reg_n_98),
        .I1(\add_ln16_9_reg_1779_reg[17] [7]),
        .O(\add_ln16_9_reg_1779[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[7]_i_3 
       (.I0(p_reg_reg_n_99),
        .I1(\add_ln16_9_reg_1779_reg[17] [6]),
        .O(\add_ln16_9_reg_1779[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[7]_i_4 
       (.I0(p_reg_reg_n_100),
        .I1(\add_ln16_9_reg_1779_reg[17] [5]),
        .O(\add_ln16_9_reg_1779[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_9_reg_1779[7]_i_5 
       (.I0(p_reg_reg_n_101),
        .I1(\add_ln16_9_reg_1779_reg[17] [4]),
        .O(\add_ln16_9_reg_1779[7]_i_5_n_0 ));
  CARRY4 \add_ln16_9_reg_1779_reg[11]_i_1 
       (.CI(\add_ln16_9_reg_1779_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_9_reg_1779_reg[11]_i_1_n_0 ,\add_ln16_9_reg_1779_reg[11]_i_1_n_1 ,\add_ln16_9_reg_1779_reg[11]_i_1_n_2 ,\add_ln16_9_reg_1779_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(add_ln16_9_fu_1159_p2[11:8]),
        .S({\add_ln16_9_reg_1779[11]_i_2_n_0 ,\add_ln16_9_reg_1779[11]_i_3_n_0 ,\add_ln16_9_reg_1779[11]_i_4_n_0 ,\add_ln16_9_reg_1779[11]_i_5_n_0 }));
  CARRY4 \add_ln16_9_reg_1779_reg[15]_i_1 
       (.CI(\add_ln16_9_reg_1779_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_9_reg_1779_reg[15]_i_1_n_0 ,\add_ln16_9_reg_1779_reg[15]_i_1_n_1 ,\add_ln16_9_reg_1779_reg[15]_i_1_n_2 ,\add_ln16_9_reg_1779_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(add_ln16_9_fu_1159_p2[15:12]),
        .S({\add_ln16_9_reg_1779[15]_i_2_n_0 ,\add_ln16_9_reg_1779[15]_i_3_n_0 ,\add_ln16_9_reg_1779[15]_i_4_n_0 ,\add_ln16_9_reg_1779[15]_i_5_n_0 }));
  CARRY4 \add_ln16_9_reg_1779_reg[17]_i_1 
       (.CI(\add_ln16_9_reg_1779_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED [3:2],add_ln16_9_fu_1159_p2[17],\NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_reg_reg_n_89}),
        .O({\NLW_add_ln16_9_reg_1779_reg[17]_i_1_O_UNCONNECTED [3:1],add_ln16_9_fu_1159_p2[16]}),
        .S({1'b0,1'b0,1'b1,\add_ln16_9_reg_1779[17]_i_2_n_0 }));
  CARRY4 \add_ln16_9_reg_1779_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_9_reg_1779_reg[3]_i_1_n_0 ,\add_ln16_9_reg_1779_reg[3]_i_1_n_1 ,\add_ln16_9_reg_1779_reg[3]_i_1_n_2 ,\add_ln16_9_reg_1779_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(add_ln16_9_fu_1159_p2[3:0]),
        .S({\add_ln16_9_reg_1779[3]_i_2_n_0 ,\add_ln16_9_reg_1779[3]_i_3_n_0 ,\add_ln16_9_reg_1779[3]_i_4_n_0 ,\add_ln16_9_reg_1779[3]_i_5_n_0 }));
  CARRY4 \add_ln16_9_reg_1779_reg[7]_i_1 
       (.CI(\add_ln16_9_reg_1779_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_9_reg_1779_reg[7]_i_1_n_0 ,\add_ln16_9_reg_1779_reg[7]_i_1_n_1 ,\add_ln16_9_reg_1779_reg[7]_i_1_n_2 ,\add_ln16_9_reg_1779_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(add_ln16_9_fu_1159_p2[7:4]),
        .S({\add_ln16_9_reg_1779[7]_i_2_n_0 ,\add_ln16_9_reg_1779[7]_i_3_n_0 ,\add_ln16_9_reg_1779[7]_i_4_n_0 ,\add_ln16_9_reg_1779[7]_i_5_n_0 }));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(a_load_11_reg_14690),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(a_load_11_reg_14690),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hE200)) 
    p_reg_reg_i_1__0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .O(a_load_11_reg_14690));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17
   (D,
    reg_4460,
    a_load_11_reg_14690,
    ap_clk,
    a_q1,
    b_q0,
    P,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    ap_start);
  output [16:0]D;
  output reg_4460;
  input a_load_11_reg_14690;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;
  input [15:0]P;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input ap_start;

  wire [16:0]D;
  wire [15:0]P;
  wire [1:0]Q;
  wire a_load_11_reg_14690;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q0;
  wire reg_4460;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_4460),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(a_load_11_reg_14690),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hE200)) 
    p_reg_reg_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .O(reg_4460));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18
   (add_ln16_6_fu_1108_p2,
    reg_4460,
    p_reg_reg_0,
    ap_clk,
    B,
    b_q1,
    P,
    Q,
    \add_ln16_6_reg_1749_reg[18] );
  output [18:0]add_ln16_6_fu_1108_p2;
  input reg_4460;
  input p_reg_reg_0;
  input ap_clk;
  input [7:0]B;
  input [7:0]b_q1;
  input [15:0]P;
  input [17:0]Q;
  input [16:0]\add_ln16_6_reg_1749_reg[18] ;

  wire [7:0]B;
  wire [15:0]P;
  wire [17:0]Q;
  wire [18:0]add_ln16_6_fu_1108_p2;
  wire \add_ln16_6_reg_1749[11]_i_2_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_3_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_4_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_5_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_6_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_7_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_8_n_0 ;
  wire \add_ln16_6_reg_1749[11]_i_9_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_2_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_3_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_4_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_5_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_6_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_7_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_8_n_0 ;
  wire \add_ln16_6_reg_1749[15]_i_9_n_0 ;
  wire \add_ln16_6_reg_1749[18]_i_2_n_0 ;
  wire \add_ln16_6_reg_1749[18]_i_3_n_0 ;
  wire \add_ln16_6_reg_1749[18]_i_4_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_2_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_3_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_4_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_5_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_6_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_7_n_0 ;
  wire \add_ln16_6_reg_1749[3]_i_8_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_2_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_3_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_4_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_5_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_6_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_7_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_8_n_0 ;
  wire \add_ln16_6_reg_1749[7]_i_9_n_0 ;
  wire \add_ln16_6_reg_1749_reg[11]_i_1_n_0 ;
  wire \add_ln16_6_reg_1749_reg[11]_i_1_n_1 ;
  wire \add_ln16_6_reg_1749_reg[11]_i_1_n_2 ;
  wire \add_ln16_6_reg_1749_reg[11]_i_1_n_3 ;
  wire \add_ln16_6_reg_1749_reg[15]_i_1_n_0 ;
  wire \add_ln16_6_reg_1749_reg[15]_i_1_n_1 ;
  wire \add_ln16_6_reg_1749_reg[15]_i_1_n_2 ;
  wire \add_ln16_6_reg_1749_reg[15]_i_1_n_3 ;
  wire [16:0]\add_ln16_6_reg_1749_reg[18] ;
  wire \add_ln16_6_reg_1749_reg[18]_i_1_n_3 ;
  wire \add_ln16_6_reg_1749_reg[3]_i_1_n_0 ;
  wire \add_ln16_6_reg_1749_reg[3]_i_1_n_1 ;
  wire \add_ln16_6_reg_1749_reg[3]_i_1_n_2 ;
  wire \add_ln16_6_reg_1749_reg[3]_i_1_n_3 ;
  wire \add_ln16_6_reg_1749_reg[7]_i_1_n_0 ;
  wire \add_ln16_6_reg_1749_reg[7]_i_1_n_1 ;
  wire \add_ln16_6_reg_1749_reg[7]_i_1_n_2 ;
  wire \add_ln16_6_reg_1749_reg[7]_i_1_n_3 ;
  wire ap_clk;
  wire [7:0]b_q1;
  wire p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire reg_4460;
  wire [3:1]\NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_6_reg_1749_reg[18]_i_1_O_UNCONNECTED ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[11]_i_2 
       (.I0(\add_ln16_6_reg_1749_reg[18] [10]),
        .I1(Q[10]),
        .I2(p_reg_reg_n_95),
        .O(\add_ln16_6_reg_1749[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[11]_i_3 
       (.I0(\add_ln16_6_reg_1749_reg[18] [9]),
        .I1(Q[9]),
        .I2(p_reg_reg_n_96),
        .O(\add_ln16_6_reg_1749[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[11]_i_4 
       (.I0(\add_ln16_6_reg_1749_reg[18] [8]),
        .I1(Q[8]),
        .I2(p_reg_reg_n_97),
        .O(\add_ln16_6_reg_1749[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[11]_i_5 
       (.I0(\add_ln16_6_reg_1749_reg[18] [7]),
        .I1(Q[7]),
        .I2(p_reg_reg_n_98),
        .O(\add_ln16_6_reg_1749[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[11]_i_6 
       (.I0(\add_ln16_6_reg_1749_reg[18] [11]),
        .I1(Q[11]),
        .I2(p_reg_reg_n_94),
        .I3(\add_ln16_6_reg_1749[11]_i_2_n_0 ),
        .O(\add_ln16_6_reg_1749[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[11]_i_7 
       (.I0(\add_ln16_6_reg_1749_reg[18] [10]),
        .I1(Q[10]),
        .I2(p_reg_reg_n_95),
        .I3(\add_ln16_6_reg_1749[11]_i_3_n_0 ),
        .O(\add_ln16_6_reg_1749[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[11]_i_8 
       (.I0(\add_ln16_6_reg_1749_reg[18] [9]),
        .I1(Q[9]),
        .I2(p_reg_reg_n_96),
        .I3(\add_ln16_6_reg_1749[11]_i_4_n_0 ),
        .O(\add_ln16_6_reg_1749[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[11]_i_9 
       (.I0(\add_ln16_6_reg_1749_reg[18] [8]),
        .I1(Q[8]),
        .I2(p_reg_reg_n_97),
        .I3(\add_ln16_6_reg_1749[11]_i_5_n_0 ),
        .O(\add_ln16_6_reg_1749[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[15]_i_2 
       (.I0(\add_ln16_6_reg_1749_reg[18] [14]),
        .I1(Q[14]),
        .I2(p_reg_reg_n_91),
        .O(\add_ln16_6_reg_1749[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[15]_i_3 
       (.I0(\add_ln16_6_reg_1749_reg[18] [13]),
        .I1(Q[13]),
        .I2(p_reg_reg_n_92),
        .O(\add_ln16_6_reg_1749[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[15]_i_4 
       (.I0(\add_ln16_6_reg_1749_reg[18] [12]),
        .I1(Q[12]),
        .I2(p_reg_reg_n_93),
        .O(\add_ln16_6_reg_1749[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[15]_i_5 
       (.I0(\add_ln16_6_reg_1749_reg[18] [11]),
        .I1(Q[11]),
        .I2(p_reg_reg_n_94),
        .O(\add_ln16_6_reg_1749[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[15]_i_6 
       (.I0(\add_ln16_6_reg_1749_reg[18] [15]),
        .I1(Q[15]),
        .I2(p_reg_reg_n_90),
        .I3(\add_ln16_6_reg_1749[15]_i_2_n_0 ),
        .O(\add_ln16_6_reg_1749[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[15]_i_7 
       (.I0(\add_ln16_6_reg_1749_reg[18] [14]),
        .I1(Q[14]),
        .I2(p_reg_reg_n_91),
        .I3(\add_ln16_6_reg_1749[15]_i_3_n_0 ),
        .O(\add_ln16_6_reg_1749[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[15]_i_8 
       (.I0(\add_ln16_6_reg_1749_reg[18] [13]),
        .I1(Q[13]),
        .I2(p_reg_reg_n_92),
        .I3(\add_ln16_6_reg_1749[15]_i_4_n_0 ),
        .O(\add_ln16_6_reg_1749[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[15]_i_9 
       (.I0(\add_ln16_6_reg_1749_reg[18] [12]),
        .I1(Q[12]),
        .I2(p_reg_reg_n_93),
        .I3(\add_ln16_6_reg_1749[15]_i_5_n_0 ),
        .O(\add_ln16_6_reg_1749[15]_i_9_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[18]_i_2 
       (.I0(\add_ln16_6_reg_1749_reg[18] [15]),
        .I1(Q[15]),
        .I2(p_reg_reg_n_90),
        .O(\add_ln16_6_reg_1749[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \add_ln16_6_reg_1749[18]_i_3 
       (.I0(p_reg_reg_n_89),
        .I1(Q[16]),
        .I2(\add_ln16_6_reg_1749_reg[18] [16]),
        .I3(Q[17]),
        .O(\add_ln16_6_reg_1749[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[18]_i_4 
       (.I0(\add_ln16_6_reg_1749[18]_i_2_n_0 ),
        .I1(Q[16]),
        .I2(\add_ln16_6_reg_1749_reg[18] [16]),
        .I3(p_reg_reg_n_89),
        .O(\add_ln16_6_reg_1749[18]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[3]_i_2 
       (.I0(\add_ln16_6_reg_1749_reg[18] [2]),
        .I1(Q[2]),
        .I2(p_reg_reg_n_103),
        .O(\add_ln16_6_reg_1749[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[3]_i_3 
       (.I0(\add_ln16_6_reg_1749_reg[18] [1]),
        .I1(Q[1]),
        .I2(p_reg_reg_n_104),
        .O(\add_ln16_6_reg_1749[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[3]_i_4 
       (.I0(\add_ln16_6_reg_1749_reg[18] [0]),
        .I1(Q[0]),
        .I2(p_reg_reg_n_105),
        .O(\add_ln16_6_reg_1749[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[3]_i_5 
       (.I0(\add_ln16_6_reg_1749_reg[18] [3]),
        .I1(Q[3]),
        .I2(p_reg_reg_n_102),
        .I3(\add_ln16_6_reg_1749[3]_i_2_n_0 ),
        .O(\add_ln16_6_reg_1749[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[3]_i_6 
       (.I0(\add_ln16_6_reg_1749_reg[18] [2]),
        .I1(Q[2]),
        .I2(p_reg_reg_n_103),
        .I3(\add_ln16_6_reg_1749[3]_i_3_n_0 ),
        .O(\add_ln16_6_reg_1749[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[3]_i_7 
       (.I0(\add_ln16_6_reg_1749_reg[18] [1]),
        .I1(Q[1]),
        .I2(p_reg_reg_n_104),
        .I3(\add_ln16_6_reg_1749[3]_i_4_n_0 ),
        .O(\add_ln16_6_reg_1749[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln16_6_reg_1749[3]_i_8 
       (.I0(\add_ln16_6_reg_1749_reg[18] [0]),
        .I1(Q[0]),
        .I2(p_reg_reg_n_105),
        .O(\add_ln16_6_reg_1749[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[7]_i_2 
       (.I0(\add_ln16_6_reg_1749_reg[18] [6]),
        .I1(Q[6]),
        .I2(p_reg_reg_n_99),
        .O(\add_ln16_6_reg_1749[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[7]_i_3 
       (.I0(\add_ln16_6_reg_1749_reg[18] [5]),
        .I1(Q[5]),
        .I2(p_reg_reg_n_100),
        .O(\add_ln16_6_reg_1749[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[7]_i_4 
       (.I0(\add_ln16_6_reg_1749_reg[18] [4]),
        .I1(Q[4]),
        .I2(p_reg_reg_n_101),
        .O(\add_ln16_6_reg_1749[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln16_6_reg_1749[7]_i_5 
       (.I0(\add_ln16_6_reg_1749_reg[18] [3]),
        .I1(Q[3]),
        .I2(p_reg_reg_n_102),
        .O(\add_ln16_6_reg_1749[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[7]_i_6 
       (.I0(\add_ln16_6_reg_1749_reg[18] [7]),
        .I1(Q[7]),
        .I2(p_reg_reg_n_98),
        .I3(\add_ln16_6_reg_1749[7]_i_2_n_0 ),
        .O(\add_ln16_6_reg_1749[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[7]_i_7 
       (.I0(\add_ln16_6_reg_1749_reg[18] [6]),
        .I1(Q[6]),
        .I2(p_reg_reg_n_99),
        .I3(\add_ln16_6_reg_1749[7]_i_3_n_0 ),
        .O(\add_ln16_6_reg_1749[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[7]_i_8 
       (.I0(\add_ln16_6_reg_1749_reg[18] [5]),
        .I1(Q[5]),
        .I2(p_reg_reg_n_100),
        .I3(\add_ln16_6_reg_1749[7]_i_4_n_0 ),
        .O(\add_ln16_6_reg_1749[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln16_6_reg_1749[7]_i_9 
       (.I0(\add_ln16_6_reg_1749_reg[18] [4]),
        .I1(Q[4]),
        .I2(p_reg_reg_n_101),
        .I3(\add_ln16_6_reg_1749[7]_i_5_n_0 ),
        .O(\add_ln16_6_reg_1749[7]_i_9_n_0 ));
  CARRY4 \add_ln16_6_reg_1749_reg[11]_i_1 
       (.CI(\add_ln16_6_reg_1749_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_1749_reg[11]_i_1_n_0 ,\add_ln16_6_reg_1749_reg[11]_i_1_n_1 ,\add_ln16_6_reg_1749_reg[11]_i_1_n_2 ,\add_ln16_6_reg_1749_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_6_reg_1749[11]_i_2_n_0 ,\add_ln16_6_reg_1749[11]_i_3_n_0 ,\add_ln16_6_reg_1749[11]_i_4_n_0 ,\add_ln16_6_reg_1749[11]_i_5_n_0 }),
        .O(add_ln16_6_fu_1108_p2[11:8]),
        .S({\add_ln16_6_reg_1749[11]_i_6_n_0 ,\add_ln16_6_reg_1749[11]_i_7_n_0 ,\add_ln16_6_reg_1749[11]_i_8_n_0 ,\add_ln16_6_reg_1749[11]_i_9_n_0 }));
  CARRY4 \add_ln16_6_reg_1749_reg[15]_i_1 
       (.CI(\add_ln16_6_reg_1749_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_1749_reg[15]_i_1_n_0 ,\add_ln16_6_reg_1749_reg[15]_i_1_n_1 ,\add_ln16_6_reg_1749_reg[15]_i_1_n_2 ,\add_ln16_6_reg_1749_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_6_reg_1749[15]_i_2_n_0 ,\add_ln16_6_reg_1749[15]_i_3_n_0 ,\add_ln16_6_reg_1749[15]_i_4_n_0 ,\add_ln16_6_reg_1749[15]_i_5_n_0 }),
        .O(add_ln16_6_fu_1108_p2[15:12]),
        .S({\add_ln16_6_reg_1749[15]_i_6_n_0 ,\add_ln16_6_reg_1749[15]_i_7_n_0 ,\add_ln16_6_reg_1749[15]_i_8_n_0 ,\add_ln16_6_reg_1749[15]_i_9_n_0 }));
  CARRY4 \add_ln16_6_reg_1749_reg[18]_i_1 
       (.CI(\add_ln16_6_reg_1749_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED [3],add_ln16_6_fu_1108_p2[18],\NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED [1],\add_ln16_6_reg_1749_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[17],\add_ln16_6_reg_1749[18]_i_2_n_0 }),
        .O({\NLW_add_ln16_6_reg_1749_reg[18]_i_1_O_UNCONNECTED [3:2],add_ln16_6_fu_1108_p2[17:16]}),
        .S({1'b0,1'b1,\add_ln16_6_reg_1749[18]_i_3_n_0 ,\add_ln16_6_reg_1749[18]_i_4_n_0 }));
  CARRY4 \add_ln16_6_reg_1749_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_1749_reg[3]_i_1_n_0 ,\add_ln16_6_reg_1749_reg[3]_i_1_n_1 ,\add_ln16_6_reg_1749_reg[3]_i_1_n_2 ,\add_ln16_6_reg_1749_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_6_reg_1749[3]_i_2_n_0 ,\add_ln16_6_reg_1749[3]_i_3_n_0 ,\add_ln16_6_reg_1749[3]_i_4_n_0 ,1'b0}),
        .O(add_ln16_6_fu_1108_p2[3:0]),
        .S({\add_ln16_6_reg_1749[3]_i_5_n_0 ,\add_ln16_6_reg_1749[3]_i_6_n_0 ,\add_ln16_6_reg_1749[3]_i_7_n_0 ,\add_ln16_6_reg_1749[3]_i_8_n_0 }));
  CARRY4 \add_ln16_6_reg_1749_reg[7]_i_1 
       (.CI(\add_ln16_6_reg_1749_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_1749_reg[7]_i_1_n_0 ,\add_ln16_6_reg_1749_reg[7]_i_1_n_1 ,\add_ln16_6_reg_1749_reg[7]_i_1_n_2 ,\add_ln16_6_reg_1749_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_6_reg_1749[7]_i_2_n_0 ,\add_ln16_6_reg_1749[7]_i_3_n_0 ,\add_ln16_6_reg_1749[7]_i_4_n_0 ,\add_ln16_6_reg_1749[7]_i_5_n_0 }),
        .O(add_ln16_6_fu_1108_p2[7:4]),
        .S({\add_ln16_6_reg_1749[7]_i_6_n_0 ,\add_ln16_6_reg_1749[7]_i_7_n_0 ,\add_ln16_6_reg_1749[7]_i_8_n_0 ,\add_ln16_6_reg_1749[7]_i_9_n_0 }));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_4460),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(p_reg_reg_0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19
   (reg_4240,
    reg_4280,
    add_ln16_2_fu_1060_p2,
    ap_clk,
    a_q1,
    b_q1,
    P,
    Q,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    ap_enable_reg_pp0_iter1,
    \add_ln16_2_reg_1729_reg[17] );
  output reg_4240;
  output reg_4280;
  output [17:0]add_ln16_2_fu_1060_p2;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q1;
  input [15:0]P;
  input [3:0]Q;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_enable_reg_pp0_iter1;
  input [16:0]\add_ln16_2_reg_1729_reg[17] ;

  wire [15:0]P;
  wire [3:0]Q;
  wire [7:0]a_q1;
  wire [17:0]add_ln16_2_fu_1060_p2;
  wire \add_ln16_2_reg_1729[11]_i_2_n_0 ;
  wire \add_ln16_2_reg_1729[11]_i_3_n_0 ;
  wire \add_ln16_2_reg_1729[11]_i_4_n_0 ;
  wire \add_ln16_2_reg_1729[11]_i_5_n_0 ;
  wire \add_ln16_2_reg_1729[15]_i_2_n_0 ;
  wire \add_ln16_2_reg_1729[15]_i_3_n_0 ;
  wire \add_ln16_2_reg_1729[15]_i_4_n_0 ;
  wire \add_ln16_2_reg_1729[15]_i_5_n_0 ;
  wire \add_ln16_2_reg_1729[17]_i_2_n_0 ;
  wire \add_ln16_2_reg_1729[3]_i_2_n_0 ;
  wire \add_ln16_2_reg_1729[3]_i_3_n_0 ;
  wire \add_ln16_2_reg_1729[3]_i_4_n_0 ;
  wire \add_ln16_2_reg_1729[3]_i_5_n_0 ;
  wire \add_ln16_2_reg_1729[7]_i_2_n_0 ;
  wire \add_ln16_2_reg_1729[7]_i_3_n_0 ;
  wire \add_ln16_2_reg_1729[7]_i_4_n_0 ;
  wire \add_ln16_2_reg_1729[7]_i_5_n_0 ;
  wire \add_ln16_2_reg_1729_reg[11]_i_1_n_0 ;
  wire \add_ln16_2_reg_1729_reg[11]_i_1_n_1 ;
  wire \add_ln16_2_reg_1729_reg[11]_i_1_n_2 ;
  wire \add_ln16_2_reg_1729_reg[11]_i_1_n_3 ;
  wire \add_ln16_2_reg_1729_reg[15]_i_1_n_0 ;
  wire \add_ln16_2_reg_1729_reg[15]_i_1_n_1 ;
  wire \add_ln16_2_reg_1729_reg[15]_i_1_n_2 ;
  wire \add_ln16_2_reg_1729_reg[15]_i_1_n_3 ;
  wire [16:0]\add_ln16_2_reg_1729_reg[17] ;
  wire \add_ln16_2_reg_1729_reg[3]_i_1_n_0 ;
  wire \add_ln16_2_reg_1729_reg[3]_i_1_n_1 ;
  wire \add_ln16_2_reg_1729_reg[3]_i_1_n_2 ;
  wire \add_ln16_2_reg_1729_reg[3]_i_1_n_3 ;
  wire \add_ln16_2_reg_1729_reg[7]_i_1_n_0 ;
  wire \add_ln16_2_reg_1729_reg[7]_i_1_n_1 ;
  wire \add_ln16_2_reg_1729_reg[7]_i_1_n_2 ;
  wire \add_ln16_2_reg_1729_reg[7]_i_1_n_3 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire [7:0]b_q1;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire reg_4240;
  wire reg_4280;
  wire [3:0]\NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_2_reg_1729_reg[17]_i_1_O_UNCONNECTED ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[11]_i_2 
       (.I0(\add_ln16_2_reg_1729_reg[17] [11]),
        .I1(p_reg_reg_n_94),
        .O(\add_ln16_2_reg_1729[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[11]_i_3 
       (.I0(\add_ln16_2_reg_1729_reg[17] [10]),
        .I1(p_reg_reg_n_95),
        .O(\add_ln16_2_reg_1729[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[11]_i_4 
       (.I0(\add_ln16_2_reg_1729_reg[17] [9]),
        .I1(p_reg_reg_n_96),
        .O(\add_ln16_2_reg_1729[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[11]_i_5 
       (.I0(\add_ln16_2_reg_1729_reg[17] [8]),
        .I1(p_reg_reg_n_97),
        .O(\add_ln16_2_reg_1729[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[15]_i_2 
       (.I0(\add_ln16_2_reg_1729_reg[17] [15]),
        .I1(p_reg_reg_n_90),
        .O(\add_ln16_2_reg_1729[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[15]_i_3 
       (.I0(\add_ln16_2_reg_1729_reg[17] [14]),
        .I1(p_reg_reg_n_91),
        .O(\add_ln16_2_reg_1729[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[15]_i_4 
       (.I0(\add_ln16_2_reg_1729_reg[17] [13]),
        .I1(p_reg_reg_n_92),
        .O(\add_ln16_2_reg_1729[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[15]_i_5 
       (.I0(\add_ln16_2_reg_1729_reg[17] [12]),
        .I1(p_reg_reg_n_93),
        .O(\add_ln16_2_reg_1729[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[17]_i_2 
       (.I0(\add_ln16_2_reg_1729_reg[17] [16]),
        .I1(p_reg_reg_n_89),
        .O(\add_ln16_2_reg_1729[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[3]_i_2 
       (.I0(\add_ln16_2_reg_1729_reg[17] [3]),
        .I1(p_reg_reg_n_102),
        .O(\add_ln16_2_reg_1729[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[3]_i_3 
       (.I0(\add_ln16_2_reg_1729_reg[17] [2]),
        .I1(p_reg_reg_n_103),
        .O(\add_ln16_2_reg_1729[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[3]_i_4 
       (.I0(\add_ln16_2_reg_1729_reg[17] [1]),
        .I1(p_reg_reg_n_104),
        .O(\add_ln16_2_reg_1729[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[3]_i_5 
       (.I0(\add_ln16_2_reg_1729_reg[17] [0]),
        .I1(p_reg_reg_n_105),
        .O(\add_ln16_2_reg_1729[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[7]_i_2 
       (.I0(\add_ln16_2_reg_1729_reg[17] [7]),
        .I1(p_reg_reg_n_98),
        .O(\add_ln16_2_reg_1729[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[7]_i_3 
       (.I0(\add_ln16_2_reg_1729_reg[17] [6]),
        .I1(p_reg_reg_n_99),
        .O(\add_ln16_2_reg_1729[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[7]_i_4 
       (.I0(\add_ln16_2_reg_1729_reg[17] [5]),
        .I1(p_reg_reg_n_100),
        .O(\add_ln16_2_reg_1729[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_1729[7]_i_5 
       (.I0(\add_ln16_2_reg_1729_reg[17] [4]),
        .I1(p_reg_reg_n_101),
        .O(\add_ln16_2_reg_1729[7]_i_5_n_0 ));
  CARRY4 \add_ln16_2_reg_1729_reg[11]_i_1 
       (.CI(\add_ln16_2_reg_1729_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_2_reg_1729_reg[11]_i_1_n_0 ,\add_ln16_2_reg_1729_reg[11]_i_1_n_1 ,\add_ln16_2_reg_1729_reg[11]_i_1_n_2 ,\add_ln16_2_reg_1729_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\add_ln16_2_reg_1729_reg[17] [11:8]),
        .O(add_ln16_2_fu_1060_p2[11:8]),
        .S({\add_ln16_2_reg_1729[11]_i_2_n_0 ,\add_ln16_2_reg_1729[11]_i_3_n_0 ,\add_ln16_2_reg_1729[11]_i_4_n_0 ,\add_ln16_2_reg_1729[11]_i_5_n_0 }));
  CARRY4 \add_ln16_2_reg_1729_reg[15]_i_1 
       (.CI(\add_ln16_2_reg_1729_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_2_reg_1729_reg[15]_i_1_n_0 ,\add_ln16_2_reg_1729_reg[15]_i_1_n_1 ,\add_ln16_2_reg_1729_reg[15]_i_1_n_2 ,\add_ln16_2_reg_1729_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\add_ln16_2_reg_1729_reg[17] [15:12]),
        .O(add_ln16_2_fu_1060_p2[15:12]),
        .S({\add_ln16_2_reg_1729[15]_i_2_n_0 ,\add_ln16_2_reg_1729[15]_i_3_n_0 ,\add_ln16_2_reg_1729[15]_i_4_n_0 ,\add_ln16_2_reg_1729[15]_i_5_n_0 }));
  CARRY4 \add_ln16_2_reg_1729_reg[17]_i_1 
       (.CI(\add_ln16_2_reg_1729_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED [3:2],add_ln16_2_fu_1060_p2[17],\NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln16_2_reg_1729_reg[17] [16]}),
        .O({\NLW_add_ln16_2_reg_1729_reg[17]_i_1_O_UNCONNECTED [3:1],add_ln16_2_fu_1060_p2[16]}),
        .S({1'b0,1'b0,1'b1,\add_ln16_2_reg_1729[17]_i_2_n_0 }));
  CARRY4 \add_ln16_2_reg_1729_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_2_reg_1729_reg[3]_i_1_n_0 ,\add_ln16_2_reg_1729_reg[3]_i_1_n_1 ,\add_ln16_2_reg_1729_reg[3]_i_1_n_2 ,\add_ln16_2_reg_1729_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\add_ln16_2_reg_1729_reg[17] [3:0]),
        .O(add_ln16_2_fu_1060_p2[3:0]),
        .S({\add_ln16_2_reg_1729[3]_i_2_n_0 ,\add_ln16_2_reg_1729[3]_i_3_n_0 ,\add_ln16_2_reg_1729[3]_i_4_n_0 ,\add_ln16_2_reg_1729[3]_i_5_n_0 }));
  CARRY4 \add_ln16_2_reg_1729_reg[7]_i_1 
       (.CI(\add_ln16_2_reg_1729_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_2_reg_1729_reg[7]_i_1_n_0 ,\add_ln16_2_reg_1729_reg[7]_i_1_n_1 ,\add_ln16_2_reg_1729_reg[7]_i_1_n_2 ,\add_ln16_2_reg_1729_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\add_ln16_2_reg_1729_reg[17] [7:4]),
        .O(add_ln16_2_fu_1060_p2[7:4]),
        .S({\add_ln16_2_reg_1729[7]_i_2_n_0 ,\add_ln16_2_reg_1729[7]_i_3_n_0 ,\add_ln16_2_reg_1729[7]_i_4_n_0 ,\add_ln16_2_reg_1729[7]_i_5_n_0 }));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_4240),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(reg_4280),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFFA088A0)) 
    tmp_product_i_1
       (.I0(Q[1]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .O(reg_4240));
  LUT5 #(
    .INIT(32'hE0EEE000)) 
    tmp_product_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(reg_4280));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20
   (D,
    reg_432,
    p_reg_reg_0,
    ap_clk,
    B,
    A,
    P);
  output [16:0]D;
  input reg_432;
  input p_reg_reg_0;
  input ap_clk;
  input [7:0]B;
  input [7:0]A;
  input [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [16:0]D;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_0;
  wire reg_432;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(reg_432),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(p_reg_reg_0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:17],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1
   (P,
    reg_4370,
    tmp_product_0,
    ap_clk,
    B,
    b_q1);
  output [15:0]P;
  input reg_4370;
  input tmp_product_0;
  input ap_clk;
  input [7:0]B;
  input [7:0]b_q1;

  wire [7:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire [7:0]b_q1;
  wire reg_4370;
  wire tmp_product_0;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_4370),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(tmp_product_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10
   (P,
    \ap_CS_fsm_reg[3] ,
    B,
    ap_clk,
    b_q0,
    Q,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    ap_enable_reg_pp0_iter1,
    a_q0,
    a_q1);
  output [15:0]P;
  output \ap_CS_fsm_reg[3] ;
  output [7:0]B;
  input ap_clk;
  input [7:0]b_q0;
  input [2:0]Q;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_enable_reg_pp0_iter1;
  input [7:0]a_q0;
  input [7:0]a_q1;

  wire [7:0]B;
  wire [15:0]P;
  wire [2:0]Q;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire [7:0]b_q0;
  wire reg_4462;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_10__0
       (.I0(a_q0[0]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[0]),
        .O(B[0]));
  LUT5 #(
    .INIT(32'hFFA088A0)) 
    p_reg_reg_i_2
       (.I0(Q[1]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm_reg[3] ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_3__0
       (.I0(a_q0[7]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[7]),
        .O(B[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_4__0
       (.I0(a_q0[6]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[6]),
        .O(B[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_5__0
       (.I0(a_q0[5]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[5]),
        .O(B[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_6__0
       (.I0(a_q0[4]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[4]),
        .O(B[4]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_7__0
       (.I0(a_q0[3]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[3]),
        .O(B[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_8__0
       (.I0(a_q0[2]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[2]),
        .O(B[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    p_reg_reg_i_9__0
       (.I0(a_q0[1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(a_q1[1]),
        .O(B[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_4462),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\ap_CS_fsm_reg[3] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hE200)) 
    tmp_product_i_1__1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[2]),
        .O(reg_4462));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11
   (P,
    E,
    tmp_product_0,
    ap_clk,
    a_q0,
    b_q1);
  output [15:0]P;
  input [0:0]E;
  input [0:0]tmp_product_0;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q1;

  wire [0:0]E;
  wire [15:0]P;
  wire [7:0]a_q0;
  wire ap_clk;
  wire [7:0]b_q1;
  wire [0:0]tmp_product_0;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(tmp_product_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12
   (P,
    ap_ready_int,
    E,
    ap_clk,
    a_q1,
    b_q0);
  output [15:0]P;
  input ap_ready_int;
  input [0:0]E;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;

  wire [0:0]E;
  wire [15:0]P;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_ready_int;
  wire [7:0]b_q0;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_ready_int),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(E),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13
   (P,
    E,
    ap_enable_reg_pp0_iter1_reg,
    ap_clk,
    a_q0,
    b_q0,
    Q,
    ap_enable_reg_pp0_iter1);
  output [15:0]P;
  output [0:0]E;
  output [0:0]ap_enable_reg_pp0_iter1_reg;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q0;
  input [1:0]Q;
  input ap_enable_reg_pp0_iter1;

  wire [0:0]E;
  wire [15:0]P;
  wire [1:0]Q;
  wire [7:0]a_q0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [0:0]ap_enable_reg_pp0_iter1_reg;
  wire [7:0]b_q0;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \add_ln16_1_reg_1679[16]_i_1 
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter1),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \add_ln16_3_reg_1709[16]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .O(ap_enable_reg_pp0_iter1_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_enable_reg_pp0_iter1_reg),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7
   (P,
    reg_4560,
    reg_4280,
    ap_clk,
    a_q1,
    b_q0);
  output [15:0]P;
  input reg_4560;
  input reg_4280;
  input ap_clk;
  input [7:0]a_q1;
  input [7:0]b_q0;

  wire [15:0]P;
  wire [7:0]a_q1;
  wire ap_clk;
  wire [7:0]b_q0;
  wire reg_4280;
  wire reg_4560;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_4560),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(reg_4280),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8
   (P,
    reg_4240,
    reg_432,
    ap_clk,
    B,
    b_q1);
  output [15:0]P;
  input reg_4240;
  input reg_432;
  input ap_clk;
  input [7:0]B;
  input [7:0]b_q1;

  wire [7:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire [7:0]b_q1;
  wire reg_4240;
  wire reg_432;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_4240),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(reg_432),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "matrix_mult_mul_8ns_8ns_16_1_1" *) 
module bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9
   (P,
    reg_432,
    \ap_CS_fsm_reg[3] ,
    B,
    A,
    ap_enable_reg_pp0_iter0,
    ap_clk,
    Q,
    ap_start,
    ap_enable_reg_pp0_iter0_reg,
    a_q0,
    a_q1,
    b_q1,
    b_q0);
  output [15:0]P;
  output reg_432;
  output \ap_CS_fsm_reg[3] ;
  output [7:0]B;
  output [7:0]A;
  output ap_enable_reg_pp0_iter0;
  input ap_clk;
  input [4:0]Q;
  input ap_start;
  input ap_enable_reg_pp0_iter0_reg;
  input [7:0]a_q0;
  input [7:0]a_q1;
  input [7:0]b_q1;
  input [7:0]b_q0;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]P;
  wire [4:0]Q;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [7:0]b_q0;
  wire [7:0]b_q1;
  wire reg_432;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \a_address1[3]_INST_0_i_3 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_10
       (.I0(a_q0[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_11
       (.I0(b_q1[7]),
        .I1(Q[3]),
        .I2(b_q0[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_12
       (.I0(b_q1[6]),
        .I1(Q[3]),
        .I2(b_q0[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_13
       (.I0(b_q1[5]),
        .I1(Q[3]),
        .I2(b_q0[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_14
       (.I0(b_q1[4]),
        .I1(Q[3]),
        .I2(b_q0[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_15
       (.I0(b_q1[3]),
        .I1(Q[3]),
        .I2(b_q0[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_16
       (.I0(b_q1[2]),
        .I1(Q[3]),
        .I2(b_q0[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_17
       (.I0(b_q1[1]),
        .I1(Q[3]),
        .I2(b_q0[1]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_reg_reg_i_18
       (.I0(b_q1[0]),
        .I1(Q[3]),
        .I2(b_q0[0]),
        .O(A[0]));
  LUT5 #(
    .INIT(32'hE0EEE000)) 
    p_reg_reg_i_1__1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(reg_432));
  LUT6 #(
    .INIT(64'hCFC0CFC0CFC08A80)) 
    p_reg_reg_i_2__0
       (.I0(Q[2]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\ap_CS_fsm_reg[3] ));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_3
       (.I0(a_q0[7]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[7]),
        .O(B[7]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_4
       (.I0(a_q0[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[6]),
        .O(B[6]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_5
       (.I0(a_q0[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[5]),
        .O(B[5]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_6
       (.I0(a_q0[4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[4]),
        .O(B[4]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_7
       (.I0(a_q0[3]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[3]),
        .O(B[3]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_8
       (.I0(a_q0[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[2]),
        .O(B[2]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    p_reg_reg_i_9
       (.I0(a_q0[1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(a_q1[1]),
        .O(B[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_432),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\ap_CS_fsm_reg[3] ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product_n_88,tmp_product_n_89,P}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
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
