############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project master_ip
set_top master_ip
add_files master_ip/cppm_to_horizontal_movement.cpp
add_files master_ip/cppm_to_horizontal_movement.h
add_files master_ip/master_ip.cpp
add_files master_ip/master_ip.h
add_files master_ip/master_ip_1.cpp
add_files master_ip/master_ip_2.cpp
add_files master_ip/master_ip_3.cpp
add_files master_ip/uart_to_coordinates.cpp
add_files master_ip/uart_to_coordinates.h
add_files -tb master_ip/master_ip_test.cpp
add_files -tb master_ip/master_ip_test_1.cpp
add_files -tb master_ip/master_ip_test_2.cpp
add_files -tb master_ip/master_ip_test_3.cpp
add_files -tb master_ip/testData_CPPMMovementFalse_DataValidTrue.txt
add_files -tb master_ip/testData_CPPMMovementTrue_DataValidTrue.txt
add_files -tb master_ip/testData_GNSSMovementFalse_DataValidTrue.txt
add_files -tb master_ip/testData_GNSSMovementTrue_DataValidFalse.txt
add_files -tb master_ip/testData_GNSSMovementTrue_DataValidTrue.txt
add_files -tb master_ip/testInputData.txt
add_files -tb master_ip/testResultData.txt
add_files -tb master_ip/testResultData1.txt
add_files -tb master_ip/testResultData2.txt
add_files -tb master_ip/testResultData3.txt
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 20 -name default
source "./master_ip/solution2/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
