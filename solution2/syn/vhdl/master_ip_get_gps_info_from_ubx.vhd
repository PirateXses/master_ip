-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity master_ip_get_gps_info_from_ubx is
port (
    uart_to_coordinates_current_out_byte_V_read : IN STD_LOGIC_VECTOR (7 downto 0);
    uart_to_coordinates_gnss_state_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    uart_to_coordinates_ck_a_V_read : IN STD_LOGIC_VECTOR (7 downto 0);
    uart_to_coordinates_ck_b_V_read : IN STD_LOGIC_VECTOR (7 downto 0);
    uart_to_coordinates_tempCoordinates_0_i : IN STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_0_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_0_o_ap_vld : OUT STD_LOGIC;
    uart_to_coordinates_tempCoordinates_1_i : IN STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_1_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_1_o_ap_vld : OUT STD_LOGIC;
    uart_to_coordinates_tempCoordinates_2_i : IN STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_2_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    uart_to_coordinates_tempCoordinates_2_o_ap_vld : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of master_ip_get_gps_info_from_ubx is 
    constant ap_true : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv6_3A : STD_LOGIC_VECTOR (5 downto 0) := "111010";
    constant ap_const_lv6_10 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv8_B5 : STD_LOGIC_VECTOR (7 downto 0) := "10110101";
    constant ap_const_lv8_62 : STD_LOGIC_VECTOR (7 downto 0) := "01100010";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000110";
    constant ap_const_lv8_34 : STD_LOGIC_VECTOR (7 downto 0) := "00110100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_1D : STD_LOGIC_VECTOR (5 downto 0) := "011101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv8_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000101";
    constant ap_const_lv6_11 : STD_LOGIC_VECTOR (5 downto 0) := "010001";
    constant ap_const_lv6_16 : STD_LOGIC_VECTOR (5 downto 0) := "010110";
    constant ap_const_lv6_15 : STD_LOGIC_VECTOR (5 downto 0) := "010101";
    constant ap_const_lv6_1A : STD_LOGIC_VECTOR (5 downto 0) := "011010";
    constant ap_const_lv6_19 : STD_LOGIC_VECTOR (5 downto 0) := "011001";
    constant ap_const_lv6_1E : STD_LOGIC_VECTOR (5 downto 0) := "011110";
    constant ap_const_lv6_3B : STD_LOGIC_VECTOR (5 downto 0) := "111011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv9_130 : STD_LOGIC_VECTOR (8 downto 0) := "100110000";
    constant ap_const_lv9_150 : STD_LOGIC_VECTOR (8 downto 0) := "101010000";
    constant ap_const_lv9_170 : STD_LOGIC_VECTOR (8 downto 0) := "101110000";

    signal tmp_20_phi_fu_197_p22 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_19_fu_548_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_348_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond1_fu_366_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond2_fu_384_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond3_fu_402_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond4_fu_420_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond5_fu_438_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond6_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond7_fu_484_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond8_fu_502_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond9_fu_542_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_flag3_1_phi_fu_235_p10 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond10_fu_566_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond11_fu_584_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond12_fu_602_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond13_fu_620_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_21_fu_756_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal uart_to_coordinates_gnss_state_phi_fu_314_p10 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_327_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_28_fu_749_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_36_fu_706_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_44_fu_663_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_336_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_360_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_372_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_378_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_390_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_408_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_414_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_426_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_432_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_49_fu_450_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_11_fu_444_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_fu_460_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_472_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_478_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_490_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_496_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_50_fu_514_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp1_fu_524_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_530_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_536_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_508_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_fu_554_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_fu_560_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_30_fu_572_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_31_fu_578_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_38_fu_590_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_39_fu_596_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_46_fu_608_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_47_fu_614_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_53_fu_631_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_41_fu_635_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_45_cast_fu_643_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_42_fu_647_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_40_fu_627_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_46_cast_fu_653_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_43_fu_657_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_52_fu_674_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_33_fu_678_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_cast_fu_686_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_34_fu_690_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_32_fu_670_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_37_cast_fu_696_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_35_fu_700_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_51_fu_717_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_25_fu_721_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_27_cast_fu_729_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_26_fu_733_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_24_fu_713_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_28_cast_fu_739_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_27_fu_743_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mrv_sel_fu_763_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal mrv_sel1_fu_771_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal mrv_sel2_fu_779_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_bdd_553 : BOOLEAN;
    signal ap_sig_bdd_146 : BOOLEAN;
    signal ap_sig_bdd_556 : BOOLEAN;
    signal ap_sig_bdd_152 : BOOLEAN;
    signal ap_sig_bdd_158 : BOOLEAN;


begin



    ap_return_0 <= uart_to_coordinates_gnss_state_phi_fu_314_p10;
    ap_return_1 <= mrv_sel_fu_763_p3;
    ap_return_2 <= mrv_sel1_fu_771_p3;
    ap_return_3 <= mrv_sel2_fu_779_p3;

    -- ap_sig_bdd_146 assign process. --
    ap_sig_bdd_146_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2)
    begin
                ap_sig_bdd_146 <= ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2));
    end process;


    -- ap_sig_bdd_152 assign process. --
    ap_sig_bdd_152_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2)
    begin
                ap_sig_bdd_152 <= ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2));
    end process;


    -- ap_sig_bdd_158 assign process. --
    ap_sig_bdd_158_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2)
    begin
                ap_sig_bdd_158 <= ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2));
    end process;


    -- ap_sig_bdd_553 assign process. --
    ap_sig_bdd_553_assign_proc : process(or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2)
    begin
                ap_sig_bdd_553 <= ((ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2));
    end process;


    -- ap_sig_bdd_556 assign process. --
    ap_sig_bdd_556_assign_proc : process(or_cond11_fu_584_p2, or_cond12_fu_602_p2)
    begin
                ap_sig_bdd_556 <= ((ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2));
    end process;

    grp_fu_327_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(uart_to_coordinates_gnss_state_V_read));
    icmp1_fu_524_p2 <= "0" when (tmp_50_fu_514_p4 = ap_const_lv7_0) else "1";
    icmp_fu_460_p2 <= "1" when (tmp_49_fu_450_p4 = ap_const_lv2_0) else "0";
    mrv_sel1_fu_771_p3 <= 
        uart_to_coordinates_tempCoordinates_1_i when (write_flag3_1_phi_fu_235_p10(0) = '1') else 
        p_read4;
    mrv_sel2_fu_779_p3 <= 
        uart_to_coordinates_tempCoordinates_2_i when (write_flag3_1_phi_fu_235_p10(0) = '1') else 
        p_read5;
    mrv_sel_fu_763_p3 <= 
        uart_to_coordinates_tempCoordinates_0_i when (write_flag3_1_phi_fu_235_p10(0) = '1') else 
        p_read1;
    or_cond10_fu_566_p2 <= (tmp_22_fu_554_p2 and tmp_23_fu_560_p2);
    or_cond11_fu_584_p2 <= (tmp_30_fu_572_p2 and tmp_31_fu_578_p2);
    or_cond12_fu_602_p2 <= (tmp_38_fu_590_p2 and tmp_39_fu_596_p2);
    or_cond13_fu_620_p2 <= (tmp_46_fu_608_p2 and tmp_47_fu_614_p2);
    or_cond1_fu_366_p2 <= (tmp_1_fu_354_p2 and tmp_2_fu_360_p2);
    or_cond2_fu_384_p2 <= (tmp_3_fu_372_p2 and tmp_4_fu_378_p2);
    or_cond3_fu_402_p2 <= (tmp_5_fu_390_p2 and tmp_6_fu_396_p2);
    or_cond4_fu_420_p2 <= (tmp_7_fu_408_p2 and tmp_8_fu_414_p2);
    or_cond5_fu_438_p2 <= (tmp_9_fu_426_p2 and tmp_10_fu_432_p2);
    or_cond6_fu_466_p2 <= (tmp_11_fu_444_p2 and icmp_fu_460_p2);
    or_cond7_fu_484_p2 <= (tmp_13_fu_472_p2 and tmp_14_fu_478_p2);
    or_cond8_fu_502_p2 <= (tmp_15_fu_490_p2 and tmp_16_fu_496_p2);
    or_cond9_fu_542_p2 <= (tmp1_fu_536_p2 and tmp_17_fu_508_p2);
    or_cond_fu_348_p2 <= (tmp_fu_336_p2 and tmp_s_fu_342_p2);
    tmp1_fu_536_p2 <= (icmp1_fu_524_p2 and tmp_18_fu_530_p2);
    tmp_10_fu_432_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_0) else "0";
    tmp_11_fu_444_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) > unsigned(ap_const_lv6_5)) else "0";
    tmp_13_fu_472_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) > unsigned(ap_const_lv6_1D)) else "0";
    tmp_14_fu_478_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) < unsigned(ap_const_lv6_3A)) else "0";
    tmp_15_fu_490_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_3A) else "0";
    tmp_16_fu_496_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = uart_to_coordinates_ck_a_V_read) else "0";
    tmp_17_fu_508_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_10) else "0";
    tmp_18_fu_530_p2 <= "1" when (unsigned(uart_to_coordinates_current_out_byte_V_read) < unsigned(ap_const_lv8_5)) else "0";
    tmp_19_fu_548_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_11) else "0";
    tmp_1_fu_354_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_1) else "0";

    -- tmp_20_phi_fu_197_p22 assign process. --
    tmp_20_phi_fu_197_p22_assign_proc : process(uart_to_coordinates_gnss_state_V_read, tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2)
    begin
        if (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and not((ap_const_lv1_0 = or_cond9_fu_542_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_10;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and not((ap_const_lv1_0 = or_cond8_fu_502_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_3A;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and not((ap_const_lv1_0 = or_cond5_fu_438_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_5;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and not((ap_const_lv1_0 = or_cond4_fu_420_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_4;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and not((ap_const_lv1_0 = or_cond3_fu_402_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_3;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and not((ap_const_lv1_0 = or_cond2_fu_384_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_2;
        elsif (((ap_const_lv1_0 = or_cond_fu_348_p2) and not((ap_const_lv1_0 = or_cond1_fu_366_p2)))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_1;
        elsif (not((ap_const_lv1_0 = or_cond_fu_348_p2))) then 
            tmp_20_phi_fu_197_p22 <= ap_const_lv6_0;
        elsif (((not((tmp_19_fu_548_p2 = ap_const_lv1_0)) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2)) or ((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and not((ap_const_lv1_0 = or_cond6_fu_466_p2))) or ((ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and not((ap_const_lv1_0 = or_cond7_fu_484_p2))))) then 
            tmp_20_phi_fu_197_p22 <= uart_to_coordinates_gnss_state_V_read;
        else 
            tmp_20_phi_fu_197_p22 <= "XXXXXX";
        end if; 
    end process;

    tmp_21_fu_756_p2 <= std_logic_vector(unsigned(tmp_20_phi_fu_197_p22) + unsigned(ap_const_lv6_1));
    tmp_22_fu_554_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) > unsigned(ap_const_lv6_11)) else "0";
    tmp_23_fu_560_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) < unsigned(ap_const_lv6_16)) else "0";
    tmp_24_fu_713_p1 <= std_logic_vector(resize(unsigned(uart_to_coordinates_current_out_byte_V_read),32));
    tmp_25_fu_721_p3 <= (tmp_51_fu_717_p1 & ap_const_lv3_0);
    tmp_26_fu_733_p2 <= std_logic_vector(signed(ap_const_lv9_170) + signed(tmp_27_cast_fu_729_p1));
    tmp_27_cast_fu_729_p1 <= std_logic_vector(resize(unsigned(tmp_25_fu_721_p3),9));
    tmp_27_fu_743_p2 <= std_logic_vector(shift_left(unsigned(tmp_24_fu_713_p1),to_integer(unsigned('0' & tmp_28_cast_fu_739_p1(31-1 downto 0)))));
        tmp_28_cast_fu_739_p1 <= std_logic_vector(resize(signed(tmp_26_fu_733_p2),32));

    tmp_28_fu_749_p2 <= (uart_to_coordinates_tempCoordinates_0_i or tmp_27_fu_743_p2);
    tmp_2_fu_360_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_62) else "0";
    tmp_30_fu_572_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) > unsigned(ap_const_lv6_15)) else "0";
    tmp_31_fu_578_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) < unsigned(ap_const_lv6_1A)) else "0";
    tmp_32_fu_670_p1 <= std_logic_vector(resize(unsigned(uart_to_coordinates_current_out_byte_V_read),32));
    tmp_33_fu_678_p3 <= (tmp_52_fu_674_p1 & ap_const_lv3_0);
    tmp_34_fu_690_p2 <= std_logic_vector(signed(ap_const_lv9_150) + signed(tmp_36_cast_fu_686_p1));
    tmp_35_fu_700_p2 <= std_logic_vector(shift_left(unsigned(tmp_32_fu_670_p1),to_integer(unsigned('0' & tmp_37_cast_fu_696_p1(31-1 downto 0)))));
    tmp_36_cast_fu_686_p1 <= std_logic_vector(resize(unsigned(tmp_33_fu_678_p3),9));
    tmp_36_fu_706_p2 <= (uart_to_coordinates_tempCoordinates_1_i or tmp_35_fu_700_p2);
        tmp_37_cast_fu_696_p1 <= std_logic_vector(resize(signed(tmp_34_fu_690_p2),32));

    tmp_38_fu_590_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) > unsigned(ap_const_lv6_19)) else "0";
    tmp_39_fu_596_p2 <= "1" when (unsigned(uart_to_coordinates_gnss_state_V_read) < unsigned(ap_const_lv6_1E)) else "0";
    tmp_3_fu_372_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_2) else "0";
    tmp_40_fu_627_p1 <= std_logic_vector(resize(unsigned(uart_to_coordinates_current_out_byte_V_read),32));
    tmp_41_fu_635_p3 <= (tmp_53_fu_631_p1 & ap_const_lv3_0);
    tmp_42_fu_647_p2 <= std_logic_vector(signed(ap_const_lv9_130) + signed(tmp_45_cast_fu_643_p1));
    tmp_43_fu_657_p2 <= std_logic_vector(shift_left(unsigned(tmp_40_fu_627_p1),to_integer(unsigned('0' & tmp_46_cast_fu_653_p1(31-1 downto 0)))));
    tmp_44_fu_663_p2 <= (uart_to_coordinates_tempCoordinates_2_i or tmp_43_fu_657_p2);
    tmp_45_cast_fu_643_p1 <= std_logic_vector(resize(unsigned(tmp_41_fu_635_p3),9));
        tmp_46_cast_fu_653_p1 <= std_logic_vector(resize(signed(tmp_42_fu_647_p2),32));

    tmp_46_fu_608_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_3B) else "0";
    tmp_47_fu_614_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = uart_to_coordinates_ck_b_V_read) else "0";
    tmp_49_fu_450_p4 <= uart_to_coordinates_gnss_state_V_read(5 downto 4);
    tmp_4_fu_378_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_1) else "0";
    tmp_50_fu_514_p4 <= uart_to_coordinates_current_out_byte_V_read(7 downto 1);
    tmp_51_fu_717_p1 <= uart_to_coordinates_gnss_state_V_read(5 - 1 downto 0);
    tmp_52_fu_674_p1 <= uart_to_coordinates_gnss_state_V_read(5 - 1 downto 0);
    tmp_53_fu_631_p1 <= uart_to_coordinates_gnss_state_V_read(5 - 1 downto 0);
    tmp_5_fu_390_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_3) else "0";
    tmp_6_fu_396_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_6) else "0";
    tmp_7_fu_408_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_4) else "0";
    tmp_8_fu_414_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_34) else "0";
    tmp_9_fu_426_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_5) else "0";
    tmp_fu_336_p2 <= "1" when (uart_to_coordinates_gnss_state_V_read = ap_const_lv6_0) else "0";
    tmp_s_fu_342_p2 <= "1" when (uart_to_coordinates_current_out_byte_V_read = ap_const_lv8_B5) else "0";

    -- uart_to_coordinates_gnss_state_phi_fu_314_p10 assign process. --
    uart_to_coordinates_gnss_state_phi_fu_314_p10_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2, tmp_21_fu_756_p2, grp_fu_327_p2)
    begin
        if (((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2))) then 
            uart_to_coordinates_gnss_state_phi_fu_314_p10 <= ap_const_lv6_0;
        elsif ((((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and not((ap_const_lv1_0 = or_cond10_fu_566_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and not((ap_const_lv1_0 = or_cond11_fu_584_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and not((ap_const_lv1_0 = or_cond12_fu_602_p2))))) then 
            uart_to_coordinates_gnss_state_phi_fu_314_p10 <= grp_fu_327_p2;
        elsif ((not((tmp_19_fu_548_p2 = ap_const_lv1_0)) or not((ap_const_lv1_0 = or_cond_fu_348_p2)) or not((ap_const_lv1_0 = or_cond1_fu_366_p2)) or not((ap_const_lv1_0 = or_cond2_fu_384_p2)) or not((ap_const_lv1_0 = or_cond3_fu_402_p2)) or not((ap_const_lv1_0 = or_cond4_fu_420_p2)) or not((ap_const_lv1_0 = or_cond5_fu_438_p2)) or not((ap_const_lv1_0 = or_cond6_fu_466_p2)) or not((ap_const_lv1_0 = or_cond7_fu_484_p2)) or not((ap_const_lv1_0 = or_cond8_fu_502_p2)) or not((ap_const_lv1_0 = or_cond9_fu_542_p2)))) then 
            uart_to_coordinates_gnss_state_phi_fu_314_p10 <= tmp_21_fu_756_p2;
        else 
            uart_to_coordinates_gnss_state_phi_fu_314_p10 <= "XXXXXX";
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_0_o assign process. --
    uart_to_coordinates_tempCoordinates_0_o_assign_proc : process(uart_to_coordinates_tempCoordinates_0_i, or_cond10_fu_566_p2, tmp_28_fu_749_p2, ap_sig_bdd_553, ap_sig_bdd_146)
    begin
        if (ap_sig_bdd_146) then
            if (not((ap_const_lv1_0 = or_cond10_fu_566_p2))) then 
                uart_to_coordinates_tempCoordinates_0_o <= tmp_28_fu_749_p2;
            elsif (ap_sig_bdd_553) then 
                uart_to_coordinates_tempCoordinates_0_o <= ap_const_lv32_0;
            else 
                uart_to_coordinates_tempCoordinates_0_o <= uart_to_coordinates_tempCoordinates_0_i;
            end if;
        else 
            uart_to_coordinates_tempCoordinates_0_o <= uart_to_coordinates_tempCoordinates_0_i;
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_0_o_ap_vld assign process. --
    uart_to_coordinates_tempCoordinates_0_o_ap_vld_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2)
    begin
        if ((((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and not((ap_const_lv1_0 = or_cond10_fu_566_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2)))) then 
            uart_to_coordinates_tempCoordinates_0_o_ap_vld <= ap_const_logic_1;
        else 
            uart_to_coordinates_tempCoordinates_0_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_1_o assign process. --
    uart_to_coordinates_tempCoordinates_1_o_assign_proc : process(uart_to_coordinates_tempCoordinates_1_i, or_cond11_fu_584_p2, tmp_36_fu_706_p2, ap_sig_bdd_556, ap_sig_bdd_152)
    begin
        if (ap_sig_bdd_152) then
            if (not((ap_const_lv1_0 = or_cond11_fu_584_p2))) then 
                uart_to_coordinates_tempCoordinates_1_o <= tmp_36_fu_706_p2;
            elsif (ap_sig_bdd_556) then 
                uart_to_coordinates_tempCoordinates_1_o <= ap_const_lv32_0;
            else 
                uart_to_coordinates_tempCoordinates_1_o <= uart_to_coordinates_tempCoordinates_1_i;
            end if;
        else 
            uart_to_coordinates_tempCoordinates_1_o <= uart_to_coordinates_tempCoordinates_1_i;
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_1_o_ap_vld assign process. --
    uart_to_coordinates_tempCoordinates_1_o_ap_vld_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2)
    begin
        if ((((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and not((ap_const_lv1_0 = or_cond11_fu_584_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2)))) then 
            uart_to_coordinates_tempCoordinates_1_o_ap_vld <= ap_const_logic_1;
        else 
            uart_to_coordinates_tempCoordinates_1_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_2_o assign process. --
    uart_to_coordinates_tempCoordinates_2_o_assign_proc : process(uart_to_coordinates_tempCoordinates_2_i, or_cond12_fu_602_p2, tmp_44_fu_663_p2, ap_sig_bdd_158)
    begin
        if (ap_sig_bdd_158) then
            if (not((ap_const_lv1_0 = or_cond12_fu_602_p2))) then 
                uart_to_coordinates_tempCoordinates_2_o <= tmp_44_fu_663_p2;
            elsif ((ap_const_lv1_0 = or_cond12_fu_602_p2)) then 
                uart_to_coordinates_tempCoordinates_2_o <= ap_const_lv32_0;
            else 
                uart_to_coordinates_tempCoordinates_2_o <= uart_to_coordinates_tempCoordinates_2_i;
            end if;
        else 
            uart_to_coordinates_tempCoordinates_2_o <= uart_to_coordinates_tempCoordinates_2_i;
        end if; 
    end process;


    -- uart_to_coordinates_tempCoordinates_2_o_ap_vld assign process. --
    uart_to_coordinates_tempCoordinates_2_o_ap_vld_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2)
    begin
        if ((((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and not((ap_const_lv1_0 = or_cond12_fu_602_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2)))) then 
            uart_to_coordinates_tempCoordinates_2_o_ap_vld <= ap_const_logic_1;
        else 
            uart_to_coordinates_tempCoordinates_2_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    -- write_flag3_1_phi_fu_235_p10 assign process. --
    write_flag3_1_phi_fu_235_p10_assign_proc : process(tmp_19_fu_548_p2, or_cond_fu_348_p2, or_cond1_fu_366_p2, or_cond2_fu_384_p2, or_cond3_fu_402_p2, or_cond4_fu_420_p2, or_cond5_fu_438_p2, or_cond6_fu_466_p2, or_cond7_fu_484_p2, or_cond8_fu_502_p2, or_cond9_fu_542_p2, or_cond10_fu_566_p2, or_cond11_fu_584_p2, or_cond12_fu_602_p2, or_cond13_fu_620_p2)
    begin
        if (((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and (ap_const_lv1_0 = or_cond12_fu_602_p2))) then 
            write_flag3_1_phi_fu_235_p10 <= or_cond13_fu_620_p2;
        elsif ((not((tmp_19_fu_548_p2 = ap_const_lv1_0)) or not((ap_const_lv1_0 = or_cond_fu_348_p2)) or not((ap_const_lv1_0 = or_cond1_fu_366_p2)) or not((ap_const_lv1_0 = or_cond2_fu_384_p2)) or not((ap_const_lv1_0 = or_cond3_fu_402_p2)) or not((ap_const_lv1_0 = or_cond4_fu_420_p2)) or not((ap_const_lv1_0 = or_cond5_fu_438_p2)) or not((ap_const_lv1_0 = or_cond6_fu_466_p2)) or not((ap_const_lv1_0 = or_cond7_fu_484_p2)) or not((ap_const_lv1_0 = or_cond8_fu_502_p2)) or not((ap_const_lv1_0 = or_cond9_fu_542_p2)) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and not((ap_const_lv1_0 = or_cond10_fu_566_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and not((ap_const_lv1_0 = or_cond11_fu_584_p2))) or ((tmp_19_fu_548_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = or_cond_fu_348_p2) and (ap_const_lv1_0 = or_cond1_fu_366_p2) and (ap_const_lv1_0 = or_cond2_fu_384_p2) and (ap_const_lv1_0 = or_cond3_fu_402_p2) and (ap_const_lv1_0 = or_cond4_fu_420_p2) and (ap_const_lv1_0 = or_cond5_fu_438_p2) and (ap_const_lv1_0 = or_cond6_fu_466_p2) and (ap_const_lv1_0 = or_cond7_fu_484_p2) and (ap_const_lv1_0 = or_cond8_fu_502_p2) and (ap_const_lv1_0 = or_cond9_fu_542_p2) and (ap_const_lv1_0 = or_cond10_fu_566_p2) and (ap_const_lv1_0 = or_cond11_fu_584_p2) and not((ap_const_lv1_0 = or_cond12_fu_602_p2))))) then 
            write_flag3_1_phi_fu_235_p10 <= ap_const_lv1_0;
        else 
            write_flag3_1_phi_fu_235_p10 <= "X";
        end if; 
    end process;

end behav;
