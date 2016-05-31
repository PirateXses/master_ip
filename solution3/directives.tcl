############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_interface -mode ap_ctrl_none "master_ip"
set_directive_array_partition -type complete -dim 1 "differ_in_3D" coordinates2
set_directive_inline "uart_to_coordinates::uart_to_byte"
set_directive_inline "uart_to_coordinates::databit"
set_directive_inline "uart_to_coordinates::mainFunction"
set_directive_inline "uart_to_coordinates::stopbit"
set_directive_inline "uart_to_coordinates::get_gps_info_from_ubx"
set_directive_inline "uart_to_coordinates::calculate_ubx_checksum"
set_directive_inline "differ_in_3D"
set_directive_pipeline -II 1 "uart_to_coordinates::mainFunction"
set_directive_pipeline -II 1 "master_ip"
set_directive_array_partition -type complete -dim 1 "differ_in_3D" coordinates1
set_directive_inline "cppm_to_horizontal_movement"
set_directive_inline "cppm_to_horizontal_movement::main_function"
set_directive_unroll "cppm_to_horizontal_movement/cppm_to_horizontal_movement_label0"
set_directive_array_partition -type complete -dim 1 "master_ip" velocity1
set_directive_array_partition -type complete -dim 1 "master_ip" velocity2
set_directive_interface -mode ap_none "master_ip" in_gnss1
set_directive_interface -mode ap_none "master_ip" in_gnss2
set_directive_interface -mode ap_none "master_ip" in_gcs_rx
set_directive_interface -mode ap_none "master_ip" out_alert
set_directive_interface -mode ap_none "master_ip" out_gnss
set_directive_interface -mode ap_none "master_ip" out_gcs_rx
set_directive_interface -mode ap_none "master_ip" in_gnss3
