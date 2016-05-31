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
    id 0 \
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
    id 1 \
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
    id 2 \
    name uart_to_coordinates_current_input_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_uart_to_coordinates_current_input_V_read \
    op interface \
    ports { uart_to_coordinates_current_input_V_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
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
    id 4 \
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
    id 5 \
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


