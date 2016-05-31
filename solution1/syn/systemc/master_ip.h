// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _master_ip_HH_
#define _master_ip_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "master_ip_mainFunction.h"
#include "master_ip_dadd_64ns_64ns_64_4_full_dsp.h"
#include "master_ip_dmul_64ns_64ns_64_4_max_dsp.h"
#include "master_ip_sitodp_32ns_64_3.h"
#include "master_ip_dsqrt_64ns_64ns_64_17.h"
#include "master_ip_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct master_ip : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<1> > uart1_V;
    sc_in< sc_lv<1> > uart2_V;
    sc_out< sc_lv<1> > alert_V;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;


    // Module declarations
    master_ip(sc_module_name name);
    SC_HAS_PROCESS(master_ip);

    ~master_ip();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    master_ip_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* master_ip_AXILiteS_s_axi_U;
    master_ip_mainFunction* grp_master_ip_mainFunction_fu_139;
    master_ip_mainFunction* grp_master_ip_mainFunction_fu_166;
    master_ip_dadd_64ns_64ns_64_4_full_dsp<1,4,64,64,64>* master_ip_dadd_64ns_64ns_64_4_full_dsp_U31;
    master_ip_dmul_64ns_64ns_64_4_max_dsp<1,4,64,64,64>* master_ip_dmul_64ns_64ns_64_4_max_dsp_U32;
    master_ip_dmul_64ns_64ns_64_4_max_dsp<1,4,64,64,64>* master_ip_dmul_64ns_64ns_64_4_max_dsp_U33;
    master_ip_sitodp_32ns_64_3<1,3,32,64>* master_ip_sitodp_32ns_64_3_U34;
    master_ip_sitodp_32ns_64_3<1,3,32,64>* master_ip_sitodp_32ns_64_3_U35;
    master_ip_dsqrt_64ns_64ns_64_17<1,17,64,64,64>* master_ip_dsqrt_64ns_64ns_64_17_U36;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<8> > axi_byte_V;
    sc_signal< sc_lv<8> > signal1_ck_a_V;
    sc_signal< sc_lv<8> > signal1_ck_b_V;
    sc_signal< sc_lv<8> > signal1_current_out_byte_V;
    sc_signal< sc_lv<6> > signal1_gnss_state_V;
    sc_signal< sc_lv<32> > coordinates1_0;
    sc_signal< sc_lv<32> > coordinates1_1;
    sc_signal< sc_lv<32> > coordinates1_2;
    sc_signal< sc_lv<16> > signal1_count_V;
    sc_signal< sc_lv<1> > signal1_previous_input_V;
    sc_signal< sc_lv<4> > signal1_uart_state_V;
    sc_signal< sc_lv<8> > signal1_next_out_byte_V;
    sc_signal< sc_lv<32> > signal1_tempCoordinates_0;
    sc_signal< sc_lv<32> > signal1_tempCoordinates_1;
    sc_signal< sc_lv<32> > signal1_tempCoordinates_2;
    sc_signal< sc_lv<8> > signal2_ck_a_V;
    sc_signal< sc_lv<8> > signal2_ck_b_V;
    sc_signal< sc_lv<8> > signal2_current_out_byte_V;
    sc_signal< sc_lv<6> > signal2_gnss_state_V;
    sc_signal< sc_lv<32> > coordinates2_0;
    sc_signal< sc_lv<32> > coordinates2_1;
    sc_signal< sc_lv<32> > coordinates2_2;
    sc_signal< sc_lv<16> > signal2_count_V;
    sc_signal< sc_lv<1> > signal2_previous_input_V;
    sc_signal< sc_lv<4> > signal2_uart_state_V;
    sc_signal< sc_lv<8> > signal2_next_out_byte_V;
    sc_signal< sc_lv<32> > signal2_tempCoordinates_0;
    sc_signal< sc_lv<32> > signal2_tempCoordinates_1;
    sc_signal< sc_lv<32> > signal2_tempCoordinates_2;
    sc_signal< sc_logic > master_ip_AXILiteS_s_axi_U_ap_dummy_ce;
    sc_signal< sc_lv<64> > grp_fu_205_p1;
    sc_signal< sc_lv<64> > reg_216;
    sc_signal< sc_lv<35> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_126;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_bdd_134;
    sc_signal< sc_lv<64> > grp_fu_197_p2;
    sc_signal< sc_lv<64> > reg_222;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_bdd_144;
    sc_signal< sc_lv<64> > grp_fu_193_p2;
    sc_signal< sc_lv<64> > reg_228;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_bdd_154;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_163;
    sc_signal< sc_lv<32> > tmp_i_fu_444_p2;
    sc_signal< sc_lv<32> > tmp_i_reg_690;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_202;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_ap_done;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_ap_done;
    sc_signal< sc_lv<32> > tmp_96_i_fu_450_p2;
    sc_signal< sc_lv<32> > tmp_96_i_reg_695;
    sc_signal< sc_lv<32> > tmp_100_i_fu_456_p2;
    sc_signal< sc_lv<32> > tmp_100_i_reg_700;
    sc_signal< sc_lv<64> > grp_fu_208_p1;
    sc_signal< sc_lv<64> > tmp_97_i_reg_705;
    sc_signal< sc_lv<64> > grp_fu_201_p2;
    sc_signal< sc_lv<64> > tmp_98_i_reg_711;
    sc_signal< sc_lv<64> > grp_fu_211_p2;
    sc_signal< sc_lv<64> > x_assign_reg_716;
    sc_signal< sc_logic > ap_sig_cseq_ST_st34_fsm_33;
    sc_signal< bool > ap_sig_bdd_226;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_ap_start;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_ap_idle;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_ap_ready;
    sc_signal< sc_lv<16> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_count_V_i;
    sc_signal< sc_lv<16> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_count_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_count_V_o_ap_vld;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_previous_input_V_i;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_previous_input_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_previous_input_V_o_ap_vld;
    sc_signal< sc_lv<4> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_uart_state_V_i;
    sc_signal< sc_lv<4> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_uart_state_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_uart_state_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_next_out_byte_V_i;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_next_out_byte_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_next_out_byte_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_current_out_byte_V_read;
    sc_signal< sc_lv<6> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_gnss_state_V_read;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_ck_a_V_read;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_ck_b_V_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_0_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_0_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_0_o_ap_vld;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_1_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_1_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_1_o_ap_vld;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_2_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_2_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_2_o_ap_vld;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_139_input_V_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_p_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_p_read2;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_p_read5;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_ap_return_0;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_ap_return_1;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_139_ap_return_2;
    sc_signal< sc_lv<6> > grp_master_ip_mainFunction_fu_139_ap_return_3;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_ap_return_4;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_ap_return_5;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_139_ap_return_6;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_ap_start;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_ap_idle;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_ap_ready;
    sc_signal< sc_lv<16> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_count_V_i;
    sc_signal< sc_lv<16> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_count_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_count_V_o_ap_vld;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_previous_input_V_i;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_previous_input_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_previous_input_V_o_ap_vld;
    sc_signal< sc_lv<4> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_uart_state_V_i;
    sc_signal< sc_lv<4> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_uart_state_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_uart_state_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_next_out_byte_V_i;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_next_out_byte_V_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_next_out_byte_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_current_out_byte_V_read;
    sc_signal< sc_lv<6> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_gnss_state_V_read;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_ck_a_V_read;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_ck_b_V_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_0_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_0_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_0_o_ap_vld;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_1_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_1_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_1_o_ap_vld;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_2_i;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_2_o;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_2_o_ap_vld;
    sc_signal< sc_lv<1> > grp_master_ip_mainFunction_fu_166_input_V_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_p_read;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_p_read2;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_p_read5;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_ap_return_0;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_ap_return_1;
    sc_signal< sc_lv<8> > grp_master_ip_mainFunction_fu_166_ap_return_2;
    sc_signal< sc_lv<6> > grp_master_ip_mainFunction_fu_166_ap_return_3;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_ap_return_4;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_ap_return_5;
    sc_signal< sc_lv<32> > grp_master_ip_mainFunction_fu_166_ap_return_6;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_139_ap_start_ap_start_reg;
    sc_signal< sc_logic > grp_master_ip_mainFunction_fu_166_ap_start_ap_start_reg;
    sc_signal< sc_logic > ap_sig_cseq_ST_st35_fsm_34;
    sc_signal< bool > ap_sig_bdd_403;
    sc_signal< sc_lv<64> > grp_fu_193_p0;
    sc_signal< sc_lv<64> > grp_fu_193_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_bdd_412;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_bdd_419;
    sc_signal< sc_lv<32> > grp_fu_205_p0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_438;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_bdd_445;
    sc_signal< sc_lv<64> > p_Val2_s_fu_462_p1;
    sc_signal< sc_lv<52> > loc_V_1_fu_483_p1;
    sc_signal< sc_lv<53> > p_Result_1_fu_487_p3;
    sc_signal< sc_lv<11> > loc_V_fu_473_p4;
    sc_signal< sc_lv<12> > tmp_i_i_i_i_cast1_fu_499_p1;
    sc_signal< sc_lv<12> > sh_assign_fu_503_p2;
    sc_signal< sc_lv<11> > tmp_i_i_i_13_fu_517_p2;
    sc_signal< sc_lv<1> > isNeg_fu_509_p3;
    sc_signal< sc_lv<12> > tmp_i_i_i_cast_fu_523_p1;
    sc_signal< sc_lv<12> > sh_assign_1_fu_527_p3;
    sc_signal< sc_lv<32> > sh_assign_1_cast_fu_535_p1;
    sc_signal< sc_lv<53> > tmp_88_i_i_i_cast_fu_543_p1;
    sc_signal< sc_lv<136> > tmp_i_i_i_fu_495_p1;
    sc_signal< sc_lv<136> > tmp_88_i_i_i_fu_539_p1;
    sc_signal< sc_lv<53> > tmp_89_i_i_i_fu_547_p2;
    sc_signal< sc_lv<1> > tmp_fu_559_p3;
    sc_signal< sc_lv<136> > tmp_91_i_i_i_fu_553_p2;
    sc_signal< sc_lv<32> > tmp_3_fu_567_p1;
    sc_signal< sc_lv<32> > tmp_4_fu_571_p4;
    sc_signal< sc_lv<32> > p_Val2_3_fu_581_p3;
    sc_signal< sc_lv<1> > p_Result_s_fu_465_p3;
    sc_signal< sc_lv<32> > p_Val2_7_i_i_i_fu_589_p2;
    sc_signal< sc_lv<32> > p_Val2_5_fu_595_p3;
    sc_signal< sc_logic > grp_fu_193_ce;
    sc_signal< sc_logic > grp_fu_197_ce;
    sc_signal< sc_logic > grp_fu_201_ce;
    sc_signal< sc_logic > grp_fu_205_ce;
    sc_signal< sc_logic > grp_fu_208_ce;
    sc_signal< sc_logic > grp_fu_211_ce;
    sc_signal< sc_lv<35> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<35> ap_ST_st1_fsm_0;
    static const sc_lv<35> ap_ST_st2_fsm_1;
    static const sc_lv<35> ap_ST_st3_fsm_2;
    static const sc_lv<35> ap_ST_st4_fsm_3;
    static const sc_lv<35> ap_ST_st5_fsm_4;
    static const sc_lv<35> ap_ST_st6_fsm_5;
    static const sc_lv<35> ap_ST_st7_fsm_6;
    static const sc_lv<35> ap_ST_st8_fsm_7;
    static const sc_lv<35> ap_ST_st9_fsm_8;
    static const sc_lv<35> ap_ST_st10_fsm_9;
    static const sc_lv<35> ap_ST_st11_fsm_10;
    static const sc_lv<35> ap_ST_st12_fsm_11;
    static const sc_lv<35> ap_ST_st13_fsm_12;
    static const sc_lv<35> ap_ST_st14_fsm_13;
    static const sc_lv<35> ap_ST_st15_fsm_14;
    static const sc_lv<35> ap_ST_st16_fsm_15;
    static const sc_lv<35> ap_ST_st17_fsm_16;
    static const sc_lv<35> ap_ST_st18_fsm_17;
    static const sc_lv<35> ap_ST_st19_fsm_18;
    static const sc_lv<35> ap_ST_st20_fsm_19;
    static const sc_lv<35> ap_ST_st21_fsm_20;
    static const sc_lv<35> ap_ST_st22_fsm_21;
    static const sc_lv<35> ap_ST_st23_fsm_22;
    static const sc_lv<35> ap_ST_st24_fsm_23;
    static const sc_lv<35> ap_ST_st25_fsm_24;
    static const sc_lv<35> ap_ST_st26_fsm_25;
    static const sc_lv<35> ap_ST_st27_fsm_26;
    static const sc_lv<35> ap_ST_st28_fsm_27;
    static const sc_lv<35> ap_ST_st29_fsm_28;
    static const sc_lv<35> ap_ST_st30_fsm_29;
    static const sc_lv<35> ap_ST_st31_fsm_30;
    static const sc_lv<35> ap_ST_st32_fsm_31;
    static const sc_lv<35> ap_ST_st33_fsm_32;
    static const sc_lv<35> ap_ST_st34_fsm_33;
    static const sc_lv<35> ap_ST_st35_fsm_34;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<12> ap_const_lv12_C01;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<11> ap_const_lv11_3FF;
    static const sc_lv<32> ap_const_lv32_53;
    static const sc_lv<32> ap_const_lv32_3E8;
    static const sc_lv<64> ap_const_lv64_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_alert_V();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_bdd_126();
    void thread_ap_sig_bdd_134();
    void thread_ap_sig_bdd_144();
    void thread_ap_sig_bdd_154();
    void thread_ap_sig_bdd_163();
    void thread_ap_sig_bdd_202();
    void thread_ap_sig_bdd_226();
    void thread_ap_sig_bdd_403();
    void thread_ap_sig_bdd_412();
    void thread_ap_sig_bdd_419();
    void thread_ap_sig_bdd_438();
    void thread_ap_sig_bdd_445();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st34_fsm_33();
    void thread_ap_sig_cseq_ST_st35_fsm_34();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_grp_fu_193_ce();
    void thread_grp_fu_193_p0();
    void thread_grp_fu_193_p1();
    void thread_grp_fu_197_ce();
    void thread_grp_fu_201_ce();
    void thread_grp_fu_205_ce();
    void thread_grp_fu_205_p0();
    void thread_grp_fu_208_ce();
    void thread_grp_fu_211_ce();
    void thread_grp_master_ip_mainFunction_fu_139_ap_start();
    void thread_grp_master_ip_mainFunction_fu_139_input_V_read();
    void thread_grp_master_ip_mainFunction_fu_139_p_read();
    void thread_grp_master_ip_mainFunction_fu_139_p_read2();
    void thread_grp_master_ip_mainFunction_fu_139_p_read5();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_ck_a_V_read();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_ck_b_V_read();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_count_V_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_current_out_byte_V_read();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_gnss_state_V_read();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_next_out_byte_V_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_previous_input_V_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_0_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_1_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_tempCoordinates_2_i();
    void thread_grp_master_ip_mainFunction_fu_139_uart_to_coordinates_uart_state_V_i();
    void thread_grp_master_ip_mainFunction_fu_166_ap_start();
    void thread_grp_master_ip_mainFunction_fu_166_input_V_read();
    void thread_grp_master_ip_mainFunction_fu_166_p_read();
    void thread_grp_master_ip_mainFunction_fu_166_p_read2();
    void thread_grp_master_ip_mainFunction_fu_166_p_read5();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_ck_a_V_read();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_ck_b_V_read();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_count_V_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_current_out_byte_V_read();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_gnss_state_V_read();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_next_out_byte_V_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_previous_input_V_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_0_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_1_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_tempCoordinates_2_i();
    void thread_grp_master_ip_mainFunction_fu_166_uart_to_coordinates_uart_state_V_i();
    void thread_isNeg_fu_509_p3();
    void thread_loc_V_1_fu_483_p1();
    void thread_loc_V_fu_473_p4();
    void thread_master_ip_AXILiteS_s_axi_U_ap_dummy_ce();
    void thread_p_Result_1_fu_487_p3();
    void thread_p_Result_s_fu_465_p3();
    void thread_p_Val2_3_fu_581_p3();
    void thread_p_Val2_5_fu_595_p3();
    void thread_p_Val2_7_i_i_i_fu_589_p2();
    void thread_p_Val2_s_fu_462_p1();
    void thread_sh_assign_1_cast_fu_535_p1();
    void thread_sh_assign_1_fu_527_p3();
    void thread_sh_assign_fu_503_p2();
    void thread_tmp_100_i_fu_456_p2();
    void thread_tmp_3_fu_567_p1();
    void thread_tmp_4_fu_571_p4();
    void thread_tmp_88_i_i_i_cast_fu_543_p1();
    void thread_tmp_88_i_i_i_fu_539_p1();
    void thread_tmp_89_i_i_i_fu_547_p2();
    void thread_tmp_91_i_i_i_fu_553_p2();
    void thread_tmp_96_i_fu_450_p2();
    void thread_tmp_fu_559_p3();
    void thread_tmp_i_fu_444_p2();
    void thread_tmp_i_i_i_13_fu_517_p2();
    void thread_tmp_i_i_i_cast_fu_523_p1();
    void thread_tmp_i_i_i_fu_495_p1();
    void thread_tmp_i_i_i_i_cast1_fu_499_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif