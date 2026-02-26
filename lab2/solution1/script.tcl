############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project lab2
set_top matrix_mult
add_files lab2/matrix_mult.cpp
add_files lab2/matrix_mult.h
add_files -tb lab2/matrix_mult_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level all -wave_debug
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 10
source "./lab2/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -wave_debug -trace_level all
export_design -flow impl -rtl verilog -format ip_catalog
