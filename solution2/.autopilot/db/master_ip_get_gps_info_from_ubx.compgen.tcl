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
    id 6 \
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
    id 7 \
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
    id 8 \
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
    id 9 \
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
    id 10 \
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
    id 11 \
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
    id 12 \
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
    id 13 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
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
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


