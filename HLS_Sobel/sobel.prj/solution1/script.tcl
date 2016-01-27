############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project sobel.prj
set_top sobel
add_files sobel.h
add_files sobel.cpp
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 8 -name default
source "./sobel.prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -evaluate vhdl -format ip_catalog
