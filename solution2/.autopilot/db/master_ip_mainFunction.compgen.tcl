# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name uart_to_coordinates_count_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_count_V \
    op interface \
    ports { uart_to_coordinates_count_V_i { I 16 vector } uart_to_coordinates_count_V_o { O 16 vector } uart_to_coordinates_count_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name uart_to_coordinates_previous_input_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_previous_input_V \
    op interface \
    ports { uart_to_coordinates_previous_input_V_i { I 1 vector } uart_to_coordinates_previous_input_V_o { O 1 vector } uart_to_coordinates_previous_input_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name uart_to_coordinates_uart_state_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_uart_state_V \
    op interface \
    ports { uart_to_coordinates_uart_state_V_i { I 4 vector } uart_to_coordinates_uart_state_V_o { O 4 vector } uart_to_coordinates_uart_state_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name uart_to_coordinates_next_out_byte_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_next_out_byte_V \
    op interface \
    ports { uart_to_coordinates_next_out_byte_V_i { I 8 vector } uart_to_coordinates_next_out_byte_V_o { O 8 vector } uart_to_coordinates_next_out_byte_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name uart_to_coordinates_current_out_byte_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_current_out_byte_V_read \
    op interface \
    ports { uart_to_coordinates_current_out_byte_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name uart_to_coordinates_gnss_state_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_gnss_state_V_read \
    op interface \
    ports { uart_to_coordinates_gnss_state_V_read { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name uart_to_coordinates_ck_a_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_ck_a_V_read \
    op interface \
    ports { uart_to_coordinates_ck_a_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name uart_to_coordinates_ck_b_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_ck_b_V_read \
    op interface \
    ports { uart_to_coordinates_ck_b_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name uart_to_coordinates_tempCoordinates_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_tempCoordinates_0 \
    op interface \
    ports { uart_to_coordinates_tempCoordinates_0_i { I 32 vector } uart_to_coordinates_tempCoordinates_0_o { O 32 vector } uart_to_coordinates_tempCoordinates_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name uart_to_coordinates_tempCoordinates_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_tempCoordinates_1 \
    op interface \
    ports { uart_to_coordinates_tempCoordinates_1_i { I 32 vector } uart_to_coordinates_tempCoordinates_1_o { O 32 vector } uart_to_coordinates_tempCoordinates_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name uart_to_coordinates_tempCoordinates_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_tempCoordinates_2 \
    op interface \
    ports { uart_to_coordinates_tempCoordinates_2_i { I 32 vector } uart_to_coordinates_tempCoordinates_2_o { O 32 vector } uart_to_coordinates_tempCoordinates_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name input_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_V_read \
    op interface \
    ports { input_V_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


