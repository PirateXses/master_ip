// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_ip_mainFunction (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        uart_to_coordinates_count_V_i,
        uart_to_coordinates_count_V_o,
        uart_to_coordinates_count_V_o_ap_vld,
        uart_to_coordinates_previous_input_V_i,
        uart_to_coordinates_previous_input_V_o,
        uart_to_coordinates_previous_input_V_o_ap_vld,
        uart_to_coordinates_uart_state_V_i,
        uart_to_coordinates_uart_state_V_o,
        uart_to_coordinates_uart_state_V_o_ap_vld,
        uart_to_coordinates_next_out_byte_V_i,
        uart_to_coordinates_next_out_byte_V_o,
        uart_to_coordinates_next_out_byte_V_o_ap_vld,
        uart_to_coordinates_current_out_byte_V_read,
        uart_to_coordinates_gnss_state_V_read,
        uart_to_coordinates_ck_a_V_read,
        uart_to_coordinates_ck_b_V_read,
        uart_to_coordinates_tempCoordinates_0_i,
        uart_to_coordinates_tempCoordinates_0_o,
        uart_to_coordinates_tempCoordinates_0_o_ap_vld,
        uart_to_coordinates_tempCoordinates_1_i,
        uart_to_coordinates_tempCoordinates_1_o,
        uart_to_coordinates_tempCoordinates_1_o_ap_vld,
        uart_to_coordinates_tempCoordinates_2_i,
        uart_to_coordinates_tempCoordinates_2_o,
        uart_to_coordinates_tempCoordinates_2_o_ap_vld,
        input_V_read,
        p_read,
        p_read2,
        p_read5,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv6_39 = 6'b111001;
parameter    ap_const_lv6_3C = 6'b111100;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv6_3F = 6'b111111;
parameter    ap_const_lv6_3E = 6'b111110;
parameter    ap_const_lv6_3D = 6'b111101;
parameter    ap_const_lv6_3B = 6'b111011;
parameter    ap_const_lv6_3A = 6'b111010;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] uart_to_coordinates_count_V_i;
output  [15:0] uart_to_coordinates_count_V_o;
output   uart_to_coordinates_count_V_o_ap_vld;
input  [0:0] uart_to_coordinates_previous_input_V_i;
output  [0:0] uart_to_coordinates_previous_input_V_o;
output   uart_to_coordinates_previous_input_V_o_ap_vld;
input  [3:0] uart_to_coordinates_uart_state_V_i;
output  [3:0] uart_to_coordinates_uart_state_V_o;
output   uart_to_coordinates_uart_state_V_o_ap_vld;
input  [7:0] uart_to_coordinates_next_out_byte_V_i;
output  [7:0] uart_to_coordinates_next_out_byte_V_o;
output   uart_to_coordinates_next_out_byte_V_o_ap_vld;
input  [7:0] uart_to_coordinates_current_out_byte_V_read;
input  [5:0] uart_to_coordinates_gnss_state_V_read;
input  [7:0] uart_to_coordinates_ck_a_V_read;
input  [7:0] uart_to_coordinates_ck_b_V_read;
input  [31:0] uart_to_coordinates_tempCoordinates_0_i;
output  [31:0] uart_to_coordinates_tempCoordinates_0_o;
output   uart_to_coordinates_tempCoordinates_0_o_ap_vld;
input  [31:0] uart_to_coordinates_tempCoordinates_1_i;
output  [31:0] uart_to_coordinates_tempCoordinates_1_o;
output   uart_to_coordinates_tempCoordinates_1_o_ap_vld;
input  [31:0] uart_to_coordinates_tempCoordinates_2_i;
output  [31:0] uart_to_coordinates_tempCoordinates_2_o;
output   uart_to_coordinates_tempCoordinates_2_o_ap_vld;
input  [0:0] input_V_read;
input  [31:0] p_read;
input  [31:0] p_read2;
input  [31:0] p_read5;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [5:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] uart_to_coordinates_count_V_o;
reg[0:0] uart_to_coordinates_previous_input_V_o;
reg[3:0] uart_to_coordinates_uart_state_V_o;
reg[7:0] uart_to_coordinates_next_out_byte_V_o;
reg[31:0] uart_to_coordinates_tempCoordinates_0_o;
reg[31:0] uart_to_coordinates_tempCoordinates_1_o;
reg[31:0] uart_to_coordinates_tempCoordinates_2_o;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_19;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_fu_203_p1;
reg   [0:0] tmp_reg_453;
reg   [7:0] uart_to_coordinates_current_ou_reg_457;
wire   [7:0] uart_to_coordinates_ck_a_V_1_i_fu_348_p3;
reg   [7:0] uart_to_coordinates_ck_a_V_1_i_reg_462;
wire   [7:0] uart_to_coordinates_ck_b_V_1_i_fu_357_p3;
reg   [7:0] uart_to_coordinates_ck_b_V_1_i_reg_467;
reg   [5:0] call_ret2_reg_472;
reg   [31:0] coordinates_0_ret_reg_477;
reg   [31:0] coordinates_1_ret_reg_482;
reg   [31:0] coordinates_2_ret_reg_487;
wire   [7:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_current_out_byte_V_read;
wire   [5:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_gnss_state_V_read;
wire   [7:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_a_V_read;
wire   [7:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_b_V_read;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_i;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o;
wire    call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_i;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o;
wire    call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_i;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o;
wire    call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read1;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read4;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read5;
wire   [5:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_0;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_1;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_2;
wire   [31:0] call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_3;
wire   [15:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_i;
wire   [15:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o;
wire    call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o_ap_vld;
wire   [0:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_i;
wire   [0:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o;
wire    call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o_ap_vld;
wire   [0:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_input_V_read;
wire   [3:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_i;
wire   [3:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o;
wire    call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o_ap_vld;
wire   [7:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_i;
wire   [7:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o;
wire    call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o_ap_vld;
wire   [7:0] call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_out_byte_V_read;
wire   [0:0] call_ret6_master_ip_uart_to_byte_fu_187_ap_return_0;
wire   [7:0] call_ret6_master_ip_uart_to_byte_fu_187_ap_return_1;
wire   [31:0] ap_reg_phiprechg_coordinates_reg_112pp0_it0;
reg   [31:0] ap_reg_phiprechg_coordinates_reg_112pp0_it1;
reg   [31:0] coordinates_phi_fu_115_p4;
wire   [31:0] ap_reg_phiprechg_coordinates_1_reg_121pp0_it0;
reg   [31:0] ap_reg_phiprechg_coordinates_1_reg_121pp0_it1;
reg   [31:0] coordinates_1_phi_fu_124_p4;
wire   [31:0] ap_reg_phiprechg_coordinates_2_reg_130pp0_it0;
reg   [31:0] ap_reg_phiprechg_coordinates_2_reg_130pp0_it1;
reg   [31:0] coordinates_2_phi_fu_133_p4;
wire   [7:0] ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it0;
reg   [7:0] ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it1;
reg   [7:0] uart_to_coordinates_ck_a_V_phi_fu_142_p4;
wire   [7:0] ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it0;
reg   [7:0] ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it1;
reg   [7:0] uart_to_coordinates_ck_b_V_phi_fu_151_p4;
wire   [5:0] ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it0;
reg   [5:0] ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it1;
reg   [5:0] uart_to_coordinates_gnss_state_phi_fu_160_p4;
wire   [7:0] tmp_i_fu_212_p2;
wire   [0:0] tmp_86_i_fu_224_p2;
wire   [0:0] tmp_87_i_fu_230_p2;
wire   [0:0] or_cond4_i_fu_236_p2;
wire   [0:0] sel_tmp5_fu_288_p2;
wire   [0:0] sel_tmp6_fu_294_p2;
wire   [0:0] sel_tmp4_fu_282_p2;
wire   [0:0] sel_tmp3_fu_276_p2;
wire   [0:0] tmp7_fu_312_p2;
wire   [0:0] tmp6_fu_306_p2;
wire   [0:0] sel_tmp_fu_258_p2;
wire   [0:0] sel_tmp2_fu_270_p2;
wire   [0:0] sel_tmp1_fu_264_p2;
wire   [0:0] sel_tmp7_fu_300_p2;
wire   [0:0] tmp10_fu_330_p2;
wire   [0:0] tmp9_fu_324_p2;
wire   [0:0] tmp11_fu_336_p2;
wire   [0:0] tmp8_fu_318_p2;
wire   [0:0] sel_tmp8_fu_342_p2;
wire   [7:0] uart_to_coordinates_ck_a_V_rea_fu_242_p3;
wire   [7:0] uart_to_coordinates_ck_b_V_rea_fu_250_p3;
wire   [7:0] tmp_85_i_fu_218_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_42;


master_ip_get_gps_info_from_ubx call_ret5_master_ip_get_gps_info_from_ubx_fu_166(
    .uart_to_coordinates_current_out_byte_V_read( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_current_out_byte_V_read ),
    .uart_to_coordinates_gnss_state_V_read( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_gnss_state_V_read ),
    .uart_to_coordinates_ck_a_V_read( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_a_V_read ),
    .uart_to_coordinates_ck_b_V_read( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_b_V_read ),
    .uart_to_coordinates_tempCoordinates_0_i( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_i ),
    .uart_to_coordinates_tempCoordinates_0_o( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o ),
    .uart_to_coordinates_tempCoordinates_0_o_ap_vld( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld ),
    .uart_to_coordinates_tempCoordinates_1_i( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_i ),
    .uart_to_coordinates_tempCoordinates_1_o( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o ),
    .uart_to_coordinates_tempCoordinates_1_o_ap_vld( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld ),
    .uart_to_coordinates_tempCoordinates_2_i( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_i ),
    .uart_to_coordinates_tempCoordinates_2_o( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o ),
    .uart_to_coordinates_tempCoordinates_2_o_ap_vld( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld ),
    .p_read1( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read1 ),
    .p_read4( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read4 ),
    .p_read5( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read5 ),
    .ap_return_0( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_0 ),
    .ap_return_1( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_1 ),
    .ap_return_2( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_2 ),
    .ap_return_3( call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_3 )
);

master_ip_uart_to_byte call_ret6_master_ip_uart_to_byte_fu_187(
    .uart_to_coordinates_count_V_i( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_i ),
    .uart_to_coordinates_count_V_o( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o ),
    .uart_to_coordinates_count_V_o_ap_vld( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o_ap_vld ),
    .uart_to_coordinates_previous_input_V_i( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_i ),
    .uart_to_coordinates_previous_input_V_o( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o ),
    .uart_to_coordinates_previous_input_V_o_ap_vld( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o_ap_vld ),
    .uart_to_coordinates_current_input_V_read( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_input_V_read ),
    .uart_to_coordinates_uart_state_V_i( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_i ),
    .uart_to_coordinates_uart_state_V_o( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o ),
    .uart_to_coordinates_uart_state_V_o_ap_vld( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o_ap_vld ),
    .uart_to_coordinates_next_out_byte_V_i( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_i ),
    .uart_to_coordinates_next_out_byte_V_o( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o ),
    .uart_to_coordinates_next_out_byte_V_o_ap_vld( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o_ap_vld ),
    .uart_to_coordinates_current_out_byte_V_read( call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_out_byte_V_read ),
    .ap_return_0( call_ret6_master_ip_uart_to_byte_fu_187_ap_return_0 ),
    .ap_return_1( call_ret6_master_ip_uart_to_byte_fu_187_ap_return_1 )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) | ~(ap_const_logic_1 == ap_ce)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_coordinates_1_reg_121pp0_it1 <= p_read2;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_coordinates_1_reg_121pp0_it1 <= ap_reg_phiprechg_coordinates_1_reg_121pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_coordinates_2_reg_130pp0_it1 <= p_read5;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_coordinates_2_reg_130pp0_it1 <= ap_reg_phiprechg_coordinates_2_reg_130pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_coordinates_reg_112pp0_it1 <= p_read;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_coordinates_reg_112pp0_it1 <= ap_reg_phiprechg_coordinates_reg_112pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it1 <= uart_to_coordinates_ck_a_V_read;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it1 <= ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it1 <= uart_to_coordinates_ck_b_V_read;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it1 <= ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_42) begin
        if ((tmp_fu_203_p1 == ap_const_lv1_0)) begin
            ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it1 <= uart_to_coordinates_gnss_state_V_read;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it1 <= ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & ~(tmp_fu_203_p1 == ap_const_lv1_0))) begin
        call_ret2_reg_472 <= call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_0;
        coordinates_0_ret_reg_477 <= call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_1;
        coordinates_1_ret_reg_482 <= call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_2;
        coordinates_2_ret_reg_487 <= call_ret5_master_ip_get_gps_info_from_ubx_fu_166_ap_return_3;
        uart_to_coordinates_ck_a_V_1_i_reg_462 <= uart_to_coordinates_ck_a_V_1_i_fu_348_p3;
        uart_to_coordinates_ck_b_V_1_i_reg_467 <= uart_to_coordinates_ck_b_V_1_i_fu_357_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce))) begin
        tmp_reg_453 <= call_ret6_master_ip_uart_to_byte_fu_187_ap_return_0;
        uart_to_coordinates_current_ou_reg_457 <= call_ret6_master_ip_uart_to_byte_fu_187_ap_return_1;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_ce) begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_19) begin
    if (ap_sig_bdd_19) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_start or ap_reg_ppiten_pp0_it0) begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or coordinates_1_ret_reg_482 or ap_reg_phiprechg_coordinates_1_reg_121pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        coordinates_1_phi_fu_124_p4 = coordinates_1_ret_reg_482;
    end else begin
        coordinates_1_phi_fu_124_p4 = ap_reg_phiprechg_coordinates_1_reg_121pp0_it1;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or coordinates_2_ret_reg_487 or ap_reg_phiprechg_coordinates_2_reg_130pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        coordinates_2_phi_fu_133_p4 = coordinates_2_ret_reg_487;
    end else begin
        coordinates_2_phi_fu_133_p4 = ap_reg_phiprechg_coordinates_2_reg_130pp0_it1;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or coordinates_0_ret_reg_477 or ap_reg_phiprechg_coordinates_reg_112pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        coordinates_phi_fu_115_p4 = coordinates_0_ret_reg_477;
    end else begin
        coordinates_phi_fu_115_p4 = ap_reg_phiprechg_coordinates_reg_112pp0_it1;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or uart_to_coordinates_ck_a_V_1_i_reg_462 or ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        uart_to_coordinates_ck_a_V_phi_fu_142_p4 = uart_to_coordinates_ck_a_V_1_i_reg_462;
    end else begin
        uart_to_coordinates_ck_a_V_phi_fu_142_p4 = ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it1;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or uart_to_coordinates_ck_b_V_1_i_reg_467 or ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        uart_to_coordinates_ck_b_V_phi_fu_151_p4 = uart_to_coordinates_ck_b_V_1_i_reg_467;
    end else begin
        uart_to_coordinates_ck_b_V_phi_fu_151_p4 = ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it1;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_count_V_i or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & (ap_const_logic_1 == call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o_ap_vld))) begin
        uart_to_coordinates_count_V_o = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o;
    end else begin
        uart_to_coordinates_count_V_o = uart_to_coordinates_count_V_i;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_453 or call_ret2_reg_472 or ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(tmp_reg_453 == ap_const_lv1_0))) begin
        uart_to_coordinates_gnss_state_phi_fu_160_p4 = call_ret2_reg_472;
    end else begin
        uart_to_coordinates_gnss_state_phi_fu_160_p4 = ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it1;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_next_out_byte_V_i or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & (ap_const_logic_1 == call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o_ap_vld))) begin
        uart_to_coordinates_next_out_byte_V_o = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o;
    end else begin
        uart_to_coordinates_next_out_byte_V_o = uart_to_coordinates_next_out_byte_V_i;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_previous_input_V_i or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & (ap_const_logic_1 == call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o_ap_vld))) begin
        uart_to_coordinates_previous_input_V_o = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o;
    end else begin
        uart_to_coordinates_previous_input_V_o = uart_to_coordinates_previous_input_V_i;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_tempCoordinates_0_i or tmp_fu_203_p1 or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & ~(tmp_fu_203_p1 == ap_const_lv1_0) & (ap_const_logic_1 == call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld))) begin
        uart_to_coordinates_tempCoordinates_0_o = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o;
    end else begin
        uart_to_coordinates_tempCoordinates_0_o = uart_to_coordinates_tempCoordinates_0_i;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_tempCoordinates_1_i or tmp_fu_203_p1 or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & ~(tmp_fu_203_p1 == ap_const_lv1_0) & (ap_const_logic_1 == call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld))) begin
        uart_to_coordinates_tempCoordinates_1_o = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o;
    end else begin
        uart_to_coordinates_tempCoordinates_1_o = uart_to_coordinates_tempCoordinates_1_i;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_tempCoordinates_2_i or tmp_fu_203_p1 or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o or call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & ~(tmp_fu_203_p1 == ap_const_lv1_0) & (ap_const_logic_1 == call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld))) begin
        uart_to_coordinates_tempCoordinates_2_o = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o;
    end else begin
        uart_to_coordinates_tempCoordinates_2_o = uart_to_coordinates_tempCoordinates_2_i;
    end
end

always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce or uart_to_coordinates_uart_state_V_i or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o or call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o_ap_vld) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce) & (ap_const_logic_1 == call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o_ap_vld))) begin
        uart_to_coordinates_uart_state_V_o = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o;
    end else begin
        uart_to_coordinates_uart_state_V_o = uart_to_coordinates_uart_state_V_i;
    end
end
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_ce or ap_sig_pprstidle_pp0) begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


assign ap_reg_phiprechg_coordinates_1_reg_121pp0_it0 = 'bx;

assign ap_reg_phiprechg_coordinates_2_reg_130pp0_it0 = 'bx;

assign ap_reg_phiprechg_coordinates_reg_112pp0_it0 = 'bx;

assign ap_reg_phiprechg_uart_to_coordinates_ck_a_V_reg_139pp0_it0 = 'bx;

assign ap_reg_phiprechg_uart_to_coordinates_ck_b_V_reg_148pp0_it0 = 'bx;

assign ap_reg_phiprechg_uart_to_coordinates_gnss_state_reg_157pp0_it0 = 'bx;

assign ap_reg_ppiten_pp0_it0 = ap_start;

assign ap_return_0 = uart_to_coordinates_ck_a_V_phi_fu_142_p4;

assign ap_return_1 = uart_to_coordinates_ck_b_V_phi_fu_151_p4;

assign ap_return_2 = uart_to_coordinates_current_ou_reg_457;

assign ap_return_3 = uart_to_coordinates_gnss_state_phi_fu_160_p4;

assign ap_return_4 = coordinates_phi_fu_115_p4;

assign ap_return_5 = coordinates_1_phi_fu_124_p4;

assign ap_return_6 = coordinates_2_phi_fu_133_p4;


always @ (ap_CS_fsm) begin
    ap_sig_bdd_19 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_ce) begin
    ap_sig_bdd_42 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_const_logic_1 == ap_ce));
end

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read1 = p_read;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read4 = p_read2;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_p_read5 = p_read5;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_a_V_read = ((sel_tmp8_fu_342_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_a_V_rea_fu_242_p3 : tmp_i_fu_212_p2);

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_ck_b_V_read = ((sel_tmp8_fu_342_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_b_V_rea_fu_250_p3 : tmp_85_i_fu_218_p2);

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_current_out_byte_V_read = call_ret6_master_ip_uart_to_byte_fu_187_ap_return_1;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_gnss_state_V_read = uart_to_coordinates_gnss_state_V_read;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_i = uart_to_coordinates_tempCoordinates_0_i;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_i = uart_to_coordinates_tempCoordinates_1_i;

assign call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_i = uart_to_coordinates_tempCoordinates_2_i;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_i = uart_to_coordinates_count_V_i;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_input_V_read = input_V_read;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_current_out_byte_V_read = uart_to_coordinates_current_out_byte_V_read;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_i = uart_to_coordinates_next_out_byte_V_i;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_i = uart_to_coordinates_previous_input_V_i;

assign call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_i = uart_to_coordinates_uart_state_V_i;

assign or_cond4_i_fu_236_p2 = (tmp_86_i_fu_224_p2 & tmp_87_i_fu_230_p2);

assign sel_tmp1_fu_264_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3E? 1'b1: 1'b0);

assign sel_tmp2_fu_270_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3D? 1'b1: 1'b0);

assign sel_tmp3_fu_276_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3C? 1'b1: 1'b0);

assign sel_tmp4_fu_282_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3B? 1'b1: 1'b0);

assign sel_tmp5_fu_288_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3A? 1'b1: 1'b0);

assign sel_tmp6_fu_294_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_1? 1'b1: 1'b0);

assign sel_tmp7_fu_300_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_0? 1'b1: 1'b0);

assign sel_tmp8_fu_342_p2 = (tmp11_fu_336_p2 | tmp8_fu_318_p2);

assign sel_tmp_fu_258_p2 = (uart_to_coordinates_gnss_state_V_read == ap_const_lv6_3F? 1'b1: 1'b0);

assign tmp10_fu_330_p2 = (sel_tmp1_fu_264_p2 | sel_tmp7_fu_300_p2);

assign tmp11_fu_336_p2 = (tmp10_fu_330_p2 | tmp9_fu_324_p2);

assign tmp6_fu_306_p2 = (sel_tmp5_fu_288_p2 | sel_tmp6_fu_294_p2);

assign tmp7_fu_312_p2 = (sel_tmp4_fu_282_p2 | sel_tmp3_fu_276_p2);

assign tmp8_fu_318_p2 = (tmp7_fu_312_p2 | tmp6_fu_306_p2);

assign tmp9_fu_324_p2 = (sel_tmp_fu_258_p2 | sel_tmp2_fu_270_p2);

assign tmp_85_i_fu_218_p2 = (tmp_i_fu_212_p2 + uart_to_coordinates_ck_b_V_read);

assign tmp_86_i_fu_224_p2 = (uart_to_coordinates_gnss_state_V_read > ap_const_lv6_39? 1'b1: 1'b0);

assign tmp_87_i_fu_230_p2 = (uart_to_coordinates_gnss_state_V_read < ap_const_lv6_3C? 1'b1: 1'b0);

assign tmp_fu_203_p1 = call_ret6_master_ip_uart_to_byte_fu_187_ap_return_0;

assign tmp_i_fu_212_p2 = (call_ret6_master_ip_uart_to_byte_fu_187_ap_return_1 + uart_to_coordinates_ck_a_V_read);

assign uart_to_coordinates_ck_a_V_1_i_fu_348_p3 = ((sel_tmp8_fu_342_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_a_V_rea_fu_242_p3 : tmp_i_fu_212_p2);

assign uart_to_coordinates_ck_a_V_rea_fu_242_p3 = ((or_cond4_i_fu_236_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_a_V_read : ap_const_lv8_0);

assign uart_to_coordinates_ck_b_V_1_i_fu_357_p3 = ((sel_tmp8_fu_342_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_b_V_rea_fu_250_p3 : tmp_85_i_fu_218_p2);

assign uart_to_coordinates_ck_b_V_rea_fu_250_p3 = ((or_cond4_i_fu_236_p2[0:0] === 1'b1) ? uart_to_coordinates_ck_b_V_read : ap_const_lv8_0);

assign uart_to_coordinates_count_V_o_ap_vld = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_count_V_o_ap_vld;

assign uart_to_coordinates_next_out_byte_V_o_ap_vld = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_next_out_byte_V_o_ap_vld;

assign uart_to_coordinates_previous_input_V_o_ap_vld = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_previous_input_V_o_ap_vld;

assign uart_to_coordinates_tempCoordinates_0_o_ap_vld = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld;

assign uart_to_coordinates_tempCoordinates_1_o_ap_vld = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld;

assign uart_to_coordinates_tempCoordinates_2_o_ap_vld = call_ret5_master_ip_get_gps_info_from_ubx_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld;

assign uart_to_coordinates_uart_state_V_o_ap_vld = call_ret6_master_ip_uart_to_byte_fu_187_uart_to_coordinates_uart_state_V_o_ap_vld;


endmodule //master_ip_mainFunction
