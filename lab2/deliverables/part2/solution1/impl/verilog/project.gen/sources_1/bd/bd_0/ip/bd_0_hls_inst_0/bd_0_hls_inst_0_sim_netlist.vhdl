-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Fri Feb 27 11:30:19 2026
-- Host        : sc017 running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/yliu1047/RC/lab2/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe is
  port (
    \icmp_ln12_reg_1630_reg[0]\ : out STD_LOGIC;
    \indvar_flatten1_fu_114_reg[4]\ : out STD_LOGIC;
    ap_ready_int : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    icmp_ln12_reg_1630 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    icmp_ln10_reg_1635 : in STD_LOGIC;
    \icmp_ln124_reg_413_reg[0]\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_loop_init_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \b_address1[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    trunc_ln16_reg_1336 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \b_address1[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bit_sel_reg_1331 : in STD_LOGIC;
    zext_ln16_47_reg_1404 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe : entity is "matrix_mult_flow_control_loop_pipe";
end bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe is
  signal \^ap_cs_fsm_reg[3]\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[4]\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[4]_0\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^ap_ready_int\ : STD_LOGIC;
  signal \b_address1[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address1[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \b_address1[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \b_address1[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \^indvar_flatten1_fu_114_reg[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_address1[3]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \a_address1[7]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b_address1[3]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b_address1[3]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b_address1[4]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \b_address1[4]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \b_address1[4]_INST_0_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b_address1[7]_INST_0_i_2\ : label is "soft_lutpair3";
begin
  \ap_CS_fsm_reg[3]\ <= \^ap_cs_fsm_reg[3]\;
  \ap_CS_fsm_reg[4]\ <= \^ap_cs_fsm_reg[4]\;
  \ap_CS_fsm_reg[4]_0\ <= \^ap_cs_fsm_reg[4]_0\;
  ap_ready_int <= \^ap_ready_int\;
  \indvar_flatten1_fu_114_reg[4]\ <= \^indvar_flatten1_fu_114_reg[4]\;
\a_address1[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => \^ap_cs_fsm_reg[3]\
    );
\a_address1[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => Q(6),
      I4 => Q(7),
      O => \^ap_cs_fsm_reg[4]\
    );
ap_loop_init_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAEEEEAAAAEEEE"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_loop_init,
      I2 => \^indvar_flatten1_fu_114_reg[4]\,
      I3 => ap_loop_init_reg_0(6),
      I4 => \^ap_ready_int\,
      I5 => ap_loop_init_reg_0(7),
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(7),
      O => \^ap_ready_int\
    );
ap_ready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ap_loop_init_reg_0(4),
      I1 => ap_loop_init_reg_0(2),
      I2 => ap_loop_init_reg_0(0),
      I3 => ap_loop_init_reg_0(1),
      I4 => ap_loop_init_reg_0(3),
      I5 => ap_loop_init_reg_0(5),
      O => \^indvar_flatten1_fu_114_reg[4]\
    );
\b_address1[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \b_address1[4]\(0),
      I1 => \b_address1[3]_INST_0_i_1_n_0\,
      I2 => \b_address1[3]_INST_0_i_2_n_0\,
      I3 => trunc_ln16_reg_1336(0),
      I4 => \b_address1[0]_INST_0_i_1_n_0\,
      O => b_address1(0)
    );
\b_address1[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => zext_ln16_47_reg_1404(0),
      I1 => \b_address1[3]_INST_0_i_4_n_0\,
      I2 => \b_address1[4]_0\(0),
      I3 => \b_address1[4]_INST_0_i_7_n_0\,
      I4 => \b_address1[4]_INST_0_i_6_n_0\,
      I5 => \^ap_cs_fsm_reg[4]\,
      O => \b_address1[0]_INST_0_i_1_n_0\
    );
\b_address1[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \b_address1[4]\(1),
      I1 => \b_address1[3]_INST_0_i_1_n_0\,
      I2 => \b_address1[3]_INST_0_i_2_n_0\,
      I3 => trunc_ln16_reg_1336(1),
      I4 => \b_address1[1]_INST_0_i_1_n_0\,
      O => b_address1(1)
    );
\b_address1[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => zext_ln16_47_reg_1404(1),
      I1 => \b_address1[3]_INST_0_i_4_n_0\,
      I2 => \b_address1[4]_0\(1),
      I3 => \b_address1[4]_INST_0_i_7_n_0\,
      I4 => \b_address1[4]_INST_0_i_6_n_0\,
      I5 => \^ap_cs_fsm_reg[4]\,
      O => \b_address1[1]_INST_0_i_1_n_0\
    );
\b_address1[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \b_address1[4]\(2),
      I1 => \b_address1[3]_INST_0_i_1_n_0\,
      I2 => \b_address1[3]_INST_0_i_2_n_0\,
      I3 => trunc_ln16_reg_1336(2),
      I4 => \b_address1[2]_INST_0_i_1_n_0\,
      O => b_address1(2)
    );
\b_address1[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => zext_ln16_47_reg_1404(2),
      I1 => \b_address1[3]_INST_0_i_4_n_0\,
      I2 => \b_address1[4]_0\(2),
      I3 => \b_address1[4]_INST_0_i_7_n_0\,
      I4 => \b_address1[4]_INST_0_i_6_n_0\,
      I5 => \^ap_cs_fsm_reg[4]\,
      O => \b_address1[2]_INST_0_i_1_n_0\
    );
\b_address1[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \b_address1[4]\(3),
      I1 => \b_address1[3]_INST_0_i_1_n_0\,
      I2 => \b_address1[3]_INST_0_i_2_n_0\,
      I3 => trunc_ln16_reg_1336(3),
      I4 => \b_address1[3]_INST_0_i_3_n_0\,
      O => b_address1(3)
    );
\b_address1[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(7),
      O => \b_address1[3]_INST_0_i_1_n_0\
    );
\b_address1[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4F5F4F4"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(3),
      I4 => \b_address1[4]_INST_0_i_6_n_0\,
      I5 => Q(7),
      O => \b_address1[3]_INST_0_i_2_n_0\
    );
\b_address1[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888F888"
    )
        port map (
      I0 => zext_ln16_47_reg_1404(3),
      I1 => \b_address1[3]_INST_0_i_4_n_0\,
      I2 => \b_address1[4]_0\(3),
      I3 => \b_address1[4]_INST_0_i_7_n_0\,
      I4 => \b_address1[4]_INST_0_i_6_n_0\,
      I5 => \^ap_cs_fsm_reg[4]\,
      O => \b_address1[3]_INST_0_i_3_n_0\
    );
\b_address1[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(6),
      I4 => Q(7),
      O => \b_address1[3]_INST_0_i_4_n_0\
    );
\b_address1[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => Q(7),
      I1 => \b_address1[4]\(4),
      I2 => \b_address1[4]_INST_0_i_1_n_0\,
      I3 => \b_address1[4]_INST_0_i_2_n_0\,
      I4 => \b_address1[4]_INST_0_i_3_n_0\,
      I5 => \b_address1[4]_INST_0_i_4_n_0\,
      O => b_address1(4)
    );
\b_address1[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A8888888888"
    )
        port map (
      I0 => \b_address1[4]_INST_0_i_5_n_0\,
      I1 => Q(4),
      I2 => \b_address1[4]_INST_0_i_6_n_0\,
      I3 => \b_address1[4]_0\(4),
      I4 => Q(3),
      I5 => \b_address1[4]_INST_0_i_7_n_0\,
      O => \b_address1[4]_INST_0_i_1_n_0\
    );
\b_address1[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020002000200"
    )
        port map (
      I0 => \b_address1[4]_INST_0_i_8_n_0\,
      I1 => \^ap_cs_fsm_reg[3]\,
      I2 => bit_sel_reg_1331,
      I3 => \b_address1[4]_INST_0_i_6_n_0\,
      I4 => \b_address1[4]_INST_0_i_7_n_0\,
      I5 => \b_address1[4]_0\(4),
      O => \b_address1[4]_INST_0_i_2_n_0\
    );
\b_address1[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => bit_sel_reg_1331,
      O => \b_address1[4]_INST_0_i_3_n_0\
    );
\b_address1[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000000010101"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[4]_0\,
      I1 => zext_ln16_47_reg_1404(4),
      I2 => Q(6),
      I3 => Q(7),
      I4 => \b_address1[4]\(4),
      I5 => Q(5),
      O => \b_address1[4]_INST_0_i_4_n_0\
    );
\b_address1[4]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1D00"
    )
        port map (
      I0 => Q(5),
      I1 => \b_address1[4]\(4),
      I2 => Q(7),
      I3 => bit_sel_reg_1331,
      O => \b_address1[4]_INST_0_i_5_n_0\
    );
\b_address1[4]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \b_address1[4]_INST_0_i_6_n_0\
    );
\b_address1[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303B3F333333333"
    )
        port map (
      I0 => icmp_ln10_reg_1635,
      I1 => icmp_ln12_reg_1630,
      I2 => ap_loop_init,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_start,
      I5 => Q(0),
      O => \b_address1[4]_INST_0_i_7_n_0\
    );
\b_address1[4]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0311"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(7),
      I3 => \b_address1[4]\(4),
      O => \b_address1[4]_INST_0_i_8_n_0\
    );
\b_address1[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      O => \^ap_cs_fsm_reg[4]_0\
    );
\bit_sel_reg_1331[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA8800A8AA8800"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_loop_init,
      I4 => icmp_ln12_reg_1630,
      I5 => icmp_ln10_reg_1635,
      O => \ap_CS_fsm_reg[0]\
    );
\icmp_ln124_reg_413[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B30080FFBF0080"
    )
        port map (
      I0 => icmp_ln12_reg_1630,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln10_reg_1635,
      I4 => \icmp_ln124_reg_413_reg[0]\,
      I5 => ap_loop_init,
      O => \icmp_ln12_reg_1630_reg[0]\
    );
\j3_fu_122[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_loop_init,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_4370 : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reg_432 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0 is
  signal \^b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reg_4370\ : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  B(7 downto 0) <= \^b\(7 downto 0);
  reg_4370 <= \^reg_4370\;
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => \^b\(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^reg_4370\,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => reg_432,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
\tmp_product_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE000E0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(0),
      I4 => ap_start,
      O => \^reg_4370\
    );
\tmp_product_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(7),
      I1 => Q(3),
      I2 => a_q1(7),
      O => \^b\(7)
    );
tmp_product_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(6),
      I1 => Q(3),
      I2 => a_q1(6),
      O => \^b\(6)
    );
tmp_product_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(5),
      I1 => Q(3),
      I2 => a_q1(5),
      O => \^b\(5)
    );
tmp_product_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(4),
      I1 => Q(3),
      I2 => a_q1(4),
      O => \^b\(4)
    );
tmp_product_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(3),
      I1 => Q(3),
      I2 => a_q1(3),
      O => \^b\(3)
    );
tmp_product_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(2),
      I1 => Q(3),
      I2 => a_q1(2),
      O => \^b\(2)
    );
tmp_product_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(1),
      I1 => Q(3),
      I2 => a_q1(1),
      O => \^b\(1)
    );
tmp_product_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a_q0(0),
      I1 => Q(3),
      I2 => a_q1(0),
      O => \^b\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14 is
  port (
    reg_4560 : out STD_LOGIC;
    a_load_13_reg_15250 : out STD_LOGIC;
    add_ln16_13_fu_1200_p2 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    \add_ln16_13_reg_1794_reg[18]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \add_ln16_13_reg_1794_reg[18]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14 is
  signal \^a_load_13_reg_15250\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[11]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[15]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[18]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[18]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[18]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[3]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794[7]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_13_reg_1794_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal \^reg_4560\ : STD_LOGIC;
  signal \NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_add_ln16_13_reg_1794_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_2\ : label is "lutpair26";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_3\ : label is "lutpair25";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_4\ : label is "lutpair24";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_5\ : label is "lutpair23";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_6\ : label is "lutpair27";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_7\ : label is "lutpair26";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_8\ : label is "lutpair25";
  attribute HLUTNM of \add_ln16_13_reg_1794[11]_i_9\ : label is "lutpair24";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_2\ : label is "lutpair30";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_3\ : label is "lutpair29";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_4\ : label is "lutpair28";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_5\ : label is "lutpair27";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_6\ : label is "lutpair31";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_7\ : label is "lutpair30";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_8\ : label is "lutpair29";
  attribute HLUTNM of \add_ln16_13_reg_1794[15]_i_9\ : label is "lutpair28";
  attribute HLUTNM of \add_ln16_13_reg_1794[18]_i_2\ : label is "lutpair31";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_2\ : label is "lutpair18";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_3\ : label is "lutpair17";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_4\ : label is "lutpair16";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_5\ : label is "lutpair19";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_6\ : label is "lutpair18";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_7\ : label is "lutpair17";
  attribute HLUTNM of \add_ln16_13_reg_1794[3]_i_8\ : label is "lutpair16";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_2\ : label is "lutpair22";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_3\ : label is "lutpair21";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_4\ : label is "lutpair20";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_5\ : label is "lutpair19";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_6\ : label is "lutpair23";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_7\ : label is "lutpair22";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_8\ : label is "lutpair21";
  attribute HLUTNM of \add_ln16_13_reg_1794[7]_i_9\ : label is "lutpair20";
begin
  a_load_13_reg_15250 <= \^a_load_13_reg_15250\;
  reg_4560 <= \^reg_4560\;
\add_ln16_13_reg_1794[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(10),
      I1 => \add_ln16_13_reg_1794_reg[18]\(10),
      I2 => p_reg_reg_n_95,
      O => \add_ln16_13_reg_1794[11]_i_2_n_0\
    );
\add_ln16_13_reg_1794[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(9),
      I1 => \add_ln16_13_reg_1794_reg[18]\(9),
      I2 => p_reg_reg_n_96,
      O => \add_ln16_13_reg_1794[11]_i_3_n_0\
    );
\add_ln16_13_reg_1794[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(8),
      I1 => \add_ln16_13_reg_1794_reg[18]\(8),
      I2 => p_reg_reg_n_97,
      O => \add_ln16_13_reg_1794[11]_i_4_n_0\
    );
\add_ln16_13_reg_1794[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(7),
      I1 => \add_ln16_13_reg_1794_reg[18]\(7),
      I2 => p_reg_reg_n_98,
      O => \add_ln16_13_reg_1794[11]_i_5_n_0\
    );
\add_ln16_13_reg_1794[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(11),
      I1 => \add_ln16_13_reg_1794_reg[18]\(11),
      I2 => p_reg_reg_n_94,
      I3 => \add_ln16_13_reg_1794[11]_i_2_n_0\,
      O => \add_ln16_13_reg_1794[11]_i_6_n_0\
    );
\add_ln16_13_reg_1794[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(10),
      I1 => \add_ln16_13_reg_1794_reg[18]\(10),
      I2 => p_reg_reg_n_95,
      I3 => \add_ln16_13_reg_1794[11]_i_3_n_0\,
      O => \add_ln16_13_reg_1794[11]_i_7_n_0\
    );
\add_ln16_13_reg_1794[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(9),
      I1 => \add_ln16_13_reg_1794_reg[18]\(9),
      I2 => p_reg_reg_n_96,
      I3 => \add_ln16_13_reg_1794[11]_i_4_n_0\,
      O => \add_ln16_13_reg_1794[11]_i_8_n_0\
    );
\add_ln16_13_reg_1794[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(8),
      I1 => \add_ln16_13_reg_1794_reg[18]\(8),
      I2 => p_reg_reg_n_97,
      I3 => \add_ln16_13_reg_1794[11]_i_5_n_0\,
      O => \add_ln16_13_reg_1794[11]_i_9_n_0\
    );
\add_ln16_13_reg_1794[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(14),
      I1 => \add_ln16_13_reg_1794_reg[18]\(14),
      I2 => p_reg_reg_n_91,
      O => \add_ln16_13_reg_1794[15]_i_2_n_0\
    );
\add_ln16_13_reg_1794[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(13),
      I1 => \add_ln16_13_reg_1794_reg[18]\(13),
      I2 => p_reg_reg_n_92,
      O => \add_ln16_13_reg_1794[15]_i_3_n_0\
    );
\add_ln16_13_reg_1794[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(12),
      I1 => \add_ln16_13_reg_1794_reg[18]\(12),
      I2 => p_reg_reg_n_93,
      O => \add_ln16_13_reg_1794[15]_i_4_n_0\
    );
\add_ln16_13_reg_1794[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(11),
      I1 => \add_ln16_13_reg_1794_reg[18]\(11),
      I2 => p_reg_reg_n_94,
      O => \add_ln16_13_reg_1794[15]_i_5_n_0\
    );
\add_ln16_13_reg_1794[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(15),
      I1 => \add_ln16_13_reg_1794_reg[18]\(15),
      I2 => p_reg_reg_n_90,
      I3 => \add_ln16_13_reg_1794[15]_i_2_n_0\,
      O => \add_ln16_13_reg_1794[15]_i_6_n_0\
    );
\add_ln16_13_reg_1794[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(14),
      I1 => \add_ln16_13_reg_1794_reg[18]\(14),
      I2 => p_reg_reg_n_91,
      I3 => \add_ln16_13_reg_1794[15]_i_3_n_0\,
      O => \add_ln16_13_reg_1794[15]_i_7_n_0\
    );
\add_ln16_13_reg_1794[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(13),
      I1 => \add_ln16_13_reg_1794_reg[18]\(13),
      I2 => p_reg_reg_n_92,
      I3 => \add_ln16_13_reg_1794[15]_i_4_n_0\,
      O => \add_ln16_13_reg_1794[15]_i_8_n_0\
    );
\add_ln16_13_reg_1794[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(12),
      I1 => \add_ln16_13_reg_1794_reg[18]\(12),
      I2 => p_reg_reg_n_93,
      I3 => \add_ln16_13_reg_1794[15]_i_5_n_0\,
      O => \add_ln16_13_reg_1794[15]_i_9_n_0\
    );
\add_ln16_13_reg_1794[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(15),
      I1 => \add_ln16_13_reg_1794_reg[18]\(15),
      I2 => p_reg_reg_n_90,
      O => \add_ln16_13_reg_1794[18]_i_2_n_0\
    );
\add_ln16_13_reg_1794[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p_reg_reg_n_89,
      I1 => \add_ln16_13_reg_1794_reg[18]\(16),
      I2 => \add_ln16_13_reg_1794_reg[18]_0\(16),
      I3 => \add_ln16_13_reg_1794_reg[18]\(17),
      O => \add_ln16_13_reg_1794[18]_i_3_n_0\
    );
\add_ln16_13_reg_1794[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794[18]_i_2_n_0\,
      I1 => \add_ln16_13_reg_1794_reg[18]\(16),
      I2 => \add_ln16_13_reg_1794_reg[18]_0\(16),
      I3 => p_reg_reg_n_89,
      O => \add_ln16_13_reg_1794[18]_i_4_n_0\
    );
\add_ln16_13_reg_1794[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(2),
      I1 => \add_ln16_13_reg_1794_reg[18]\(2),
      I2 => p_reg_reg_n_103,
      O => \add_ln16_13_reg_1794[3]_i_2_n_0\
    );
\add_ln16_13_reg_1794[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(1),
      I1 => \add_ln16_13_reg_1794_reg[18]\(1),
      I2 => p_reg_reg_n_104,
      O => \add_ln16_13_reg_1794[3]_i_3_n_0\
    );
\add_ln16_13_reg_1794[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(0),
      I1 => \add_ln16_13_reg_1794_reg[18]\(0),
      I2 => p_reg_reg_n_105,
      O => \add_ln16_13_reg_1794[3]_i_4_n_0\
    );
\add_ln16_13_reg_1794[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(3),
      I1 => \add_ln16_13_reg_1794_reg[18]\(3),
      I2 => p_reg_reg_n_102,
      I3 => \add_ln16_13_reg_1794[3]_i_2_n_0\,
      O => \add_ln16_13_reg_1794[3]_i_5_n_0\
    );
\add_ln16_13_reg_1794[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(2),
      I1 => \add_ln16_13_reg_1794_reg[18]\(2),
      I2 => p_reg_reg_n_103,
      I3 => \add_ln16_13_reg_1794[3]_i_3_n_0\,
      O => \add_ln16_13_reg_1794[3]_i_6_n_0\
    );
\add_ln16_13_reg_1794[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(1),
      I1 => \add_ln16_13_reg_1794_reg[18]\(1),
      I2 => p_reg_reg_n_104,
      I3 => \add_ln16_13_reg_1794[3]_i_4_n_0\,
      O => \add_ln16_13_reg_1794[3]_i_7_n_0\
    );
\add_ln16_13_reg_1794[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(0),
      I1 => \add_ln16_13_reg_1794_reg[18]\(0),
      I2 => p_reg_reg_n_105,
      O => \add_ln16_13_reg_1794[3]_i_8_n_0\
    );
\add_ln16_13_reg_1794[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(6),
      I1 => \add_ln16_13_reg_1794_reg[18]\(6),
      I2 => p_reg_reg_n_99,
      O => \add_ln16_13_reg_1794[7]_i_2_n_0\
    );
\add_ln16_13_reg_1794[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(5),
      I1 => \add_ln16_13_reg_1794_reg[18]\(5),
      I2 => p_reg_reg_n_100,
      O => \add_ln16_13_reg_1794[7]_i_3_n_0\
    );
\add_ln16_13_reg_1794[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(4),
      I1 => \add_ln16_13_reg_1794_reg[18]\(4),
      I2 => p_reg_reg_n_101,
      O => \add_ln16_13_reg_1794[7]_i_4_n_0\
    );
\add_ln16_13_reg_1794[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(3),
      I1 => \add_ln16_13_reg_1794_reg[18]\(3),
      I2 => p_reg_reg_n_102,
      O => \add_ln16_13_reg_1794[7]_i_5_n_0\
    );
\add_ln16_13_reg_1794[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(7),
      I1 => \add_ln16_13_reg_1794_reg[18]\(7),
      I2 => p_reg_reg_n_98,
      I3 => \add_ln16_13_reg_1794[7]_i_2_n_0\,
      O => \add_ln16_13_reg_1794[7]_i_6_n_0\
    );
\add_ln16_13_reg_1794[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(6),
      I1 => \add_ln16_13_reg_1794_reg[18]\(6),
      I2 => p_reg_reg_n_99,
      I3 => \add_ln16_13_reg_1794[7]_i_3_n_0\,
      O => \add_ln16_13_reg_1794[7]_i_7_n_0\
    );
\add_ln16_13_reg_1794[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(5),
      I1 => \add_ln16_13_reg_1794_reg[18]\(5),
      I2 => p_reg_reg_n_100,
      I3 => \add_ln16_13_reg_1794[7]_i_4_n_0\,
      O => \add_ln16_13_reg_1794[7]_i_8_n_0\
    );
\add_ln16_13_reg_1794[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_13_reg_1794_reg[18]_0\(4),
      I1 => \add_ln16_13_reg_1794_reg[18]\(4),
      I2 => p_reg_reg_n_101,
      I3 => \add_ln16_13_reg_1794[7]_i_5_n_0\,
      O => \add_ln16_13_reg_1794[7]_i_9_n_0\
    );
\add_ln16_13_reg_1794_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_13_reg_1794_reg[7]_i_1_n_0\,
      CO(3) => \add_ln16_13_reg_1794_reg[11]_i_1_n_0\,
      CO(2) => \add_ln16_13_reg_1794_reg[11]_i_1_n_1\,
      CO(1) => \add_ln16_13_reg_1794_reg[11]_i_1_n_2\,
      CO(0) => \add_ln16_13_reg_1794_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_13_reg_1794[11]_i_2_n_0\,
      DI(2) => \add_ln16_13_reg_1794[11]_i_3_n_0\,
      DI(1) => \add_ln16_13_reg_1794[11]_i_4_n_0\,
      DI(0) => \add_ln16_13_reg_1794[11]_i_5_n_0\,
      O(3 downto 0) => add_ln16_13_fu_1200_p2(11 downto 8),
      S(3) => \add_ln16_13_reg_1794[11]_i_6_n_0\,
      S(2) => \add_ln16_13_reg_1794[11]_i_7_n_0\,
      S(1) => \add_ln16_13_reg_1794[11]_i_8_n_0\,
      S(0) => \add_ln16_13_reg_1794[11]_i_9_n_0\
    );
\add_ln16_13_reg_1794_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_13_reg_1794_reg[11]_i_1_n_0\,
      CO(3) => \add_ln16_13_reg_1794_reg[15]_i_1_n_0\,
      CO(2) => \add_ln16_13_reg_1794_reg[15]_i_1_n_1\,
      CO(1) => \add_ln16_13_reg_1794_reg[15]_i_1_n_2\,
      CO(0) => \add_ln16_13_reg_1794_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_13_reg_1794[15]_i_2_n_0\,
      DI(2) => \add_ln16_13_reg_1794[15]_i_3_n_0\,
      DI(1) => \add_ln16_13_reg_1794[15]_i_4_n_0\,
      DI(0) => \add_ln16_13_reg_1794[15]_i_5_n_0\,
      O(3 downto 0) => add_ln16_13_fu_1200_p2(15 downto 12),
      S(3) => \add_ln16_13_reg_1794[15]_i_6_n_0\,
      S(2) => \add_ln16_13_reg_1794[15]_i_7_n_0\,
      S(1) => \add_ln16_13_reg_1794[15]_i_8_n_0\,
      S(0) => \add_ln16_13_reg_1794[15]_i_9_n_0\
    );
\add_ln16_13_reg_1794_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_13_reg_1794_reg[15]_i_1_n_0\,
      CO(3) => \NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED\(3),
      CO(2) => add_ln16_13_fu_1200_p2(18),
      CO(1) => \NLW_add_ln16_13_reg_1794_reg[18]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \add_ln16_13_reg_1794_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln16_13_reg_1794_reg[18]\(17),
      DI(0) => \add_ln16_13_reg_1794[18]_i_2_n_0\,
      O(3 downto 2) => \NLW_add_ln16_13_reg_1794_reg[18]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => add_ln16_13_fu_1200_p2(17 downto 16),
      S(3 downto 2) => B"01",
      S(1) => \add_ln16_13_reg_1794[18]_i_3_n_0\,
      S(0) => \add_ln16_13_reg_1794[18]_i_4_n_0\
    );
\add_ln16_13_reg_1794_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln16_13_reg_1794_reg[3]_i_1_n_0\,
      CO(2) => \add_ln16_13_reg_1794_reg[3]_i_1_n_1\,
      CO(1) => \add_ln16_13_reg_1794_reg[3]_i_1_n_2\,
      CO(0) => \add_ln16_13_reg_1794_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_13_reg_1794[3]_i_2_n_0\,
      DI(2) => \add_ln16_13_reg_1794[3]_i_3_n_0\,
      DI(1) => \add_ln16_13_reg_1794[3]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => add_ln16_13_fu_1200_p2(3 downto 0),
      S(3) => \add_ln16_13_reg_1794[3]_i_5_n_0\,
      S(2) => \add_ln16_13_reg_1794[3]_i_6_n_0\,
      S(1) => \add_ln16_13_reg_1794[3]_i_7_n_0\,
      S(0) => \add_ln16_13_reg_1794[3]_i_8_n_0\
    );
\add_ln16_13_reg_1794_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_13_reg_1794_reg[3]_i_1_n_0\,
      CO(3) => \add_ln16_13_reg_1794_reg[7]_i_1_n_0\,
      CO(2) => \add_ln16_13_reg_1794_reg[7]_i_1_n_1\,
      CO(1) => \add_ln16_13_reg_1794_reg[7]_i_1_n_2\,
      CO(0) => \add_ln16_13_reg_1794_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_13_reg_1794[7]_i_2_n_0\,
      DI(2) => \add_ln16_13_reg_1794[7]_i_3_n_0\,
      DI(1) => \add_ln16_13_reg_1794[7]_i_4_n_0\,
      DI(0) => \add_ln16_13_reg_1794[7]_i_5_n_0\,
      O(3 downto 0) => add_ln16_13_fu_1200_p2(7 downto 4),
      S(3) => \add_ln16_13_reg_1794[7]_i_6_n_0\,
      S(2) => \add_ln16_13_reg_1794[7]_i_7_n_0\,
      S(1) => \add_ln16_13_reg_1794[7]_i_8_n_0\,
      S(0) => \add_ln16_13_reg_1794[7]_i_9_n_0\
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^reg_4560\,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^a_load_13_reg_15250\,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
\p_reg_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(2),
      O => \^a_load_13_reg_15250\
    );
\tmp_product_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => Q(1),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(2),
      I3 => ap_start,
      I4 => Q(0),
      I5 => ap_enable_reg_pp0_iter0_reg,
      O => \^reg_4560\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    a_load_11_reg_14690 : in STD_LOGIC;
    a_load_13_reg_15250 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15 is
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => a_load_11_reg_14690,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => a_load_13_reg_15250,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16 is
  port (
    a_load_11_reg_14690 : out STD_LOGIC;
    add_ln16_9_fu_1159_p2 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC;
    \add_ln16_9_reg_1779_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16 is
  signal \^a_load_11_reg_14690\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[11]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[11]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[11]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[11]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[15]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[15]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[15]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[15]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[17]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[3]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[3]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[3]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[3]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[7]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[7]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_9_reg_1779_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal \NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln16_9_reg_1779_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  a_load_11_reg_14690 <= \^a_load_11_reg_14690\;
\add_ln16_9_reg_1779[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_94,
      I1 => \add_ln16_9_reg_1779_reg[17]\(11),
      O => \add_ln16_9_reg_1779[11]_i_2_n_0\
    );
\add_ln16_9_reg_1779[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_95,
      I1 => \add_ln16_9_reg_1779_reg[17]\(10),
      O => \add_ln16_9_reg_1779[11]_i_3_n_0\
    );
\add_ln16_9_reg_1779[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_96,
      I1 => \add_ln16_9_reg_1779_reg[17]\(9),
      O => \add_ln16_9_reg_1779[11]_i_4_n_0\
    );
\add_ln16_9_reg_1779[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_97,
      I1 => \add_ln16_9_reg_1779_reg[17]\(8),
      O => \add_ln16_9_reg_1779[11]_i_5_n_0\
    );
\add_ln16_9_reg_1779[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_90,
      I1 => \add_ln16_9_reg_1779_reg[17]\(15),
      O => \add_ln16_9_reg_1779[15]_i_2_n_0\
    );
\add_ln16_9_reg_1779[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_91,
      I1 => \add_ln16_9_reg_1779_reg[17]\(14),
      O => \add_ln16_9_reg_1779[15]_i_3_n_0\
    );
\add_ln16_9_reg_1779[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_92,
      I1 => \add_ln16_9_reg_1779_reg[17]\(13),
      O => \add_ln16_9_reg_1779[15]_i_4_n_0\
    );
\add_ln16_9_reg_1779[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_93,
      I1 => \add_ln16_9_reg_1779_reg[17]\(12),
      O => \add_ln16_9_reg_1779[15]_i_5_n_0\
    );
\add_ln16_9_reg_1779[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_89,
      I1 => \add_ln16_9_reg_1779_reg[17]\(16),
      O => \add_ln16_9_reg_1779[17]_i_2_n_0\
    );
\add_ln16_9_reg_1779[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_102,
      I1 => \add_ln16_9_reg_1779_reg[17]\(3),
      O => \add_ln16_9_reg_1779[3]_i_2_n_0\
    );
\add_ln16_9_reg_1779[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_103,
      I1 => \add_ln16_9_reg_1779_reg[17]\(2),
      O => \add_ln16_9_reg_1779[3]_i_3_n_0\
    );
\add_ln16_9_reg_1779[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_104,
      I1 => \add_ln16_9_reg_1779_reg[17]\(1),
      O => \add_ln16_9_reg_1779[3]_i_4_n_0\
    );
\add_ln16_9_reg_1779[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_105,
      I1 => \add_ln16_9_reg_1779_reg[17]\(0),
      O => \add_ln16_9_reg_1779[3]_i_5_n_0\
    );
\add_ln16_9_reg_1779[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_98,
      I1 => \add_ln16_9_reg_1779_reg[17]\(7),
      O => \add_ln16_9_reg_1779[7]_i_2_n_0\
    );
\add_ln16_9_reg_1779[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_99,
      I1 => \add_ln16_9_reg_1779_reg[17]\(6),
      O => \add_ln16_9_reg_1779[7]_i_3_n_0\
    );
\add_ln16_9_reg_1779[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_100,
      I1 => \add_ln16_9_reg_1779_reg[17]\(5),
      O => \add_ln16_9_reg_1779[7]_i_4_n_0\
    );
\add_ln16_9_reg_1779[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_reg_reg_n_101,
      I1 => \add_ln16_9_reg_1779_reg[17]\(4),
      O => \add_ln16_9_reg_1779[7]_i_5_n_0\
    );
\add_ln16_9_reg_1779_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_9_reg_1779_reg[7]_i_1_n_0\,
      CO(3) => \add_ln16_9_reg_1779_reg[11]_i_1_n_0\,
      CO(2) => \add_ln16_9_reg_1779_reg[11]_i_1_n_1\,
      CO(1) => \add_ln16_9_reg_1779_reg[11]_i_1_n_2\,
      CO(0) => \add_ln16_9_reg_1779_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => p_reg_reg_n_94,
      DI(2) => p_reg_reg_n_95,
      DI(1) => p_reg_reg_n_96,
      DI(0) => p_reg_reg_n_97,
      O(3 downto 0) => add_ln16_9_fu_1159_p2(11 downto 8),
      S(3) => \add_ln16_9_reg_1779[11]_i_2_n_0\,
      S(2) => \add_ln16_9_reg_1779[11]_i_3_n_0\,
      S(1) => \add_ln16_9_reg_1779[11]_i_4_n_0\,
      S(0) => \add_ln16_9_reg_1779[11]_i_5_n_0\
    );
\add_ln16_9_reg_1779_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_9_reg_1779_reg[11]_i_1_n_0\,
      CO(3) => \add_ln16_9_reg_1779_reg[15]_i_1_n_0\,
      CO(2) => \add_ln16_9_reg_1779_reg[15]_i_1_n_1\,
      CO(1) => \add_ln16_9_reg_1779_reg[15]_i_1_n_2\,
      CO(0) => \add_ln16_9_reg_1779_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => p_reg_reg_n_90,
      DI(2) => p_reg_reg_n_91,
      DI(1) => p_reg_reg_n_92,
      DI(0) => p_reg_reg_n_93,
      O(3 downto 0) => add_ln16_9_fu_1159_p2(15 downto 12),
      S(3) => \add_ln16_9_reg_1779[15]_i_2_n_0\,
      S(2) => \add_ln16_9_reg_1779[15]_i_3_n_0\,
      S(1) => \add_ln16_9_reg_1779[15]_i_4_n_0\,
      S(0) => \add_ln16_9_reg_1779[15]_i_5_n_0\
    );
\add_ln16_9_reg_1779_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_9_reg_1779_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => add_ln16_9_fu_1159_p2(17),
      CO(0) => \NLW_add_ln16_9_reg_1779_reg[17]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_reg_reg_n_89,
      O(3 downto 1) => \NLW_add_ln16_9_reg_1779_reg[17]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => add_ln16_9_fu_1159_p2(16),
      S(3 downto 1) => B"001",
      S(0) => \add_ln16_9_reg_1779[17]_i_2_n_0\
    );
\add_ln16_9_reg_1779_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln16_9_reg_1779_reg[3]_i_1_n_0\,
      CO(2) => \add_ln16_9_reg_1779_reg[3]_i_1_n_1\,
      CO(1) => \add_ln16_9_reg_1779_reg[3]_i_1_n_2\,
      CO(0) => \add_ln16_9_reg_1779_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => p_reg_reg_n_102,
      DI(2) => p_reg_reg_n_103,
      DI(1) => p_reg_reg_n_104,
      DI(0) => p_reg_reg_n_105,
      O(3 downto 0) => add_ln16_9_fu_1159_p2(3 downto 0),
      S(3) => \add_ln16_9_reg_1779[3]_i_2_n_0\,
      S(2) => \add_ln16_9_reg_1779[3]_i_3_n_0\,
      S(1) => \add_ln16_9_reg_1779[3]_i_4_n_0\,
      S(0) => \add_ln16_9_reg_1779[3]_i_5_n_0\
    );
\add_ln16_9_reg_1779_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_9_reg_1779_reg[3]_i_1_n_0\,
      CO(3) => \add_ln16_9_reg_1779_reg[7]_i_1_n_0\,
      CO(2) => \add_ln16_9_reg_1779_reg[7]_i_1_n_1\,
      CO(1) => \add_ln16_9_reg_1779_reg[7]_i_1_n_2\,
      CO(0) => \add_ln16_9_reg_1779_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => p_reg_reg_n_98,
      DI(2) => p_reg_reg_n_99,
      DI(1) => p_reg_reg_n_100,
      DI(0) => p_reg_reg_n_101,
      O(3 downto 0) => add_ln16_9_fu_1159_p2(7 downto 4),
      S(3) => \add_ln16_9_reg_1779[7]_i_2_n_0\,
      S(2) => \add_ln16_9_reg_1779[7]_i_3_n_0\,
      S(1) => \add_ln16_9_reg_1779[7]_i_4_n_0\,
      S(0) => \add_ln16_9_reg_1779[7]_i_5_n_0\
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^a_load_11_reg_14690\,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^a_load_11_reg_14690\,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
\p_reg_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(1),
      O => \^a_load_11_reg_14690\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_4460 : out STD_LOGIC;
    a_load_11_reg_14690 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17 is
  signal \^reg_4460\ : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  reg_4460 <= \^reg_4460\;
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^reg_4460\,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => a_load_11_reg_14690,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
p_reg_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(1),
      O => \^reg_4460\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18 is
  port (
    add_ln16_6_fu_1108_p2 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    reg_4460 : in STD_LOGIC;
    p_reg_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \add_ln16_6_reg_1749_reg[18]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18 is
  signal \add_ln16_6_reg_1749[11]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[11]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[15]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[18]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[18]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[18]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[3]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_6_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_7_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_8_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749[7]_i_9_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_6_reg_1749_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal \NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_add_ln16_6_reg_1749_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_2\ : label is "lutpair10";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_3\ : label is "lutpair9";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_4\ : label is "lutpair8";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_5\ : label is "lutpair7";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_6\ : label is "lutpair11";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_7\ : label is "lutpair10";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_8\ : label is "lutpair9";
  attribute HLUTNM of \add_ln16_6_reg_1749[11]_i_9\ : label is "lutpair8";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_2\ : label is "lutpair14";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_3\ : label is "lutpair13";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_4\ : label is "lutpair12";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_5\ : label is "lutpair11";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_6\ : label is "lutpair15";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_7\ : label is "lutpair14";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_8\ : label is "lutpair13";
  attribute HLUTNM of \add_ln16_6_reg_1749[15]_i_9\ : label is "lutpair12";
  attribute HLUTNM of \add_ln16_6_reg_1749[18]_i_2\ : label is "lutpair15";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_2\ : label is "lutpair2";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_3\ : label is "lutpair1";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_6\ : label is "lutpair2";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_7\ : label is "lutpair1";
  attribute HLUTNM of \add_ln16_6_reg_1749[3]_i_8\ : label is "lutpair0";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_2\ : label is "lutpair6";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_3\ : label is "lutpair5";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_4\ : label is "lutpair4";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_6\ : label is "lutpair7";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_7\ : label is "lutpair6";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_8\ : label is "lutpair5";
  attribute HLUTNM of \add_ln16_6_reg_1749[7]_i_9\ : label is "lutpair4";
begin
\add_ln16_6_reg_1749[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(10),
      I1 => Q(10),
      I2 => p_reg_reg_n_95,
      O => \add_ln16_6_reg_1749[11]_i_2_n_0\
    );
\add_ln16_6_reg_1749[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(9),
      I1 => Q(9),
      I2 => p_reg_reg_n_96,
      O => \add_ln16_6_reg_1749[11]_i_3_n_0\
    );
\add_ln16_6_reg_1749[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(8),
      I1 => Q(8),
      I2 => p_reg_reg_n_97,
      O => \add_ln16_6_reg_1749[11]_i_4_n_0\
    );
\add_ln16_6_reg_1749[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(7),
      I1 => Q(7),
      I2 => p_reg_reg_n_98,
      O => \add_ln16_6_reg_1749[11]_i_5_n_0\
    );
\add_ln16_6_reg_1749[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(11),
      I1 => Q(11),
      I2 => p_reg_reg_n_94,
      I3 => \add_ln16_6_reg_1749[11]_i_2_n_0\,
      O => \add_ln16_6_reg_1749[11]_i_6_n_0\
    );
\add_ln16_6_reg_1749[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(10),
      I1 => Q(10),
      I2 => p_reg_reg_n_95,
      I3 => \add_ln16_6_reg_1749[11]_i_3_n_0\,
      O => \add_ln16_6_reg_1749[11]_i_7_n_0\
    );
\add_ln16_6_reg_1749[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(9),
      I1 => Q(9),
      I2 => p_reg_reg_n_96,
      I3 => \add_ln16_6_reg_1749[11]_i_4_n_0\,
      O => \add_ln16_6_reg_1749[11]_i_8_n_0\
    );
\add_ln16_6_reg_1749[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(8),
      I1 => Q(8),
      I2 => p_reg_reg_n_97,
      I3 => \add_ln16_6_reg_1749[11]_i_5_n_0\,
      O => \add_ln16_6_reg_1749[11]_i_9_n_0\
    );
\add_ln16_6_reg_1749[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(14),
      I1 => Q(14),
      I2 => p_reg_reg_n_91,
      O => \add_ln16_6_reg_1749[15]_i_2_n_0\
    );
\add_ln16_6_reg_1749[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(13),
      I1 => Q(13),
      I2 => p_reg_reg_n_92,
      O => \add_ln16_6_reg_1749[15]_i_3_n_0\
    );
\add_ln16_6_reg_1749[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(12),
      I1 => Q(12),
      I2 => p_reg_reg_n_93,
      O => \add_ln16_6_reg_1749[15]_i_4_n_0\
    );
\add_ln16_6_reg_1749[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(11),
      I1 => Q(11),
      I2 => p_reg_reg_n_94,
      O => \add_ln16_6_reg_1749[15]_i_5_n_0\
    );
\add_ln16_6_reg_1749[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(15),
      I1 => Q(15),
      I2 => p_reg_reg_n_90,
      I3 => \add_ln16_6_reg_1749[15]_i_2_n_0\,
      O => \add_ln16_6_reg_1749[15]_i_6_n_0\
    );
\add_ln16_6_reg_1749[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(14),
      I1 => Q(14),
      I2 => p_reg_reg_n_91,
      I3 => \add_ln16_6_reg_1749[15]_i_3_n_0\,
      O => \add_ln16_6_reg_1749[15]_i_7_n_0\
    );
\add_ln16_6_reg_1749[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(13),
      I1 => Q(13),
      I2 => p_reg_reg_n_92,
      I3 => \add_ln16_6_reg_1749[15]_i_4_n_0\,
      O => \add_ln16_6_reg_1749[15]_i_8_n_0\
    );
\add_ln16_6_reg_1749[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(12),
      I1 => Q(12),
      I2 => p_reg_reg_n_93,
      I3 => \add_ln16_6_reg_1749[15]_i_5_n_0\,
      O => \add_ln16_6_reg_1749[15]_i_9_n_0\
    );
\add_ln16_6_reg_1749[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(15),
      I1 => Q(15),
      I2 => p_reg_reg_n_90,
      O => \add_ln16_6_reg_1749[18]_i_2_n_0\
    );
\add_ln16_6_reg_1749[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p_reg_reg_n_89,
      I1 => Q(16),
      I2 => \add_ln16_6_reg_1749_reg[18]\(16),
      I3 => Q(17),
      O => \add_ln16_6_reg_1749[18]_i_3_n_0\
    );
\add_ln16_6_reg_1749[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749[18]_i_2_n_0\,
      I1 => Q(16),
      I2 => \add_ln16_6_reg_1749_reg[18]\(16),
      I3 => p_reg_reg_n_89,
      O => \add_ln16_6_reg_1749[18]_i_4_n_0\
    );
\add_ln16_6_reg_1749[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(2),
      I1 => Q(2),
      I2 => p_reg_reg_n_103,
      O => \add_ln16_6_reg_1749[3]_i_2_n_0\
    );
\add_ln16_6_reg_1749[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(1),
      I1 => Q(1),
      I2 => p_reg_reg_n_104,
      O => \add_ln16_6_reg_1749[3]_i_3_n_0\
    );
\add_ln16_6_reg_1749[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(0),
      I1 => Q(0),
      I2 => p_reg_reg_n_105,
      O => \add_ln16_6_reg_1749[3]_i_4_n_0\
    );
\add_ln16_6_reg_1749[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(3),
      I1 => Q(3),
      I2 => p_reg_reg_n_102,
      I3 => \add_ln16_6_reg_1749[3]_i_2_n_0\,
      O => \add_ln16_6_reg_1749[3]_i_5_n_0\
    );
\add_ln16_6_reg_1749[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(2),
      I1 => Q(2),
      I2 => p_reg_reg_n_103,
      I3 => \add_ln16_6_reg_1749[3]_i_3_n_0\,
      O => \add_ln16_6_reg_1749[3]_i_6_n_0\
    );
\add_ln16_6_reg_1749[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(1),
      I1 => Q(1),
      I2 => p_reg_reg_n_104,
      I3 => \add_ln16_6_reg_1749[3]_i_4_n_0\,
      O => \add_ln16_6_reg_1749[3]_i_7_n_0\
    );
\add_ln16_6_reg_1749[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(0),
      I1 => Q(0),
      I2 => p_reg_reg_n_105,
      O => \add_ln16_6_reg_1749[3]_i_8_n_0\
    );
\add_ln16_6_reg_1749[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(6),
      I1 => Q(6),
      I2 => p_reg_reg_n_99,
      O => \add_ln16_6_reg_1749[7]_i_2_n_0\
    );
\add_ln16_6_reg_1749[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(5),
      I1 => Q(5),
      I2 => p_reg_reg_n_100,
      O => \add_ln16_6_reg_1749[7]_i_3_n_0\
    );
\add_ln16_6_reg_1749[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(4),
      I1 => Q(4),
      I2 => p_reg_reg_n_101,
      O => \add_ln16_6_reg_1749[7]_i_4_n_0\
    );
\add_ln16_6_reg_1749[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(3),
      I1 => Q(3),
      I2 => p_reg_reg_n_102,
      O => \add_ln16_6_reg_1749[7]_i_5_n_0\
    );
\add_ln16_6_reg_1749[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(7),
      I1 => Q(7),
      I2 => p_reg_reg_n_98,
      I3 => \add_ln16_6_reg_1749[7]_i_2_n_0\,
      O => \add_ln16_6_reg_1749[7]_i_6_n_0\
    );
\add_ln16_6_reg_1749[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(6),
      I1 => Q(6),
      I2 => p_reg_reg_n_99,
      I3 => \add_ln16_6_reg_1749[7]_i_3_n_0\,
      O => \add_ln16_6_reg_1749[7]_i_7_n_0\
    );
\add_ln16_6_reg_1749[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(5),
      I1 => Q(5),
      I2 => p_reg_reg_n_100,
      I3 => \add_ln16_6_reg_1749[7]_i_4_n_0\,
      O => \add_ln16_6_reg_1749[7]_i_8_n_0\
    );
\add_ln16_6_reg_1749[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \add_ln16_6_reg_1749_reg[18]\(4),
      I1 => Q(4),
      I2 => p_reg_reg_n_101,
      I3 => \add_ln16_6_reg_1749[7]_i_5_n_0\,
      O => \add_ln16_6_reg_1749[7]_i_9_n_0\
    );
\add_ln16_6_reg_1749_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_6_reg_1749_reg[7]_i_1_n_0\,
      CO(3) => \add_ln16_6_reg_1749_reg[11]_i_1_n_0\,
      CO(2) => \add_ln16_6_reg_1749_reg[11]_i_1_n_1\,
      CO(1) => \add_ln16_6_reg_1749_reg[11]_i_1_n_2\,
      CO(0) => \add_ln16_6_reg_1749_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_6_reg_1749[11]_i_2_n_0\,
      DI(2) => \add_ln16_6_reg_1749[11]_i_3_n_0\,
      DI(1) => \add_ln16_6_reg_1749[11]_i_4_n_0\,
      DI(0) => \add_ln16_6_reg_1749[11]_i_5_n_0\,
      O(3 downto 0) => add_ln16_6_fu_1108_p2(11 downto 8),
      S(3) => \add_ln16_6_reg_1749[11]_i_6_n_0\,
      S(2) => \add_ln16_6_reg_1749[11]_i_7_n_0\,
      S(1) => \add_ln16_6_reg_1749[11]_i_8_n_0\,
      S(0) => \add_ln16_6_reg_1749[11]_i_9_n_0\
    );
\add_ln16_6_reg_1749_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_6_reg_1749_reg[11]_i_1_n_0\,
      CO(3) => \add_ln16_6_reg_1749_reg[15]_i_1_n_0\,
      CO(2) => \add_ln16_6_reg_1749_reg[15]_i_1_n_1\,
      CO(1) => \add_ln16_6_reg_1749_reg[15]_i_1_n_2\,
      CO(0) => \add_ln16_6_reg_1749_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_6_reg_1749[15]_i_2_n_0\,
      DI(2) => \add_ln16_6_reg_1749[15]_i_3_n_0\,
      DI(1) => \add_ln16_6_reg_1749[15]_i_4_n_0\,
      DI(0) => \add_ln16_6_reg_1749[15]_i_5_n_0\,
      O(3 downto 0) => add_ln16_6_fu_1108_p2(15 downto 12),
      S(3) => \add_ln16_6_reg_1749[15]_i_6_n_0\,
      S(2) => \add_ln16_6_reg_1749[15]_i_7_n_0\,
      S(1) => \add_ln16_6_reg_1749[15]_i_8_n_0\,
      S(0) => \add_ln16_6_reg_1749[15]_i_9_n_0\
    );
\add_ln16_6_reg_1749_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_6_reg_1749_reg[15]_i_1_n_0\,
      CO(3) => \NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED\(3),
      CO(2) => add_ln16_6_fu_1108_p2(18),
      CO(1) => \NLW_add_ln16_6_reg_1749_reg[18]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \add_ln16_6_reg_1749_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Q(17),
      DI(0) => \add_ln16_6_reg_1749[18]_i_2_n_0\,
      O(3 downto 2) => \NLW_add_ln16_6_reg_1749_reg[18]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => add_ln16_6_fu_1108_p2(17 downto 16),
      S(3 downto 2) => B"01",
      S(1) => \add_ln16_6_reg_1749[18]_i_3_n_0\,
      S(0) => \add_ln16_6_reg_1749[18]_i_4_n_0\
    );
\add_ln16_6_reg_1749_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln16_6_reg_1749_reg[3]_i_1_n_0\,
      CO(2) => \add_ln16_6_reg_1749_reg[3]_i_1_n_1\,
      CO(1) => \add_ln16_6_reg_1749_reg[3]_i_1_n_2\,
      CO(0) => \add_ln16_6_reg_1749_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_6_reg_1749[3]_i_2_n_0\,
      DI(2) => \add_ln16_6_reg_1749[3]_i_3_n_0\,
      DI(1) => \add_ln16_6_reg_1749[3]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => add_ln16_6_fu_1108_p2(3 downto 0),
      S(3) => \add_ln16_6_reg_1749[3]_i_5_n_0\,
      S(2) => \add_ln16_6_reg_1749[3]_i_6_n_0\,
      S(1) => \add_ln16_6_reg_1749[3]_i_7_n_0\,
      S(0) => \add_ln16_6_reg_1749[3]_i_8_n_0\
    );
\add_ln16_6_reg_1749_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_6_reg_1749_reg[3]_i_1_n_0\,
      CO(3) => \add_ln16_6_reg_1749_reg[7]_i_1_n_0\,
      CO(2) => \add_ln16_6_reg_1749_reg[7]_i_1_n_1\,
      CO(1) => \add_ln16_6_reg_1749_reg[7]_i_1_n_2\,
      CO(0) => \add_ln16_6_reg_1749_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \add_ln16_6_reg_1749[7]_i_2_n_0\,
      DI(2) => \add_ln16_6_reg_1749[7]_i_3_n_0\,
      DI(1) => \add_ln16_6_reg_1749[7]_i_4_n_0\,
      DI(0) => \add_ln16_6_reg_1749[7]_i_5_n_0\,
      O(3 downto 0) => add_ln16_6_fu_1108_p2(7 downto 4),
      S(3) => \add_ln16_6_reg_1749[7]_i_6_n_0\,
      S(2) => \add_ln16_6_reg_1749[7]_i_7_n_0\,
      S(1) => \add_ln16_6_reg_1749[7]_i_8_n_0\,
      S(0) => \add_ln16_6_reg_1749[7]_i_9_n_0\
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => B(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => reg_4460,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => p_reg_reg_0,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19 is
  port (
    reg_4240 : out STD_LOGIC;
    reg_4280 : out STD_LOGIC;
    add_ln16_2_fu_1060_p2 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \add_ln16_2_reg_1729_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19 is
  signal \add_ln16_2_reg_1729[11]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[11]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[11]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[11]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[15]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[15]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[15]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[15]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[17]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[3]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[3]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[3]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[3]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[7]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[7]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_2_reg_1729_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal \^reg_4240\ : STD_LOGIC;
  signal \^reg_4280\ : STD_LOGIC;
  signal \NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln16_2_reg_1729_reg[17]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  reg_4240 <= \^reg_4240\;
  reg_4280 <= \^reg_4280\;
\add_ln16_2_reg_1729[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(11),
      I1 => p_reg_reg_n_94,
      O => \add_ln16_2_reg_1729[11]_i_2_n_0\
    );
\add_ln16_2_reg_1729[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(10),
      I1 => p_reg_reg_n_95,
      O => \add_ln16_2_reg_1729[11]_i_3_n_0\
    );
\add_ln16_2_reg_1729[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(9),
      I1 => p_reg_reg_n_96,
      O => \add_ln16_2_reg_1729[11]_i_4_n_0\
    );
\add_ln16_2_reg_1729[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(8),
      I1 => p_reg_reg_n_97,
      O => \add_ln16_2_reg_1729[11]_i_5_n_0\
    );
\add_ln16_2_reg_1729[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(15),
      I1 => p_reg_reg_n_90,
      O => \add_ln16_2_reg_1729[15]_i_2_n_0\
    );
\add_ln16_2_reg_1729[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(14),
      I1 => p_reg_reg_n_91,
      O => \add_ln16_2_reg_1729[15]_i_3_n_0\
    );
\add_ln16_2_reg_1729[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(13),
      I1 => p_reg_reg_n_92,
      O => \add_ln16_2_reg_1729[15]_i_4_n_0\
    );
\add_ln16_2_reg_1729[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(12),
      I1 => p_reg_reg_n_93,
      O => \add_ln16_2_reg_1729[15]_i_5_n_0\
    );
\add_ln16_2_reg_1729[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(16),
      I1 => p_reg_reg_n_89,
      O => \add_ln16_2_reg_1729[17]_i_2_n_0\
    );
\add_ln16_2_reg_1729[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(3),
      I1 => p_reg_reg_n_102,
      O => \add_ln16_2_reg_1729[3]_i_2_n_0\
    );
\add_ln16_2_reg_1729[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(2),
      I1 => p_reg_reg_n_103,
      O => \add_ln16_2_reg_1729[3]_i_3_n_0\
    );
\add_ln16_2_reg_1729[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(1),
      I1 => p_reg_reg_n_104,
      O => \add_ln16_2_reg_1729[3]_i_4_n_0\
    );
\add_ln16_2_reg_1729[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(0),
      I1 => p_reg_reg_n_105,
      O => \add_ln16_2_reg_1729[3]_i_5_n_0\
    );
\add_ln16_2_reg_1729[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(7),
      I1 => p_reg_reg_n_98,
      O => \add_ln16_2_reg_1729[7]_i_2_n_0\
    );
\add_ln16_2_reg_1729[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(6),
      I1 => p_reg_reg_n_99,
      O => \add_ln16_2_reg_1729[7]_i_3_n_0\
    );
\add_ln16_2_reg_1729[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(5),
      I1 => p_reg_reg_n_100,
      O => \add_ln16_2_reg_1729[7]_i_4_n_0\
    );
\add_ln16_2_reg_1729[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln16_2_reg_1729_reg[17]\(4),
      I1 => p_reg_reg_n_101,
      O => \add_ln16_2_reg_1729[7]_i_5_n_0\
    );
\add_ln16_2_reg_1729_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_2_reg_1729_reg[7]_i_1_n_0\,
      CO(3) => \add_ln16_2_reg_1729_reg[11]_i_1_n_0\,
      CO(2) => \add_ln16_2_reg_1729_reg[11]_i_1_n_1\,
      CO(1) => \add_ln16_2_reg_1729_reg[11]_i_1_n_2\,
      CO(0) => \add_ln16_2_reg_1729_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \add_ln16_2_reg_1729_reg[17]\(11 downto 8),
      O(3 downto 0) => add_ln16_2_fu_1060_p2(11 downto 8),
      S(3) => \add_ln16_2_reg_1729[11]_i_2_n_0\,
      S(2) => \add_ln16_2_reg_1729[11]_i_3_n_0\,
      S(1) => \add_ln16_2_reg_1729[11]_i_4_n_0\,
      S(0) => \add_ln16_2_reg_1729[11]_i_5_n_0\
    );
\add_ln16_2_reg_1729_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_2_reg_1729_reg[11]_i_1_n_0\,
      CO(3) => \add_ln16_2_reg_1729_reg[15]_i_1_n_0\,
      CO(2) => \add_ln16_2_reg_1729_reg[15]_i_1_n_1\,
      CO(1) => \add_ln16_2_reg_1729_reg[15]_i_1_n_2\,
      CO(0) => \add_ln16_2_reg_1729_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \add_ln16_2_reg_1729_reg[17]\(15 downto 12),
      O(3 downto 0) => add_ln16_2_fu_1060_p2(15 downto 12),
      S(3) => \add_ln16_2_reg_1729[15]_i_2_n_0\,
      S(2) => \add_ln16_2_reg_1729[15]_i_3_n_0\,
      S(1) => \add_ln16_2_reg_1729[15]_i_4_n_0\,
      S(0) => \add_ln16_2_reg_1729[15]_i_5_n_0\
    );
\add_ln16_2_reg_1729_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_2_reg_1729_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => add_ln16_2_fu_1060_p2(17),
      CO(0) => \NLW_add_ln16_2_reg_1729_reg[17]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \add_ln16_2_reg_1729_reg[17]\(16),
      O(3 downto 1) => \NLW_add_ln16_2_reg_1729_reg[17]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => add_ln16_2_fu_1060_p2(16),
      S(3 downto 1) => B"001",
      S(0) => \add_ln16_2_reg_1729[17]_i_2_n_0\
    );
\add_ln16_2_reg_1729_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln16_2_reg_1729_reg[3]_i_1_n_0\,
      CO(2) => \add_ln16_2_reg_1729_reg[3]_i_1_n_1\,
      CO(1) => \add_ln16_2_reg_1729_reg[3]_i_1_n_2\,
      CO(0) => \add_ln16_2_reg_1729_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \add_ln16_2_reg_1729_reg[17]\(3 downto 0),
      O(3 downto 0) => add_ln16_2_fu_1060_p2(3 downto 0),
      S(3) => \add_ln16_2_reg_1729[3]_i_2_n_0\,
      S(2) => \add_ln16_2_reg_1729[3]_i_3_n_0\,
      S(1) => \add_ln16_2_reg_1729[3]_i_4_n_0\,
      S(0) => \add_ln16_2_reg_1729[3]_i_5_n_0\
    );
\add_ln16_2_reg_1729_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln16_2_reg_1729_reg[3]_i_1_n_0\,
      CO(3) => \add_ln16_2_reg_1729_reg[7]_i_1_n_0\,
      CO(2) => \add_ln16_2_reg_1729_reg[7]_i_1_n_1\,
      CO(1) => \add_ln16_2_reg_1729_reg[7]_i_1_n_2\,
      CO(0) => \add_ln16_2_reg_1729_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \add_ln16_2_reg_1729_reg[17]\(7 downto 4),
      O(3 downto 0) => add_ln16_2_fu_1060_p2(7 downto 4),
      S(3) => \add_ln16_2_reg_1729[7]_i_2_n_0\,
      S(2) => \add_ln16_2_reg_1729[7]_i_3_n_0\,
      S(1) => \add_ln16_2_reg_1729[7]_i_4_n_0\,
      S(0) => \add_ln16_2_reg_1729[7]_i_5_n_0\
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^reg_4240\,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^reg_4280\,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
tmp_product_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA088A0"
    )
        port map (
      I0 => Q(1),
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      O => \^reg_4240\
    );
tmp_product_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EEE000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => ap_start,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter0_reg,
      O => \^reg_4280\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_432 : in STD_LOGIC;
    p_reg_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20 is
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => A(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => B(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => reg_432,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => p_reg_reg_0,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4370 : in STD_LOGIC;
    tmp_product_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1 is
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => B(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_4370,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => tmp_product_0,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10 is
  signal \^b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ap_cs_fsm_reg[3]\ : STD_LOGIC;
  signal reg_4462 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
  B(7 downto 0) <= \^b\(7 downto 0);
  \ap_CS_fsm_reg[3]\ <= \^ap_cs_fsm_reg[3]\;
\p_reg_reg_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(0),
      O => \^b\(0)
    );
p_reg_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA088A0"
    )
        port map (
      I0 => Q(1),
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      O => \^ap_cs_fsm_reg[3]\
    );
\p_reg_reg_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(7),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(7),
      O => \^b\(7)
    );
\p_reg_reg_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(6),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(6),
      O => \^b\(6)
    );
\p_reg_reg_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(5),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(5),
      O => \^b\(5)
    );
\p_reg_reg_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(4),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(4),
      O => \^b\(4)
    );
\p_reg_reg_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(3),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(3),
      O => \^b\(3)
    );
\p_reg_reg_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(2),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(2),
      O => \^b\(2)
    );
\p_reg_reg_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => a_q0(1),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => a_q1(1),
      O => \^b\(1)
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => \^b\(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_4462,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^ap_cs_fsm_reg[3]\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
\tmp_product_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(2),
      O => reg_4462
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_product_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11 is
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => tmp_product_0(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_ready_int : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12 is
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ap_ready_int,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_enable_reg_pp0_iter1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  ap_enable_reg_pp0_iter1_reg(0) <= \^ap_enable_reg_pp0_iter1_reg\(0);
\add_ln16_1_reg_1679[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => \^e\(0)
    );
\add_ln16_3_reg_1709[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(1),
      O => \^ap_enable_reg_pp0_iter1_reg\(0)
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^e\(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^ap_enable_reg_pp0_iter1_reg\(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4560 : in STD_LOGIC;
    reg_4280 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7 is
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => a_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_4560,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => reg_4280,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_4240 : in STD_LOGIC;
    reg_432 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8 is
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => b_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => B(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_4240,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => reg_432,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_432 : out STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9 : entity is "matrix_mult_mul_8ns_8ns_16_1_1";
end bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9 is
  signal \^a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ap_cs_fsm_reg[3]\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal \^reg_432\ : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
  A(7 downto 0) <= \^a\(7 downto 0);
  B(7 downto 0) <= \^b\(7 downto 0);
  \ap_CS_fsm_reg[3]\ <= \^ap_cs_fsm_reg[3]\;
  ap_enable_reg_pp0_iter0 <= \^ap_enable_reg_pp0_iter0\;
  reg_432 <= \^reg_432\;
\a_address1[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => \^ap_enable_reg_pp0_iter0\
    );
p_reg_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(0),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(0),
      O => \^b\(0)
    );
p_reg_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(7),
      I1 => Q(3),
      I2 => b_q0(7),
      O => \^a\(7)
    );
p_reg_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(6),
      I1 => Q(3),
      I2 => b_q0(6),
      O => \^a\(6)
    );
p_reg_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(5),
      I1 => Q(3),
      I2 => b_q0(5),
      O => \^a\(5)
    );
p_reg_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(4),
      I1 => Q(3),
      I2 => b_q0(4),
      O => \^a\(4)
    );
p_reg_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(3),
      I1 => Q(3),
      I2 => b_q0(3),
      O => \^a\(3)
    );
p_reg_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(2),
      I1 => Q(3),
      I2 => b_q0(2),
      O => \^a\(2)
    );
p_reg_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(1),
      I1 => Q(3),
      I2 => b_q0(1),
      O => \^a\(1)
    );
p_reg_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => b_q1(0),
      I1 => Q(3),
      I2 => b_q0(0),
      O => \^a\(0)
    );
\p_reg_reg_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EEE000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => ap_start,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter0_reg,
      O => \^reg_432\
    );
\p_reg_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0CFC08A80"
    )
        port map (
      I0 => Q(2),
      I1 => ap_start,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => Q(3),
      I5 => Q(4),
      O => \^ap_cs_fsm_reg[3]\
    );
p_reg_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(7),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(7),
      O => \^b\(7)
    );
p_reg_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(6),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(6),
      O => \^b\(6)
    );
p_reg_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(5),
      O => \^b\(5)
    );
p_reg_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(4),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(4),
      O => \^b\(4)
    );
p_reg_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(3),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(3),
      O => \^b\(3)
    );
p_reg_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(2),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(2),
      O => \^b\(2)
    );
p_reg_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => a_q0(1),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \^ap_enable_reg_pp0_iter0\,
      I4 => a_q1(1),
      O => \^b\(1)
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => \^a\(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => \^b\(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^reg_432\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^ap_cs_fsm_reg[3]\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_432 : in STD_LOGIC;
    p_reg_reg : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_20
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(7 downto 0) => B(7 downto 0),
      D(16 downto 0) => D(16 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk,
      p_reg_reg_0 => p_reg_reg,
      reg_432 => reg_432
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0 is
  port (
    reg_4240 : out STD_LOGIC;
    reg_4280 : out STD_LOGIC;
    add_ln16_2_fu_1060_p2 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \add_ln16_2_reg_1729_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_19
     port map (
      P(15 downto 0) => P(15 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      add_ln16_2_fu_1060_p2(17 downto 0) => add_ln16_2_fu_1060_p2(17 downto 0),
      \add_ln16_2_reg_1729_reg[17]\(16 downto 0) => \add_ln16_2_reg_1729_reg[17]\(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_4240 => reg_4240,
      reg_4280 => reg_4280
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1 is
  port (
    add_ln16_6_fu_1108_p2 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    reg_4460 : in STD_LOGIC;
    p_reg_reg : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \add_ln16_6_reg_1749_reg[18]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_18
     port map (
      B(7 downto 0) => B(7 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(17 downto 0) => Q(17 downto 0),
      add_ln16_6_fu_1108_p2(18 downto 0) => add_ln16_6_fu_1108_p2(18 downto 0),
      \add_ln16_6_reg_1749_reg[18]\(16 downto 0) => \add_ln16_6_reg_1749_reg[18]\(16 downto 0),
      ap_clk => ap_clk,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      p_reg_reg_0 => p_reg_reg,
      reg_4460 => reg_4460
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_4460 : out STD_LOGIC;
    a_load_11_reg_14690 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_17
     port map (
      D(16 downto 0) => D(16 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      reg_4460 => reg_4460
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3 is
  port (
    a_load_11_reg_14690 : out STD_LOGIC;
    add_ln16_9_fu_1159_p2 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC;
    \add_ln16_9_reg_1779_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_16
     port map (
      P(15 downto 0) => P(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      add_ln16_9_fu_1159_p2(17 downto 0) => add_ln16_9_fu_1159_p2(17 downto 0),
      \add_ln16_9_reg_1779_reg[17]\(16 downto 0) => \add_ln16_9_reg_1779_reg[17]\(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    a_load_11_reg_14690 : in STD_LOGIC;
    a_load_13_reg_15250 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_15
     port map (
      D(16 downto 0) => D(16 downto 0),
      P(15 downto 0) => P(15 downto 0),
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_load_13_reg_15250 => a_load_13_reg_15250,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      b_q0(7 downto 0) => b_q0(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5 is
  port (
    reg_4560 : out STD_LOGIC;
    a_load_13_reg_15250 : out STD_LOGIC;
    add_ln16_13_fu_1200_p2 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    \add_ln16_13_reg_1794_reg[18]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \add_ln16_13_reg_1794_reg[18]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_14
     port map (
      P(15 downto 0) => P(15 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      a_load_13_reg_15250 => a_load_13_reg_15250,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      add_ln16_13_fu_1200_p2(18 downto 0) => add_ln16_13_fu_1200_p2(18 downto 0),
      \add_ln16_13_reg_1794_reg[18]\(17 downto 0) => \add_ln16_13_reg_1794_reg[18]\(17 downto 0),
      \add_ln16_13_reg_1794_reg[18]_0\(16 downto 0) => \add_ln16_13_reg_1794_reg[18]_0\(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      reg_4560 => reg_4560
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_4370 : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reg_432 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6 : entity is "matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1";
end bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6 is
begin
matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_DSP48_0
     port map (
      B(7 downto 0) => B(7 downto 0),
      D(16 downto 0) => D(16 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      a_q0(7 downto 0) => a_q0(7 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_432 => reg_432,
      reg_4370 => reg_4370
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_matrix_mult is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_ce0 : out STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_ce1 : out STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_ce0 : out STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_ce1 : out STD_LOGIC;
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prod_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prod_ce0 : out STD_LOGIC;
    prod_we0 : out STD_LOGIC;
    prod_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_matrix_mult : entity is "matrix_mult";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of bd_0_hls_inst_0_matrix_mult : entity is "8'b00100000";
  attribute ap_ST_fsm_pp0_stage6 : string;
  attribute ap_ST_fsm_pp0_stage6 of bd_0_hls_inst_0_matrix_mult : entity is "8'b01000000";
  attribute ap_ST_fsm_pp0_stage7 : string;
  attribute ap_ST_fsm_pp0_stage7 of bd_0_hls_inst_0_matrix_mult : entity is "8'b10000000";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_matrix_mult : entity is "yes";
end bd_0_hls_inst_0_matrix_mult;

architecture STRUCTURE of bd_0_hls_inst_0_matrix_mult is
  signal \<const0>\ : STD_LOGIC;
  signal \^a_address0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \a_address0[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^a_address1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \a_address1[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_address1[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_address1[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_address1[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_address1[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^a_ce0\ : STD_LOGIC;
  signal a_load_11_reg_14690 : STD_LOGIC;
  signal a_load_12_reg_16890 : STD_LOGIC;
  signal a_load_13_reg_15250 : STD_LOGIC;
  signal add_ln10_1_fu_908_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal add_ln16_10_reg_1789 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal add_ln16_10_reg_17890 : STD_LOGIC;
  signal add_ln16_13_fu_1200_p2 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal add_ln16_13_reg_1794 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal add_ln16_17_reg_1384 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal add_ln16_1_reg_1679 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal add_ln16_21_fu_629_p2 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal add_ln16_21_reg_1419 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \add_ln16_21_reg_1419[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln16_21_reg_1419_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln16_21_reg_1419_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln16_21_reg_1419_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal add_ln16_2_fu_1060_p2 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal add_ln16_2_reg_1729 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal add_ln16_3_reg_1709 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal add_ln16_6_fu_1108_p2 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal add_ln16_6_reg_1749 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal add_ln16_7_reg_1769 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal add_ln16_7_reg_17690 : STD_LOGIC;
  signal add_ln16_9_fu_1159_p2 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal add_ln16_9_reg_1779 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal add_ln16_s_fu_973_p3 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage5 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage6 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage7 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0 : STD_LOGIC;
  signal ap_ready_int : STD_LOGIC;
  signal \b_address0[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address0[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address0[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address0[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address0[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \b_address0[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \b_address0[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address0[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address0[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \b_address0[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \b_address0[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address0[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address0[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \b_address1[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \b_address1[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal b_ce0_INST_0_i_1_n_0 : STD_LOGIC;
  signal bit_sel_reg_1331 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal flow_control_loop_pipe_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal i2_fu_118 : STD_LOGIC;
  signal \i2_fu_118[3]_i_1_n_0\ : STD_LOGIC;
  signal i2_fu_118_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_fu_512_p3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal icmp_ln10_fu_920_p2 : STD_LOGIC;
  signal icmp_ln10_reg_1635 : STD_LOGIC;
  signal icmp_ln10_reg_1635_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln124_reg_413_reg_n_0_[0]\ : STD_LOGIC;
  signal icmp_ln12_fu_914_p2 : STD_LOGIC;
  signal icmp_ln12_reg_1630 : STD_LOGIC;
  signal \icmp_ln12_reg_1630[0]_i_1_n_0\ : STD_LOGIC;
  signal indvar_flatten1_fu_114_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal j3_fu_122 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal j_fu_903_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8 : STD_LOGIC;
  signal mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U2_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U3_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_17 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_26 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_27 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_28 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_29 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_30 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_31 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_32 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_33 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U4_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_16 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_17 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_18 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_19 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_20 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_21 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_22 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_23 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_24 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U5_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U6_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U7_n_9 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_0 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_10 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_11 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_12 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_13 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_14 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_15 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_8 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U8_n_9 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^prod_ce0\ : STD_LOGIC;
  signal \^prod_d0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \prod_d0[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_n_0\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_n_1\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_n_2\ : STD_LOGIC;
  signal \prod_d0[0]_INST_0_n_3\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_n_0\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_n_1\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_n_2\ : STD_LOGIC;
  signal \prod_d0[12]_INST_0_n_3\ : STD_LOGIC;
  signal \prod_d0[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prod_d0[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prod_d0[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prod_d0[16]_INST_0_n_2\ : STD_LOGIC;
  signal \prod_d0[16]_INST_0_n_3\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_n_0\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_n_1\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_n_2\ : STD_LOGIC;
  signal \prod_d0[4]_INST_0_n_3\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_n_0\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_n_1\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_n_2\ : STD_LOGIC;
  signal \prod_d0[8]_INST_0_n_3\ : STD_LOGIC;
  signal reg_4240 : STD_LOGIC;
  signal reg_4280 : STD_LOGIC;
  signal reg_432 : STD_LOGIC;
  signal reg_4370 : STD_LOGIC;
  signal reg_4460 : STD_LOGIC;
  signal reg_4511 : STD_LOGIC;
  signal reg_4560 : STD_LOGIC;
  signal trunc_ln16_reg_1336 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zext_ln16_47_reg_1404 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal zext_ln16_48_reg_1374_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal zext_ln16_49_reg_1474 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_add_ln16_21_reg_1419_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_prod_d0[16]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_prod_d0[16]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_address0[0]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \a_address1[0]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \a_address1[2]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \a_address1[3]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \a_address1[4]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \a_address1[6]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \a_address1[7]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \add_ln16_17_reg_1384[4]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \add_ln16_21_reg_1419_reg[7]_i_1\ : label is 35;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter2_reg_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \b_address0[5]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \b_address0[5]_INST_0_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \b_address0[7]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \b_address0[7]_INST_0_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \b_address1[6]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of b_ce0_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of b_ce1_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \empty_reg_1341[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \icmp_ln10_reg_1635[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \icmp_ln12_reg_1630[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \indvar_flatten1_fu_114[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \j3_fu_122[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \j3_fu_122[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \j3_fu_122[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j3_fu_122[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j3_fu_122[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of prod_we0_INST_0 : label is "soft_lutpair21";
begin
  a_address0(7 downto 2) <= \^a_address0\(7 downto 2);
  a_address0(1) <= \<const0>\;
  a_address0(0) <= \^a_address0\(0);
  a_address1(7 downto 2) <= \^a_address0\(7 downto 2);
  a_address1(1) <= \<const0>\;
  a_address1(0) <= \^a_address1\(0);
  a_ce0 <= \^a_ce0\;
  a_ce1 <= \^a_ce0\;
  b_ce0 <= \^a_ce0\;
  prod_ce0 <= \^prod_ce0\;
  prod_d0(31) <= \<const0>\;
  prod_d0(30) <= \<const0>\;
  prod_d0(29) <= \<const0>\;
  prod_d0(28) <= \<const0>\;
  prod_d0(27) <= \<const0>\;
  prod_d0(26) <= \<const0>\;
  prod_d0(25) <= \<const0>\;
  prod_d0(24) <= \<const0>\;
  prod_d0(23) <= \<const0>\;
  prod_d0(22) <= \<const0>\;
  prod_d0(21) <= \<const0>\;
  prod_d0(20) <= \<const0>\;
  prod_d0(19 downto 0) <= \^prod_d0\(19 downto 0);
  prod_we0 <= \^prod_ce0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\a_address0[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F001F111FFF1F"
    )
        port map (
      I0 => \a_address0[0]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_start,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^a_address0\(0)
    );
\a_address0[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage6,
      I1 => ap_CS_fsm_pp0_stage7,
      O => \a_address0[0]_INST_0_i_1_n_0\
    );
\a_address1[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => \a_address1[0]_INST_0_i_1_n_0\,
      I5 => \a_address0[0]_INST_0_i_1_n_0\,
      O => \^a_address1\(0)
    );
\a_address1[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter0_reg,
      O => \a_address1[0]_INST_0_i_1_n_0\
    );
\a_address1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008800A00088"
    )
        port map (
      I0 => \a_address1[2]_INST_0_i_1_n_0\,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => ap_CS_fsm_pp0_stage7,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^a_address0\(2)
    );
\a_address1[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FFF2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => ap_CS_fsm_pp0_stage6,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage5,
      O => \a_address1[2]_INST_0_i_1_n_0\
    );
\a_address1[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD55555555"
    )
        port map (
      I0 => \a_address1[3]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage7,
      I2 => ap_CS_fsm_pp0_stage5,
      I3 => ap_CS_fsm_pp0_stage6,
      I4 => flow_control_loop_pipe_U_n_9,
      I5 => ap_enable_reg_pp0_iter0,
      O => \^a_address0\(3)
    );
\a_address1[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_CS_fsm_pp0_stage0,
      O => \a_address1[3]_INST_0_i_1_n_0\
    );
\a_address1[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FF88888"
    )
        port map (
      I0 => data1(4),
      I1 => \a_address1[7]_INST_0_i_1_n_0\,
      I2 => i2_fu_118_reg(0),
      I3 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      I4 => \a_address1[7]_INST_0_i_3_n_0\,
      O => \^a_address0\(4)
    );
\a_address1[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFF88888888888"
    )
        port map (
      I0 => data1(5),
      I1 => \a_address1[7]_INST_0_i_1_n_0\,
      I2 => i2_fu_118_reg(0),
      I3 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      I4 => i2_fu_118_reg(1),
      I5 => \a_address1[7]_INST_0_i_3_n_0\,
      O => \^a_address0\(5)
    );
\a_address1[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data1(6),
      I1 => \a_address1[7]_INST_0_i_1_n_0\,
      I2 => i_fu_512_p3(2),
      I3 => \a_address1[7]_INST_0_i_3_n_0\,
      O => \^a_address0\(6)
    );
\a_address1[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      I1 => i2_fu_118_reg(0),
      I2 => i2_fu_118_reg(1),
      I3 => i2_fu_118_reg(2),
      O => i_fu_512_p3(2)
    );
\a_address1[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data1(7),
      I1 => \a_address1[7]_INST_0_i_1_n_0\,
      I2 => i_fu_512_p3(3),
      I3 => \a_address1[7]_INST_0_i_3_n_0\,
      O => \^a_address0\(7)
    );
\a_address1[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \b_address0[7]_INST_0_i_2_n_0\,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => \a_address1[3]_INST_0_i_1_n_0\,
      O => \a_address1[7]_INST_0_i_1_n_0\
    );
\a_address1[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i2_fu_118_reg(1),
      I1 => i2_fu_118_reg(2),
      I2 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      I3 => i2_fu_118_reg(0),
      I4 => i2_fu_118_reg(3),
      O => i_fu_512_p3(3)
    );
\a_address1[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F001F111FFF1F"
    )
        port map (
      I0 => flow_control_loop_pipe_U_n_10,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_start,
      I5 => ap_enable_reg_pp0_iter1,
      O => \a_address1[7]_INST_0_i_3_n_0\
    );
\add_ln16_10_reg_1789[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_CS_fsm_pp0_stage6,
      O => add_ln16_10_reg_17890
    );
\add_ln16_10_reg_1789_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16,
      Q => add_ln16_10_reg_1789(0),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6,
      Q => add_ln16_10_reg_1789(10),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5,
      Q => add_ln16_10_reg_1789(11),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4,
      Q => add_ln16_10_reg_1789(12),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3,
      Q => add_ln16_10_reg_1789(13),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2,
      Q => add_ln16_10_reg_1789(14),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1,
      Q => add_ln16_10_reg_1789(15),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0,
      Q => add_ln16_10_reg_1789(16),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15,
      Q => add_ln16_10_reg_1789(1),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14,
      Q => add_ln16_10_reg_1789(2),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13,
      Q => add_ln16_10_reg_1789(3),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12,
      Q => add_ln16_10_reg_1789(4),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11,
      Q => add_ln16_10_reg_1789(5),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10,
      Q => add_ln16_10_reg_1789(6),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9,
      Q => add_ln16_10_reg_1789(7),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8,
      Q => add_ln16_10_reg_1789(8),
      R => '0'
    );
\add_ln16_10_reg_1789_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_10_reg_17890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7,
      Q => add_ln16_10_reg_1789(9),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(0),
      Q => add_ln16_13_reg_1794(0),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(10),
      Q => add_ln16_13_reg_1794(10),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(11),
      Q => add_ln16_13_reg_1794(11),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(12),
      Q => add_ln16_13_reg_1794(12),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(13),
      Q => add_ln16_13_reg_1794(13),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(14),
      Q => add_ln16_13_reg_1794(14),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(15),
      Q => add_ln16_13_reg_1794(15),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(16),
      Q => add_ln16_13_reg_1794(16),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(17),
      Q => add_ln16_13_reg_1794(17),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(18),
      Q => add_ln16_13_reg_1794(18),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(1),
      Q => add_ln16_13_reg_1794(1),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(2),
      Q => add_ln16_13_reg_1794(2),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(3),
      Q => add_ln16_13_reg_1794(3),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(4),
      Q => add_ln16_13_reg_1794(4),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(5),
      Q => add_ln16_13_reg_1794(5),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(6),
      Q => add_ln16_13_reg_1794(6),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(7),
      Q => add_ln16_13_reg_1794(7),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(8),
      Q => add_ln16_13_reg_1794(8),
      R => '0'
    );
\add_ln16_13_reg_1794_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => add_ln16_13_fu_1200_p2(9),
      Q => add_ln16_13_reg_1794(9),
      R => '0'
    );
\add_ln16_17_reg_1384[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_sel_reg_1331,
      O => add_ln16_s_fu_973_p3(4)
    );
\add_ln16_17_reg_1384_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => add_ln16_s_fu_973_p3(4),
      Q => add_ln16_17_reg_1384(4),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16,
      Q => add_ln16_1_reg_1679(0),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6,
      Q => add_ln16_1_reg_1679(10),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5,
      Q => add_ln16_1_reg_1679(11),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4,
      Q => add_ln16_1_reg_1679(12),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3,
      Q => add_ln16_1_reg_1679(13),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2,
      Q => add_ln16_1_reg_1679(14),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1,
      Q => add_ln16_1_reg_1679(15),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0,
      Q => add_ln16_1_reg_1679(16),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15,
      Q => add_ln16_1_reg_1679(1),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14,
      Q => add_ln16_1_reg_1679(2),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13,
      Q => add_ln16_1_reg_1679(3),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12,
      Q => add_ln16_1_reg_1679(4),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11,
      Q => add_ln16_1_reg_1679(5),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10,
      Q => add_ln16_1_reg_1679(6),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9,
      Q => add_ln16_1_reg_1679(7),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8,
      Q => add_ln16_1_reg_1679(8),
      R => '0'
    );
\add_ln16_1_reg_1679_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => reg_4511,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7,
      Q => add_ln16_1_reg_1679(9),
      R => '0'
    );
\add_ln16_21_reg_1419[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1(4),
      I1 => bit_sel_reg_1331,
      O => \add_ln16_21_reg_1419[7]_i_2_n_0\
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => zext_ln16_47_reg_1404(0),
      Q => prod_address0(0),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => zext_ln16_47_reg_1404(1),
      Q => prod_address0(1),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => zext_ln16_47_reg_1404(2),
      Q => prod_address0(2),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => zext_ln16_47_reg_1404(3),
      Q => prod_address0(3),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_reg_1419(4),
      Q => prod_address0(4),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_reg_1419(5),
      Q => prod_address0(5),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_reg_1419(6),
      Q => prod_address0(6),
      R => '0'
    );
\add_ln16_21_reg_1419_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_reg_1419(7),
      Q => prod_address0(7),
      R => '0'
    );
\add_ln16_21_reg_1419_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_fu_629_p2(4),
      Q => add_ln16_21_reg_1419(4),
      R => '0'
    );
\add_ln16_21_reg_1419_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_fu_629_p2(5),
      Q => add_ln16_21_reg_1419(5),
      R => '0'
    );
\add_ln16_21_reg_1419_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_fu_629_p2(6),
      Q => add_ln16_21_reg_1419(6),
      R => '0'
    );
\add_ln16_21_reg_1419_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_21_fu_629_p2(7),
      Q => add_ln16_21_reg_1419(7),
      R => '0'
    );
\add_ln16_21_reg_1419_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln16_21_reg_1419_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \add_ln16_21_reg_1419_reg[7]_i_1_n_1\,
      CO(1) => \add_ln16_21_reg_1419_reg[7]_i_1_n_2\,
      CO(0) => \add_ln16_21_reg_1419_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data1(4),
      O(3 downto 0) => add_ln16_21_fu_629_p2(7 downto 4),
      S(3 downto 1) => data1(7 downto 5),
      S(0) => \add_ln16_21_reg_1419[7]_i_2_n_0\
    );
\add_ln16_2_reg_1729_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(0),
      Q => add_ln16_2_reg_1729(0),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(10),
      Q => add_ln16_2_reg_1729(10),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(11),
      Q => add_ln16_2_reg_1729(11),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(12),
      Q => add_ln16_2_reg_1729(12),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(13),
      Q => add_ln16_2_reg_1729(13),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(14),
      Q => add_ln16_2_reg_1729(14),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(15),
      Q => add_ln16_2_reg_1729(15),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(16),
      Q => add_ln16_2_reg_1729(16),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(17),
      Q => add_ln16_2_reg_1729(17),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(1),
      Q => add_ln16_2_reg_1729(1),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(2),
      Q => add_ln16_2_reg_1729(2),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(3),
      Q => add_ln16_2_reg_1729(3),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(4),
      Q => add_ln16_2_reg_1729(4),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(5),
      Q => add_ln16_2_reg_1729(5),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(6),
      Q => add_ln16_2_reg_1729(6),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(7),
      Q => add_ln16_2_reg_1729(7),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(8),
      Q => add_ln16_2_reg_1729(8),
      R => '0'
    );
\add_ln16_2_reg_1729_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => add_ln16_2_fu_1060_p2(9),
      Q => add_ln16_2_reg_1729(9),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16,
      Q => add_ln16_3_reg_1709(0),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6,
      Q => add_ln16_3_reg_1709(10),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5,
      Q => add_ln16_3_reg_1709(11),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4,
      Q => add_ln16_3_reg_1709(12),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3,
      Q => add_ln16_3_reg_1709(13),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2,
      Q => add_ln16_3_reg_1709(14),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1,
      Q => add_ln16_3_reg_1709(15),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0,
      Q => add_ln16_3_reg_1709(16),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15,
      Q => add_ln16_3_reg_1709(1),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14,
      Q => add_ln16_3_reg_1709(2),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13,
      Q => add_ln16_3_reg_1709(3),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12,
      Q => add_ln16_3_reg_1709(4),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11,
      Q => add_ln16_3_reg_1709(5),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10,
      Q => add_ln16_3_reg_1709(6),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9,
      Q => add_ln16_3_reg_1709(7),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8,
      Q => add_ln16_3_reg_1709(8),
      R => '0'
    );
\add_ln16_3_reg_1709_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => a_load_12_reg_16890,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7,
      Q => add_ln16_3_reg_1709(9),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(0),
      Q => add_ln16_6_reg_1749(0),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(10),
      Q => add_ln16_6_reg_1749(10),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(11),
      Q => add_ln16_6_reg_1749(11),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(12),
      Q => add_ln16_6_reg_1749(12),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(13),
      Q => add_ln16_6_reg_1749(13),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(14),
      Q => add_ln16_6_reg_1749(14),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(15),
      Q => add_ln16_6_reg_1749(15),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(16),
      Q => add_ln16_6_reg_1749(16),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(17),
      Q => add_ln16_6_reg_1749(17),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(18),
      Q => add_ln16_6_reg_1749(18),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(1),
      Q => add_ln16_6_reg_1749(1),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(2),
      Q => add_ln16_6_reg_1749(2),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(3),
      Q => add_ln16_6_reg_1749(3),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(4),
      Q => add_ln16_6_reg_1749(4),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(5),
      Q => add_ln16_6_reg_1749(5),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(6),
      Q => add_ln16_6_reg_1749(6),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(7),
      Q => add_ln16_6_reg_1749(7),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(8),
      Q => add_ln16_6_reg_1749(8),
      R => '0'
    );
\add_ln16_6_reg_1749_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage3,
      D => add_ln16_6_fu_1108_p2(9),
      Q => add_ln16_6_reg_1749(9),
      R => '0'
    );
\add_ln16_7_reg_1769[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_CS_fsm_pp0_stage4,
      O => add_ln16_7_reg_17690
    );
\add_ln16_7_reg_1769_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16,
      Q => add_ln16_7_reg_1769(0),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6,
      Q => add_ln16_7_reg_1769(10),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5,
      Q => add_ln16_7_reg_1769(11),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4,
      Q => add_ln16_7_reg_1769(12),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3,
      Q => add_ln16_7_reg_1769(13),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2,
      Q => add_ln16_7_reg_1769(14),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1,
      Q => add_ln16_7_reg_1769(15),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0,
      Q => add_ln16_7_reg_1769(16),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15,
      Q => add_ln16_7_reg_1769(1),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14,
      Q => add_ln16_7_reg_1769(2),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13,
      Q => add_ln16_7_reg_1769(3),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12,
      Q => add_ln16_7_reg_1769(4),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11,
      Q => add_ln16_7_reg_1769(5),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10,
      Q => add_ln16_7_reg_1769(6),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9,
      Q => add_ln16_7_reg_1769(7),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8,
      Q => add_ln16_7_reg_1769(8),
      R => '0'
    );
\add_ln16_7_reg_1769_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln16_7_reg_17690,
      D => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7,
      Q => add_ln16_7_reg_1769(9),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(0),
      Q => add_ln16_9_reg_1779(0),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(10),
      Q => add_ln16_9_reg_1779(10),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(11),
      Q => add_ln16_9_reg_1779(11),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(12),
      Q => add_ln16_9_reg_1779(12),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(13),
      Q => add_ln16_9_reg_1779(13),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(14),
      Q => add_ln16_9_reg_1779(14),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(15),
      Q => add_ln16_9_reg_1779(15),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(16),
      Q => add_ln16_9_reg_1779(16),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(17),
      Q => add_ln16_9_reg_1779(17),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(1),
      Q => add_ln16_9_reg_1779(1),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(2),
      Q => add_ln16_9_reg_1779(2),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(3),
      Q => add_ln16_9_reg_1779(3),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(4),
      Q => add_ln16_9_reg_1779(4),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(5),
      Q => add_ln16_9_reg_1779(5),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(6),
      Q => add_ln16_9_reg_1779(6),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(7),
      Q => add_ln16_9_reg_1779(7),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(8),
      Q => add_ln16_9_reg_1779(8),
      R => '0'
    );
\add_ln16_9_reg_1779_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage5,
      D => add_ln16_9_fu_1159_p2(9),
      Q => add_ln16_9_reg_1779(9),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAABAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage7,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_start,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => icmp_ln10_reg_1635_pp0_iter1_reg,
      I5 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0F0F0F0E0E0E0E"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_start,
      I2 => b_ce0_INST_0_i_1_n_0,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => icmp_ln10_reg_1635_pp0_iter1_reg,
      I5 => ap_enable_reg_pp0_iter2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_pp0_stage0,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage1,
      Q => ap_CS_fsm_pp0_stage2,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage2,
      Q => ap_CS_fsm_pp0_stage3,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage3,
      Q => ap_CS_fsm_pp0_stage4,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage4,
      Q => ap_CS_fsm_pp0_stage5,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage5,
      Q => ap_CS_fsm_pp0_stage6,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage6,
      Q => ap_CS_fsm_pp0_stage7,
      R => ap_rst
    );
ap_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => ap_CS_fsm_pp0_stage0,
      O => ap_done
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => ap_rst
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => ap_start,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage7,
      I4 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00454040"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage7,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_start,
      I3 => ap_enable_reg_pp0_iter1,
      O => ap_idle
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00FF00FF00FF00"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln10_reg_1635_pp0_iter1_reg,
      I3 => ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => ap_CS_fsm_pp0_stage0,
      O => ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter1_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(7),
      I1 => ap_ready_int,
      I2 => indvar_flatten1_fu_114_reg(6),
      I3 => flow_control_loop_pipe_U_n_1,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => ap_loop_exit_ready_pp0_iter1_reg,
      O => ap_loop_exit_ready_pp0_iter1_reg_i_2_n_0
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter2_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00BF0FBF000000"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => ap_loop_exit_ready_pp0_iter2_reg,
      O => ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter2_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => icmp_ln10_reg_1635_pp0_iter1_reg,
      O => ap_loop_exit_ready_pp0_iter2_reg_i_2_n_0
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0,
      Q => ap_loop_exit_ready_pp0_iter2_reg,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(7),
      I1 => ap_ready_int,
      I2 => indvar_flatten1_fu_114_reg(6),
      I3 => flow_control_loop_pipe_U_n_1,
      O => ap_ready
    );
\b_address0[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \b_address0[3]_INST_0_i_1_n_0\,
      I1 => zext_ln16_48_reg_1374_reg(0),
      I2 => \b_address0[4]_INST_0_i_3_n_0\,
      I3 => zext_ln16_49_reg_1474(0),
      I4 => trunc_ln16_reg_1336(0),
      I5 => \b_address0[3]_INST_0_i_2_n_0\,
      O => b_address0(0)
    );
\b_address0[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \b_address0[3]_INST_0_i_1_n_0\,
      I1 => zext_ln16_48_reg_1374_reg(1),
      I2 => \b_address0[4]_INST_0_i_3_n_0\,
      I3 => zext_ln16_49_reg_1474(1),
      I4 => trunc_ln16_reg_1336(1),
      I5 => \b_address0[3]_INST_0_i_2_n_0\,
      O => b_address0(1)
    );
\b_address0[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \b_address0[3]_INST_0_i_1_n_0\,
      I1 => zext_ln16_48_reg_1374_reg(2),
      I2 => \b_address0[4]_INST_0_i_3_n_0\,
      I3 => zext_ln16_49_reg_1474(2),
      I4 => trunc_ln16_reg_1336(2),
      I5 => \b_address0[3]_INST_0_i_2_n_0\,
      O => b_address0(2)
    );
\b_address0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \b_address0[3]_INST_0_i_1_n_0\,
      I1 => zext_ln16_48_reg_1374_reg(3),
      I2 => \b_address0[4]_INST_0_i_3_n_0\,
      I3 => zext_ln16_49_reg_1474(3),
      I4 => trunc_ln16_reg_1336(3),
      I5 => \b_address0[3]_INST_0_i_2_n_0\,
      O => b_address0(3)
    );
\b_address0[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101000100000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage6,
      I1 => ap_CS_fsm_pp0_stage7,
      I2 => \a_address1[0]_INST_0_i_1_n_0\,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage3,
      I5 => ap_CS_fsm_pp0_stage5,
      O => \b_address0[3]_INST_0_i_1_n_0\
    );
\b_address0[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555F7FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => ap_CS_fsm_pp0_stage4,
      I3 => ap_CS_fsm_pp0_stage5,
      I4 => \a_address0[0]_INST_0_i_1_n_0\,
      I5 => \a_address1[3]_INST_0_i_1_n_0\,
      O => \b_address0[3]_INST_0_i_2_n_0\
    );
\b_address0[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEFEEEFEEEF"
    )
        port map (
      I0 => \b_address0[4]_INST_0_i_1_n_0\,
      I1 => \b_address0[4]_INST_0_i_2_n_0\,
      I2 => \a_address1[3]_INST_0_i_1_n_0\,
      I3 => bit_sel_reg_1331,
      I4 => \b_address0[4]_INST_0_i_3_n_0\,
      I5 => zext_ln16_49_reg_1474(4),
      O => b_address0(4)
    );
\b_address0[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080A00000F0000"
    )
        port map (
      I0 => \a_address1[0]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => \b_address0[7]_INST_0_i_2_n_0\,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => add_ln16_17_reg_1384(4),
      I5 => bit_sel_reg_1331,
      O => \b_address0[4]_INST_0_i_1_n_0\
    );
\b_address0[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF8080FFFF"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage5,
      I1 => zext_ln16_48_reg_1374_reg(4),
      I2 => \b_address0[4]_INST_0_i_4_n_0\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => bit_sel_reg_1331,
      I5 => flow_control_loop_pipe_U_n_10,
      O => \b_address0[4]_INST_0_i_2_n_0\
    );
\b_address0[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0EEE000E000E0"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage7,
      I1 => ap_CS_fsm_pp0_stage6,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_start,
      O => \b_address0[4]_INST_0_i_3_n_0\
    );
\b_address0[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002E22"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_start,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => ap_CS_fsm_pp0_stage6,
      O => \b_address0[4]_INST_0_i_4_n_0\
    );
\b_address0[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF999F111"
    )
        port map (
      I0 => \a_address1[3]_INST_0_i_1_n_0\,
      I1 => bit_sel_reg_1331,
      I2 => ap_CS_fsm_pp0_stage7,
      I3 => \a_address1[0]_INST_0_i_1_n_0\,
      I4 => \b_address0[5]_INST_0_i_1_n_0\,
      I5 => \b_address0[5]_INST_0_i_2_n_0\,
      O => b_address0(5)
    );
\b_address0[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage6,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_CS_fsm_pp0_stage4,
      I3 => ap_CS_fsm_pp0_stage3,
      O => \b_address0[5]_INST_0_i_1_n_0\
    );
\b_address0[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => bit_sel_reg_1331,
      I1 => \b_address0[5]_INST_0_i_3_n_0\,
      I2 => \a_address1[0]_INST_0_i_1_n_0\,
      I3 => \b_address0[5]_INST_0_i_4_n_0\,
      I4 => zext_ln16_48_reg_1374_reg(4),
      I5 => flow_control_loop_pipe_U_n_11,
      O => \b_address0[5]_INST_0_i_2_n_0\
    );
\b_address0[5]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"101F"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_start,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter0_reg,
      O => \b_address0[5]_INST_0_i_3_n_0\
    );
\b_address0[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage5,
      I1 => ap_CS_fsm_pp0_stage6,
      O => \b_address0[5]_INST_0_i_4_n_0\
    );
\b_address0[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABFFABAAAAFFFF"
    )
        port map (
      I0 => \b_address0[6]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage5,
      I3 => \a_address0[0]_INST_0_i_1_n_0\,
      I4 => bit_sel_reg_1331,
      I5 => \a_address1[3]_INST_0_i_1_n_0\,
      O => b_address0(6)
    );
\b_address0[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002F002F222FFF2F"
    )
        port map (
      I0 => flow_control_loop_pipe_U_n_9,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_start,
      I5 => ap_enable_reg_pp0_iter1,
      O => \b_address0[6]_INST_0_i_1_n_0\
    );
\b_address0[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF32FF00FF00"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => ap_CS_fsm_pp0_stage4,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => \b_address0[7]_INST_0_i_1_n_0\,
      I4 => \b_address0[7]_INST_0_i_2_n_0\,
      I5 => \a_address1[0]_INST_0_i_1_n_0\,
      O => b_address0(7)
    );
\b_address0[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => bit_sel_reg_1331,
      O => \b_address0[7]_INST_0_i_1_n_0\
    );
\b_address0[7]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage7,
      I1 => ap_CS_fsm_pp0_stage6,
      I2 => ap_CS_fsm_pp0_stage5,
      O => \b_address0[7]_INST_0_i_2_n_0\
    );
\b_address1[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAFFFE"
    )
        port map (
      I0 => \b_address1[5]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_CS_fsm_pp0_stage6,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => zext_ln16_49_reg_1474(4),
      O => b_address1(5)
    );
\b_address1[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555500FC"
    )
        port map (
      I0 => zext_ln16_47_reg_1404(4),
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => bit_sel_reg_1331,
      I4 => ap_CS_fsm_pp0_stage3,
      I5 => ap_CS_fsm_pp0_stage7,
      O => \b_address1[5]_INST_0_i_1_n_0\
    );
\b_address1[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00EE00AA00FA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage5,
      I1 => zext_ln16_47_reg_1404(4),
      I2 => \b_address1[6]_INST_0_i_1_n_0\,
      I3 => \a_address0[0]_INST_0_i_1_n_0\,
      I4 => ap_CS_fsm_pp0_stage4,
      I5 => ap_CS_fsm_pp0_stage3,
      O => b_address1(6)
    );
\b_address1[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => bit_sel_reg_1331,
      I2 => ap_CS_fsm_pp0_stage2,
      O => \b_address1[6]_INST_0_i_1_n_0\
    );
\b_address1[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000008F"
    )
        port map (
      I0 => bit_sel_reg_1331,
      I1 => \b_address1[7]_INST_0_i_1_n_0\,
      I2 => flow_control_loop_pipe_U_n_11,
      I3 => ap_CS_fsm_pp0_stage5,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => ap_CS_fsm_pp0_stage6,
      O => b_address1(7)
    );
\b_address1[7]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => ap_CS_fsm_pp0_stage4,
      O => \b_address1[7]_INST_0_i_1_n_0\
    );
b_ce0_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC0A0C0"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => b_ce0_INST_0_i_1_n_0,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_enable_reg_pp0_iter1,
      O => \^a_ce0\
    );
b_ce0_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \a_address0[0]_INST_0_i_1_n_0\,
      I1 => ap_CS_fsm_pp0_stage5,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => ap_CS_fsm_pp0_stage4,
      I4 => ap_CS_fsm_pp0_stage2,
      I5 => ap_CS_fsm_pp0_stage1,
      O => b_ce0_INST_0_i_1_n_0
    );
b_ce1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ap_start,
      I1 => b_ce0_INST_0_i_1_n_0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      O => b_ce1
    );
\bit_sel_reg_1331_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => j3_fu_122(4),
      Q => bit_sel_reg_1331,
      R => flow_control_loop_pipe_U_n_12
    );
\empty_reg_1341[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2_fu_118_reg(0),
      I1 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      O => i_fu_512_p3(0)
    );
\empty_reg_1341[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i2_fu_118_reg(0),
      I1 => \icmp_ln124_reg_413_reg_n_0_[0]\,
      I2 => i2_fu_118_reg(1),
      O => i_fu_512_p3(1)
    );
\empty_reg_1341_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => i_fu_512_p3(0),
      Q => data1(4),
      R => '0'
    );
\empty_reg_1341_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => i_fu_512_p3(1),
      Q => data1(5),
      R => '0'
    );
\empty_reg_1341_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => i_fu_512_p3(2),
      Q => data1(6),
      R => '0'
    );
\empty_reg_1341_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => i_fu_512_p3(3),
      Q => data1(7),
      R => '0'
    );
flow_control_loop_pipe_U: entity work.bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe
     port map (
      Q(7) => ap_CS_fsm_pp0_stage7,
      Q(6) => ap_CS_fsm_pp0_stage6,
      Q(5) => ap_CS_fsm_pp0_stage5,
      Q(4) => ap_CS_fsm_pp0_stage4,
      Q(3) => ap_CS_fsm_pp0_stage3,
      Q(2) => ap_CS_fsm_pp0_stage2,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => ap_CS_fsm_pp0_stage0,
      SR(0) => i2_fu_118,
      \ap_CS_fsm_reg[0]\ => flow_control_loop_pipe_U_n_12,
      \ap_CS_fsm_reg[3]\ => flow_control_loop_pipe_U_n_9,
      \ap_CS_fsm_reg[4]\ => flow_control_loop_pipe_U_n_10,
      \ap_CS_fsm_reg[4]_0\ => flow_control_loop_pipe_U_n_11,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_init_reg_0(7 downto 0) => indvar_flatten1_fu_114_reg(7 downto 0),
      ap_ready_int => ap_ready_int,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address1(4 downto 0) => b_address1(4 downto 0),
      \b_address1[4]\(4 downto 0) => zext_ln16_49_reg_1474(4 downto 0),
      \b_address1[4]_0\(4 downto 0) => j3_fu_122(4 downto 0),
      bit_sel_reg_1331 => bit_sel_reg_1331,
      icmp_ln10_reg_1635 => icmp_ln10_reg_1635,
      \icmp_ln124_reg_413_reg[0]\ => \icmp_ln124_reg_413_reg_n_0_[0]\,
      icmp_ln12_reg_1630 => icmp_ln12_reg_1630,
      \icmp_ln12_reg_1630_reg[0]\ => flow_control_loop_pipe_U_n_0,
      \indvar_flatten1_fu_114_reg[4]\ => flow_control_loop_pipe_U_n_1,
      trunc_ln16_reg_1336(3 downto 0) => trunc_ln16_reg_1336(3 downto 0),
      zext_ln16_47_reg_1404(4 downto 0) => zext_ln16_47_reg_1404(4 downto 0)
    );
\i2_fu_118[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_start,
      I3 => ap_CS_fsm_pp0_stage1,
      O => \i2_fu_118[3]_i_1_n_0\
    );
\i2_fu_118_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \i2_fu_118[3]_i_1_n_0\,
      D => i_fu_512_p3(0),
      Q => i2_fu_118_reg(0),
      R => i2_fu_118
    );
\i2_fu_118_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \i2_fu_118[3]_i_1_n_0\,
      D => i_fu_512_p3(1),
      Q => i2_fu_118_reg(1),
      R => i2_fu_118
    );
\i2_fu_118_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \i2_fu_118[3]_i_1_n_0\,
      D => i_fu_512_p3(2),
      Q => i2_fu_118_reg(2),
      R => i2_fu_118
    );
\i2_fu_118_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \i2_fu_118[3]_i_1_n_0\,
      D => i_fu_512_p3(3),
      Q => i2_fu_118_reg(3),
      R => i2_fu_118
    );
\icmp_ln10_reg_1635[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(6),
      I1 => flow_control_loop_pipe_U_n_1,
      I2 => indvar_flatten1_fu_114_reg(7),
      O => icmp_ln10_fu_920_p2
    );
\icmp_ln10_reg_1635_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => icmp_ln10_reg_1635,
      Q => icmp_ln10_reg_1635_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln10_reg_1635_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage7,
      D => icmp_ln10_fu_920_p2,
      Q => icmp_ln10_reg_1635,
      R => '0'
    );
\icmp_ln124_reg_413_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_0,
      Q => \icmp_ln124_reg_413_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln12_reg_1630[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFA8080000"
    )
        port map (
      I0 => icmp_ln12_fu_914_p2,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_start,
      I4 => ap_CS_fsm_pp0_stage7,
      I5 => icmp_ln12_reg_1630,
      O => \icmp_ln12_reg_1630[0]_i_1_n_0\
    );
\icmp_ln12_reg_1630[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => trunc_ln16_reg_1336(0),
      I1 => trunc_ln16_reg_1336(2),
      I2 => trunc_ln16_reg_1336(3),
      I3 => trunc_ln16_reg_1336(1),
      I4 => bit_sel_reg_1331,
      O => icmp_ln12_fu_914_p2
    );
\icmp_ln12_reg_1630_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln12_reg_1630[0]_i_1_n_0\,
      Q => icmp_ln12_reg_1630,
      R => '0'
    );
\indvar_flatten1_fu_114[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(0),
      O => add_ln10_1_fu_908_p2(0)
    );
\indvar_flatten1_fu_114[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(0),
      I1 => indvar_flatten1_fu_114_reg(1),
      O => add_ln10_1_fu_908_p2(1)
    );
\indvar_flatten1_fu_114[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(1),
      I1 => indvar_flatten1_fu_114_reg(0),
      I2 => indvar_flatten1_fu_114_reg(2),
      O => add_ln10_1_fu_908_p2(2)
    );
\indvar_flatten1_fu_114[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(2),
      I1 => indvar_flatten1_fu_114_reg(0),
      I2 => indvar_flatten1_fu_114_reg(1),
      I3 => indvar_flatten1_fu_114_reg(3),
      O => add_ln10_1_fu_908_p2(3)
    );
\indvar_flatten1_fu_114[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(3),
      I1 => indvar_flatten1_fu_114_reg(1),
      I2 => indvar_flatten1_fu_114_reg(0),
      I3 => indvar_flatten1_fu_114_reg(2),
      I4 => indvar_flatten1_fu_114_reg(4),
      O => add_ln10_1_fu_908_p2(4)
    );
\indvar_flatten1_fu_114[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(4),
      I1 => indvar_flatten1_fu_114_reg(2),
      I2 => indvar_flatten1_fu_114_reg(0),
      I3 => indvar_flatten1_fu_114_reg(1),
      I4 => indvar_flatten1_fu_114_reg(3),
      I5 => indvar_flatten1_fu_114_reg(5),
      O => add_ln10_1_fu_908_p2(5)
    );
\indvar_flatten1_fu_114[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => flow_control_loop_pipe_U_n_1,
      I1 => indvar_flatten1_fu_114_reg(6),
      O => add_ln10_1_fu_908_p2(6)
    );
\indvar_flatten1_fu_114[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => indvar_flatten1_fu_114_reg(6),
      I1 => flow_control_loop_pipe_U_n_1,
      I2 => indvar_flatten1_fu_114_reg(7),
      O => add_ln10_1_fu_908_p2(7)
    );
\indvar_flatten1_fu_114_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(0),
      Q => indvar_flatten1_fu_114_reg(0),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(1),
      Q => indvar_flatten1_fu_114_reg(1),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(2),
      Q => indvar_flatten1_fu_114_reg(2),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(3),
      Q => indvar_flatten1_fu_114_reg(3),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(4),
      Q => indvar_flatten1_fu_114_reg(4),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(5),
      Q => indvar_flatten1_fu_114_reg(5),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(6),
      Q => indvar_flatten1_fu_114_reg(6),
      R => i2_fu_118
    );
\indvar_flatten1_fu_114_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => add_ln10_1_fu_908_p2(7),
      Q => indvar_flatten1_fu_114_reg(7),
      R => i2_fu_118
    );
\j3_fu_122[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => trunc_ln16_reg_1336(0),
      O => j_fu_903_p2(0)
    );
\j3_fu_122[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => trunc_ln16_reg_1336(0),
      I1 => trunc_ln16_reg_1336(1),
      O => j_fu_903_p2(1)
    );
\j3_fu_122[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => trunc_ln16_reg_1336(1),
      I1 => trunc_ln16_reg_1336(0),
      I2 => trunc_ln16_reg_1336(2),
      O => j_fu_903_p2(2)
    );
\j3_fu_122[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => trunc_ln16_reg_1336(0),
      I1 => trunc_ln16_reg_1336(1),
      I2 => trunc_ln16_reg_1336(2),
      I3 => trunc_ln16_reg_1336(3),
      O => j_fu_903_p2(3)
    );
\j3_fu_122[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => trunc_ln16_reg_1336(2),
      I1 => trunc_ln16_reg_1336(3),
      I2 => trunc_ln16_reg_1336(0),
      I3 => trunc_ln16_reg_1336(1),
      I4 => bit_sel_reg_1331,
      O => j_fu_903_p2(4)
    );
\j3_fu_122_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => j_fu_903_p2(0),
      Q => j3_fu_122(0),
      R => i2_fu_118
    );
\j3_fu_122_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => j_fu_903_p2(1),
      Q => j3_fu_122(1),
      R => i2_fu_118
    );
\j3_fu_122_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => j_fu_903_p2(2),
      Q => j3_fu_122(2),
      R => i2_fu_118
    );
\j3_fu_122_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => j_fu_903_p2(3),
      Q => j3_fu_122(3),
      R => i2_fu_118
    );
\j3_fu_122_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => j_fu_903_p2(4),
      Q => j3_fu_122(4),
      R => i2_fu_118
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U10: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1
     port map (
      A(7) => mul_8ns_8ns_16_1_1_U4_n_26,
      A(6) => mul_8ns_8ns_16_1_1_U4_n_27,
      A(5) => mul_8ns_8ns_16_1_1_U4_n_28,
      A(4) => mul_8ns_8ns_16_1_1_U4_n_29,
      A(3) => mul_8ns_8ns_16_1_1_U4_n_30,
      A(2) => mul_8ns_8ns_16_1_1_U4_n_31,
      A(1) => mul_8ns_8ns_16_1_1_U4_n_32,
      A(0) => mul_8ns_8ns_16_1_1_U4_n_33,
      B(7 downto 0) => \p_1_in__0\(7 downto 0),
      D(16) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_0,
      D(15) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_1,
      D(14) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_2,
      D(13) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_3,
      D(12) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_4,
      D(11) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_5,
      D(10) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_6,
      D(9) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_7,
      D(8) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_8,
      D(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_9,
      D(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_10,
      D(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_11,
      D(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_12,
      D(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_13,
      D(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_14,
      D(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_15,
      D(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U10_n_16,
      P(15) => mul_8ns_8ns_16_1_1_U2_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U2_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U2_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U2_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U2_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U2_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U2_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U2_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U2_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U2_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U2_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U2_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U2_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U2_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U2_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U2_n_15,
      ap_clk => ap_clk,
      p_reg_reg => mul_8ns_8ns_16_1_1_U4_n_17,
      reg_432 => reg_432
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U11: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_0
     port map (
      P(15) => mul_8ns_8ns_16_1_1_U3_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U3_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U3_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U3_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U3_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U3_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U3_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U3_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U3_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U3_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U3_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U3_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U3_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U3_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U3_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U3_n_15,
      Q(3) => ap_CS_fsm_pp0_stage7,
      Q(2) => ap_CS_fsm_pp0_stage2,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      add_ln16_2_fu_1060_p2(17 downto 0) => add_ln16_2_fu_1060_p2(17 downto 0),
      \add_ln16_2_reg_1729_reg[17]\(16 downto 0) => add_ln16_1_reg_1679(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_4240 => reg_4240,
      reg_4280 => reg_4280
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U12: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_1
     port map (
      B(7) => mul_8ns_8ns_16_1_1_U5_n_17,
      B(6) => mul_8ns_8ns_16_1_1_U5_n_18,
      B(5) => mul_8ns_8ns_16_1_1_U5_n_19,
      B(4) => mul_8ns_8ns_16_1_1_U5_n_20,
      B(3) => mul_8ns_8ns_16_1_1_U5_n_21,
      B(2) => mul_8ns_8ns_16_1_1_U5_n_22,
      B(1) => mul_8ns_8ns_16_1_1_U5_n_23,
      B(0) => mul_8ns_8ns_16_1_1_U5_n_24,
      P(15) => mul_8ns_8ns_16_1_1_U4_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U4_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U4_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U4_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U4_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U4_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U4_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U4_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U4_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U4_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U4_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U4_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U4_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U4_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U4_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U4_n_15,
      Q(17 downto 0) => add_ln16_2_reg_1729(17 downto 0),
      add_ln16_6_fu_1108_p2(18 downto 0) => add_ln16_6_fu_1108_p2(18 downto 0),
      \add_ln16_6_reg_1749_reg[18]\(16 downto 0) => add_ln16_3_reg_1709(16 downto 0),
      ap_clk => ap_clk,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      p_reg_reg => mul_8ns_8ns_16_1_1_U5_n_16,
      reg_4460 => reg_4460
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U13: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_2
     port map (
      D(16) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_0,
      D(15) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_1,
      D(14) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_2,
      D(13) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_3,
      D(12) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_4,
      D(11) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_5,
      D(10) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_6,
      D(9) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_7,
      D(8) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_8,
      D(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_9,
      D(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_10,
      D(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_11,
      D(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_12,
      D(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_13,
      D(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_14,
      D(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_15,
      D(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U13_n_16,
      P(15) => mul_8ns_8ns_16_1_1_U5_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U5_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U5_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U5_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U5_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U5_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U5_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U5_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U5_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U5_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U5_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U5_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U5_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U5_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U5_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U5_n_15,
      Q(1) => ap_CS_fsm_pp0_stage3,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      reg_4460 => reg_4460
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U14: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_3
     port map (
      P(15) => mul_8ns_8ns_16_1_1_U6_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U6_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U6_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U6_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U6_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U6_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U6_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U6_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U6_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U6_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U6_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U6_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U6_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U6_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U6_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U6_n_15,
      Q(1) => ap_CS_fsm_pp0_stage4,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      add_ln16_9_fu_1159_p2(17 downto 0) => add_ln16_9_fu_1159_p2(17 downto 0),
      \add_ln16_9_reg_1779_reg[17]\(16 downto 0) => add_ln16_7_reg_1769(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0)
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U15: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_4
     port map (
      D(16) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_0,
      D(15) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_1,
      D(14) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_2,
      D(13) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_3,
      D(12) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_4,
      D(11) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_5,
      D(10) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_6,
      D(9) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_7,
      D(8) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_8,
      D(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_9,
      D(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_10,
      D(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_11,
      D(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_12,
      D(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_13,
      D(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_14,
      D(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_15,
      D(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U15_n_16,
      P(15) => mul_8ns_8ns_16_1_1_U7_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U7_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U7_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U7_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U7_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U7_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U7_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U7_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U7_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U7_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U7_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U7_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U7_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U7_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U7_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U7_n_15,
      a_load_11_reg_14690 => a_load_11_reg_14690,
      a_load_13_reg_15250 => a_load_13_reg_15250,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      b_q0(7 downto 0) => b_q0(7 downto 0)
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U16: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_5
     port map (
      P(15) => mul_8ns_8ns_16_1_1_U8_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U8_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U8_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U8_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U8_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U8_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U8_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U8_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U8_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U8_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U8_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U8_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U8_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U8_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U8_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U8_n_15,
      Q(2) => ap_CS_fsm_pp0_stage5,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_load_13_reg_15250 => a_load_13_reg_15250,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      add_ln16_13_fu_1200_p2(18 downto 0) => add_ln16_13_fu_1200_p2(18 downto 0),
      \add_ln16_13_reg_1794_reg[18]\(17 downto 0) => add_ln16_9_reg_1779(17 downto 0),
      \add_ln16_13_reg_1794_reg[18]_0\(16 downto 0) => add_ln16_10_reg_1789(16 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      reg_4560 => reg_4560
    );
mac_muladd_8ns_8ns_16ns_17_4_1_U9: entity work.bd_0_hls_inst_0_matrix_mult_mac_muladd_8ns_8ns_16ns_17_4_1_6
     port map (
      B(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18,
      B(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19,
      B(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20,
      B(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21,
      B(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22,
      B(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23,
      B(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24,
      B(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25,
      D(16) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_0,
      D(15) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_1,
      D(14) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_2,
      D(13) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_3,
      D(12) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_4,
      D(11) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_5,
      D(10) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_6,
      D(9) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_7,
      D(8) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_8,
      D(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_9,
      D(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_10,
      D(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_11,
      D(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_12,
      D(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_13,
      D(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_14,
      D(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_15,
      D(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_16,
      P(15) => mul_8ns_8ns_16_1_1_U1_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U1_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U1_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U1_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U1_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U1_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U1_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U1_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U1_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U1_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U1_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U1_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U1_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U1_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U1_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U1_n_15,
      Q(3) => ap_CS_fsm_pp0_stage6,
      Q(2) => ap_CS_fsm_pp0_stage5,
      Q(1) => ap_CS_fsm_pp0_stage2,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_432 => reg_432,
      reg_4370 => reg_4370
    );
mul_8ns_8ns_16_1_1_U1: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1
     port map (
      B(7 downto 0) => \p_1_in__0\(7 downto 0),
      P(15) => mul_8ns_8ns_16_1_1_U1_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U1_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U1_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U1_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U1_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U1_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U1_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U1_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U1_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U1_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U1_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U1_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U1_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U1_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U1_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U1_n_15,
      ap_clk => ap_clk,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_4370 => reg_4370,
      tmp_product_0 => mul_8ns_8ns_16_1_1_U4_n_17
    );
mul_8ns_8ns_16_1_1_U2: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_7
     port map (
      P(15) => mul_8ns_8ns_16_1_1_U2_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U2_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U2_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U2_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U2_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U2_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U2_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U2_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U2_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U2_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U2_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U2_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U2_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U2_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U2_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U2_n_15,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      reg_4280 => reg_4280,
      reg_4560 => reg_4560
    );
mul_8ns_8ns_16_1_1_U3: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_8
     port map (
      B(7) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_18,
      B(6) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_19,
      B(5) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_20,
      B(4) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_21,
      B(3) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_22,
      B(2) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_23,
      B(1) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_24,
      B(0) => mac_muladd_8ns_8ns_16ns_17_4_1_U9_n_25,
      P(15) => mul_8ns_8ns_16_1_1_U3_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U3_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U3_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U3_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U3_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U3_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U3_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U3_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U3_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U3_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U3_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U3_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U3_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U3_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U3_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U3_n_15,
      ap_clk => ap_clk,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_4240 => reg_4240,
      reg_432 => reg_432
    );
mul_8ns_8ns_16_1_1_U4: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_9
     port map (
      A(7) => mul_8ns_8ns_16_1_1_U4_n_26,
      A(6) => mul_8ns_8ns_16_1_1_U4_n_27,
      A(5) => mul_8ns_8ns_16_1_1_U4_n_28,
      A(4) => mul_8ns_8ns_16_1_1_U4_n_29,
      A(3) => mul_8ns_8ns_16_1_1_U4_n_30,
      A(2) => mul_8ns_8ns_16_1_1_U4_n_31,
      A(1) => mul_8ns_8ns_16_1_1_U4_n_32,
      A(0) => mul_8ns_8ns_16_1_1_U4_n_33,
      B(7 downto 0) => \p_1_in__0\(7 downto 0),
      P(15) => mul_8ns_8ns_16_1_1_U4_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U4_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U4_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U4_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U4_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U4_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U4_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U4_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U4_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U4_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U4_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U4_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U4_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U4_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U4_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U4_n_15,
      Q(4) => ap_CS_fsm_pp0_stage7,
      Q(3) => ap_CS_fsm_pp0_stage6,
      Q(2) => ap_CS_fsm_pp0_stage3,
      Q(1) => ap_CS_fsm_pp0_stage2,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      \ap_CS_fsm_reg[3]\ => mul_8ns_8ns_16_1_1_U4_n_17,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      b_q1(7 downto 0) => b_q1(7 downto 0),
      reg_432 => reg_432
    );
mul_8ns_8ns_16_1_1_U5: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_10
     port map (
      B(7) => mul_8ns_8ns_16_1_1_U5_n_17,
      B(6) => mul_8ns_8ns_16_1_1_U5_n_18,
      B(5) => mul_8ns_8ns_16_1_1_U5_n_19,
      B(4) => mul_8ns_8ns_16_1_1_U5_n_20,
      B(3) => mul_8ns_8ns_16_1_1_U5_n_21,
      B(2) => mul_8ns_8ns_16_1_1_U5_n_22,
      B(1) => mul_8ns_8ns_16_1_1_U5_n_23,
      B(0) => mul_8ns_8ns_16_1_1_U5_n_24,
      P(15) => mul_8ns_8ns_16_1_1_U5_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U5_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U5_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U5_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U5_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U5_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U5_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U5_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U5_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U5_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U5_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U5_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U5_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U5_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U5_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U5_n_15,
      Q(2) => ap_CS_fsm_pp0_stage6,
      Q(1) => ap_CS_fsm_pp0_stage3,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      \ap_CS_fsm_reg[3]\ => mul_8ns_8ns_16_1_1_U5_n_16,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      b_q0(7 downto 0) => b_q0(7 downto 0)
    );
mul_8ns_8ns_16_1_1_U6: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_11
     port map (
      E(0) => ap_ready_int,
      P(15) => mul_8ns_8ns_16_1_1_U6_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U6_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U6_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U6_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U6_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U6_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U6_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U6_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U6_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U6_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U6_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U6_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U6_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U6_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U6_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U6_n_15,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      ap_clk => ap_clk,
      b_q1(7 downto 0) => b_q1(7 downto 0),
      tmp_product_0(0) => reg_4511
    );
mul_8ns_8ns_16_1_1_U7: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_12
     port map (
      E(0) => a_load_12_reg_16890,
      P(15) => mul_8ns_8ns_16_1_1_U7_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U7_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U7_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U7_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U7_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U7_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U7_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U7_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U7_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U7_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U7_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U7_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U7_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U7_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U7_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U7_n_15,
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_ready_int => ap_ready_int,
      b_q0(7 downto 0) => b_q0(7 downto 0)
    );
mul_8ns_8ns_16_1_1_U8: entity work.bd_0_hls_inst_0_matrix_mult_mul_8ns_8ns_16_1_1_13
     port map (
      E(0) => reg_4511,
      P(15) => mul_8ns_8ns_16_1_1_U8_n_0,
      P(14) => mul_8ns_8ns_16_1_1_U8_n_1,
      P(13) => mul_8ns_8ns_16_1_1_U8_n_2,
      P(12) => mul_8ns_8ns_16_1_1_U8_n_3,
      P(11) => mul_8ns_8ns_16_1_1_U8_n_4,
      P(10) => mul_8ns_8ns_16_1_1_U8_n_5,
      P(9) => mul_8ns_8ns_16_1_1_U8_n_6,
      P(8) => mul_8ns_8ns_16_1_1_U8_n_7,
      P(7) => mul_8ns_8ns_16_1_1_U8_n_8,
      P(6) => mul_8ns_8ns_16_1_1_U8_n_9,
      P(5) => mul_8ns_8ns_16_1_1_U8_n_10,
      P(4) => mul_8ns_8ns_16_1_1_U8_n_11,
      P(3) => mul_8ns_8ns_16_1_1_U8_n_12,
      P(2) => mul_8ns_8ns_16_1_1_U8_n_13,
      P(1) => mul_8ns_8ns_16_1_1_U8_n_14,
      P(0) => mul_8ns_8ns_16_1_1_U8_n_15,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => ap_CS_fsm_pp0_stage0,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg(0) => a_load_12_reg_16890,
      b_q0(7 downto 0) => b_q0(7 downto 0)
    );
\prod_d0[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prod_d0[0]_INST_0_n_0\,
      CO(2) => \prod_d0[0]_INST_0_n_1\,
      CO(1) => \prod_d0[0]_INST_0_n_2\,
      CO(0) => \prod_d0[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln16_13_reg_1794(3 downto 0),
      O(3 downto 0) => \^prod_d0\(3 downto 0),
      S(3) => \prod_d0[0]_INST_0_i_1_n_0\,
      S(2) => \prod_d0[0]_INST_0_i_2_n_0\,
      S(1) => \prod_d0[0]_INST_0_i_3_n_0\,
      S(0) => \prod_d0[0]_INST_0_i_4_n_0\
    );
\prod_d0[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(3),
      I1 => add_ln16_6_reg_1749(3),
      O => \prod_d0[0]_INST_0_i_1_n_0\
    );
\prod_d0[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(2),
      I1 => add_ln16_6_reg_1749(2),
      O => \prod_d0[0]_INST_0_i_2_n_0\
    );
\prod_d0[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(1),
      I1 => add_ln16_6_reg_1749(1),
      O => \prod_d0[0]_INST_0_i_3_n_0\
    );
\prod_d0[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(0),
      I1 => add_ln16_6_reg_1749(0),
      O => \prod_d0[0]_INST_0_i_4_n_0\
    );
\prod_d0[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_d0[8]_INST_0_n_0\,
      CO(3) => \prod_d0[12]_INST_0_n_0\,
      CO(2) => \prod_d0[12]_INST_0_n_1\,
      CO(1) => \prod_d0[12]_INST_0_n_2\,
      CO(0) => \prod_d0[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln16_13_reg_1794(15 downto 12),
      O(3 downto 0) => \^prod_d0\(15 downto 12),
      S(3) => \prod_d0[12]_INST_0_i_1_n_0\,
      S(2) => \prod_d0[12]_INST_0_i_2_n_0\,
      S(1) => \prod_d0[12]_INST_0_i_3_n_0\,
      S(0) => \prod_d0[12]_INST_0_i_4_n_0\
    );
\prod_d0[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(15),
      I1 => add_ln16_6_reg_1749(15),
      O => \prod_d0[12]_INST_0_i_1_n_0\
    );
\prod_d0[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(14),
      I1 => add_ln16_6_reg_1749(14),
      O => \prod_d0[12]_INST_0_i_2_n_0\
    );
\prod_d0[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(13),
      I1 => add_ln16_6_reg_1749(13),
      O => \prod_d0[12]_INST_0_i_3_n_0\
    );
\prod_d0[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(12),
      I1 => add_ln16_6_reg_1749(12),
      O => \prod_d0[12]_INST_0_i_4_n_0\
    );
\prod_d0[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_d0[12]_INST_0_n_0\,
      CO(3) => \^prod_d0\(19),
      CO(2) => \NLW_prod_d0[16]_INST_0_CO_UNCONNECTED\(2),
      CO(1) => \prod_d0[16]_INST_0_n_2\,
      CO(0) => \prod_d0[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => add_ln16_13_reg_1794(18 downto 16),
      O(3) => \NLW_prod_d0[16]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => \^prod_d0\(18 downto 16),
      S(3) => '1',
      S(2) => \prod_d0[16]_INST_0_i_1_n_0\,
      S(1) => \prod_d0[16]_INST_0_i_2_n_0\,
      S(0) => \prod_d0[16]_INST_0_i_3_n_0\
    );
\prod_d0[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(18),
      I1 => add_ln16_6_reg_1749(18),
      O => \prod_d0[16]_INST_0_i_1_n_0\
    );
\prod_d0[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(17),
      I1 => add_ln16_6_reg_1749(17),
      O => \prod_d0[16]_INST_0_i_2_n_0\
    );
\prod_d0[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(16),
      I1 => add_ln16_6_reg_1749(16),
      O => \prod_d0[16]_INST_0_i_3_n_0\
    );
\prod_d0[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_d0[0]_INST_0_n_0\,
      CO(3) => \prod_d0[4]_INST_0_n_0\,
      CO(2) => \prod_d0[4]_INST_0_n_1\,
      CO(1) => \prod_d0[4]_INST_0_n_2\,
      CO(0) => \prod_d0[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln16_13_reg_1794(7 downto 4),
      O(3 downto 0) => \^prod_d0\(7 downto 4),
      S(3) => \prod_d0[4]_INST_0_i_1_n_0\,
      S(2) => \prod_d0[4]_INST_0_i_2_n_0\,
      S(1) => \prod_d0[4]_INST_0_i_3_n_0\,
      S(0) => \prod_d0[4]_INST_0_i_4_n_0\
    );
\prod_d0[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(7),
      I1 => add_ln16_6_reg_1749(7),
      O => \prod_d0[4]_INST_0_i_1_n_0\
    );
\prod_d0[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(6),
      I1 => add_ln16_6_reg_1749(6),
      O => \prod_d0[4]_INST_0_i_2_n_0\
    );
\prod_d0[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(5),
      I1 => add_ln16_6_reg_1749(5),
      O => \prod_d0[4]_INST_0_i_3_n_0\
    );
\prod_d0[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(4),
      I1 => add_ln16_6_reg_1749(4),
      O => \prod_d0[4]_INST_0_i_4_n_0\
    );
\prod_d0[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prod_d0[4]_INST_0_n_0\,
      CO(3) => \prod_d0[8]_INST_0_n_0\,
      CO(2) => \prod_d0[8]_INST_0_n_1\,
      CO(1) => \prod_d0[8]_INST_0_n_2\,
      CO(0) => \prod_d0[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln16_13_reg_1794(11 downto 8),
      O(3 downto 0) => \^prod_d0\(11 downto 8),
      S(3) => \prod_d0[8]_INST_0_i_1_n_0\,
      S(2) => \prod_d0[8]_INST_0_i_2_n_0\,
      S(1) => \prod_d0[8]_INST_0_i_3_n_0\,
      S(0) => \prod_d0[8]_INST_0_i_4_n_0\
    );
\prod_d0[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(11),
      I1 => add_ln16_6_reg_1749(11),
      O => \prod_d0[8]_INST_0_i_1_n_0\
    );
\prod_d0[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(10),
      I1 => add_ln16_6_reg_1749(10),
      O => \prod_d0[8]_INST_0_i_2_n_0\
    );
\prod_d0[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(9),
      I1 => add_ln16_6_reg_1749(9),
      O => \prod_d0[8]_INST_0_i_3_n_0\
    );
\prod_d0[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln16_13_reg_1794(8),
      I1 => add_ln16_6_reg_1749(8),
      O => \prod_d0[8]_INST_0_i_4_n_0\
    );
prod_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_enable_reg_pp0_iter2,
      O => \^prod_ce0\
    );
\trunc_ln16_reg_1336_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => j3_fu_122(0),
      Q => trunc_ln16_reg_1336(0),
      R => flow_control_loop_pipe_U_n_12
    );
\trunc_ln16_reg_1336_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => j3_fu_122(1),
      Q => trunc_ln16_reg_1336(1),
      R => flow_control_loop_pipe_U_n_12
    );
\trunc_ln16_reg_1336_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => j3_fu_122(2),
      Q => trunc_ln16_reg_1336(2),
      R => flow_control_loop_pipe_U_n_12
    );
\trunc_ln16_reg_1336_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => j3_fu_122(3),
      Q => trunc_ln16_reg_1336(3),
      R => flow_control_loop_pipe_U_n_12
    );
\zext_ln16_47_reg_1404_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => trunc_ln16_reg_1336(0),
      Q => zext_ln16_47_reg_1404(0),
      R => '0'
    );
\zext_ln16_47_reg_1404_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => trunc_ln16_reg_1336(1),
      Q => zext_ln16_47_reg_1404(1),
      R => '0'
    );
\zext_ln16_47_reg_1404_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => trunc_ln16_reg_1336(2),
      Q => zext_ln16_47_reg_1404(2),
      R => '0'
    );
\zext_ln16_47_reg_1404_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => trunc_ln16_reg_1336(3),
      Q => zext_ln16_47_reg_1404(3),
      R => '0'
    );
\zext_ln16_47_reg_1404_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage2,
      D => bit_sel_reg_1331,
      Q => zext_ln16_47_reg_1404(4),
      R => '0'
    );
\zext_ln16_48_reg_1374_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => trunc_ln16_reg_1336(0),
      Q => zext_ln16_48_reg_1374_reg(0),
      R => '0'
    );
\zext_ln16_48_reg_1374_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => trunc_ln16_reg_1336(1),
      Q => zext_ln16_48_reg_1374_reg(1),
      R => '0'
    );
\zext_ln16_48_reg_1374_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => trunc_ln16_reg_1336(2),
      Q => zext_ln16_48_reg_1374_reg(2),
      R => '0'
    );
\zext_ln16_48_reg_1374_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => trunc_ln16_reg_1336(3),
      Q => zext_ln16_48_reg_1374_reg(3),
      R => '0'
    );
\zext_ln16_48_reg_1374_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => bit_sel_reg_1331,
      Q => zext_ln16_48_reg_1374_reg(4),
      R => '0'
    );
\zext_ln16_49_reg_1474_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage4,
      D => trunc_ln16_reg_1336(0),
      Q => zext_ln16_49_reg_1474(0),
      R => '0'
    );
\zext_ln16_49_reg_1474_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage4,
      D => trunc_ln16_reg_1336(1),
      Q => zext_ln16_49_reg_1474(1),
      R => '0'
    );
\zext_ln16_49_reg_1474_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage4,
      D => trunc_ln16_reg_1336(2),
      Q => zext_ln16_49_reg_1474(2),
      R => '0'
    );
\zext_ln16_49_reg_1474_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage4,
      D => trunc_ln16_reg_1336(3),
      Q => zext_ln16_49_reg_1474(3),
      R => '0'
    );
\zext_ln16_49_reg_1474_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage4,
      D => bit_sel_reg_1331,
      Q => zext_ln16_49_reg_1474(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    a_ce0 : out STD_LOGIC;
    a_ce1 : out STD_LOGIC;
    b_ce0 : out STD_LOGIC;
    b_ce1 : out STD_LOGIC;
    prod_ce0 : out STD_LOGIC;
    prod_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prod_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prod_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,matrix_mult,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "matrix_mult,Vivado 2024.1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^a_address0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^a_address1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^prod_d0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal NLW_inst_a_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_a_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_prod_d0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 20 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "8'b00000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of inst : label is "8'b00000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of inst : label is "8'b00000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of inst : label is "8'b00001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of inst : label is "8'b00010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of inst : label is "8'b00100000";
  attribute ap_ST_fsm_pp0_stage6 : string;
  attribute ap_ST_fsm_pp0_stage6 of inst : label is "8'b01000000";
  attribute ap_ST_fsm_pp0_stage7 : string;
  attribute ap_ST_fsm_pp0_stage7 of inst : label is "8'b10000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a_address0 : signal is "xilinx.com:signal:data:1.0 a_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_address0 : signal is "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_address1 : signal is "xilinx.com:signal:data:1.0 a_address1 DATA";
  attribute X_INTERFACE_PARAMETER of a_address1 : signal is "XIL_INTERFACENAME a_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q0 : signal is "xilinx.com:signal:data:1.0 a_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_q0 : signal is "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q1 : signal is "xilinx.com:signal:data:1.0 a_q1 DATA";
  attribute X_INTERFACE_PARAMETER of a_q1 : signal is "XIL_INTERFACENAME a_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address0 : signal is "xilinx.com:signal:data:1.0 b_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_address0 : signal is "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address1 : signal is "xilinx.com:signal:data:1.0 b_address1 DATA";
  attribute X_INTERFACE_PARAMETER of b_address1 : signal is "XIL_INTERFACENAME b_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q0 : signal is "xilinx.com:signal:data:1.0 b_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_q0 : signal is "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q1 : signal is "xilinx.com:signal:data:1.0 b_q1 DATA";
  attribute X_INTERFACE_PARAMETER of b_q1 : signal is "XIL_INTERFACENAME b_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of prod_address0 : signal is "xilinx.com:signal:data:1.0 prod_address0 DATA";
  attribute X_INTERFACE_PARAMETER of prod_address0 : signal is "XIL_INTERFACENAME prod_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of prod_d0 : signal is "xilinx.com:signal:data:1.0 prod_d0 DATA";
  attribute X_INTERFACE_PARAMETER of prod_d0 : signal is "XIL_INTERFACENAME prod_d0, LAYERED_METADATA undef";
begin
  a_address0(7 downto 2) <= \^a_address0\(7 downto 2);
  a_address0(1) <= \<const1>\;
  a_address0(0) <= \^a_address0\(0);
  a_address1(7 downto 2) <= \^a_address1\(7 downto 2);
  a_address1(1) <= \<const0>\;
  a_address1(0) <= \^a_address1\(0);
  prod_d0(31) <= \<const0>\;
  prod_d0(30) <= \<const0>\;
  prod_d0(29) <= \<const0>\;
  prod_d0(28) <= \<const0>\;
  prod_d0(27) <= \<const0>\;
  prod_d0(26) <= \<const0>\;
  prod_d0(25) <= \<const0>\;
  prod_d0(24) <= \<const0>\;
  prod_d0(23) <= \<const0>\;
  prod_d0(22) <= \<const0>\;
  prod_d0(21) <= \<const0>\;
  prod_d0(20) <= \<const0>\;
  prod_d0(19 downto 0) <= \^prod_d0\(19 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.bd_0_hls_inst_0_matrix_mult
     port map (
      a_address0(7 downto 2) => \^a_address0\(7 downto 2),
      a_address0(1) => NLW_inst_a_address0_UNCONNECTED(1),
      a_address0(0) => \^a_address0\(0),
      a_address1(7 downto 2) => \^a_address1\(7 downto 2),
      a_address1(1) => NLW_inst_a_address1_UNCONNECTED(1),
      a_address1(0) => \^a_address1\(0),
      a_ce0 => a_ce0,
      a_ce1 => a_ce1,
      a_q0(7 downto 0) => a_q0(7 downto 0),
      a_q1(7 downto 0) => a_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address0(7 downto 0) => b_address0(7 downto 0),
      b_address1(7 downto 0) => b_address1(7 downto 0),
      b_ce0 => b_ce0,
      b_ce1 => b_ce1,
      b_q0(7 downto 0) => b_q0(7 downto 0),
      b_q1(7 downto 0) => b_q1(7 downto 0),
      prod_address0(7 downto 0) => prod_address0(7 downto 0),
      prod_ce0 => prod_ce0,
      prod_d0(31 downto 20) => NLW_inst_prod_d0_UNCONNECTED(31 downto 20),
      prod_d0(19 downto 0) => \^prod_d0\(19 downto 0),
      prod_we0 => prod_we0
    );
end STRUCTURE;
