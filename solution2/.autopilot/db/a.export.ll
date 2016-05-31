; ModuleID = 'C:/Users/mxfr/Vivado/master_ip/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@signal2_uart_state_V = internal global i4 0
@signal2_tempCoordinates_2 = internal global i32 0
@signal2_tempCoordinates_1 = internal global i32 0
@signal2_tempCoordinates_0 = internal global i32 2
@signal2_previous_input_V = internal global i1 false
@signal2_next_out_byte_V = internal global i8 0
@signal2_gnss_state_V = internal unnamed_addr global i6 0
@signal2_current_out_byte_V = internal unnamed_addr global i8 0
@signal2_count_V = internal global i16 0
@signal2_ck_b_V = internal unnamed_addr global i8 0
@signal2_ck_a_V = internal unnamed_addr global i8 0
@signal1_uart_state_V = internal global i4 0
@signal1_tempCoordinates_2 = internal global i32 0
@signal1_tempCoordinates_1 = internal global i32 0
@signal1_tempCoordinates_0 = internal global i32 2
@signal1_previous_input_V = internal global i1 false
@signal1_next_out_byte_V = internal global i8 0
@signal1_gnss_state_V = internal unnamed_addr global i6 0
@signal1_current_out_byte_V = internal unnamed_addr global i8 0
@signal1_count_V = internal global i16 0
@signal1_ck_b_V = internal unnamed_addr global i8 0
@signal1_ck_a_V = internal unnamed_addr global i8 0
@master_ip_str = internal unnamed_addr constant [10 x i8] c"master_ip\00"
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a5, void ()* @_GLOBAL__I_a20]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@coordinates2_2 = internal unnamed_addr global i32 0
@coordinates2_1 = internal unnamed_addr global i32 0
@coordinates2_0 = internal unnamed_addr global i32 0
@coordinates1_2 = internal unnamed_addr global i32 0
@coordinates1_1 = internal unnamed_addr global i32 0
@coordinates1_0 = internal unnamed_addr global i32 0
@p_str5 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define internal fastcc { i1, i8 } @master_ip_uart_to_byte(i16* nocapture %uart_to_coordinates_count_V, i1* nocapture %uart_to_coordinates_previous_input_V, i1 %uart_to_coordinates_current_input_V_read, i4* nocapture %uart_to_coordinates_uart_state_V, i8* nocapture %uart_to_coordinates_next_out_byte_V, i8 %uart_to_coordinates_current_out_byte_V_read) {
  %uart_to_coordinates_current_ou_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_current_out_byte_V_read)
  %uart_to_coordinates_current_in_1 = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %uart_to_coordinates_current_input_V_read)
  %uart_to_coordinates_uart_state = call i4 @_ssdm_op_Read.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V)
  %tmp = icmp eq i4 %uart_to_coordinates_uart_state, 0
  %uart_to_coordinates_previous_i = call i1 @_ssdm_op_Read.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V)
  %t_V = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %uart_to_coordinates_count_V)
  br i1 %tmp, label %1, label %8

; <label>:1                                       ; preds = %0
  %tmp_2 = icmp eq i16 %t_V, 14300
  br i1 %uart_to_coordinates_current_in_1, label %.critedge, label %2

; <label>:2                                       ; preds = %1
  %or_cond4 = and i1 %uart_to_coordinates_previous_i, %tmp_2
  br i1 %or_cond4, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 1)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 1)
  br label %7

._crit_edge:                                      ; preds = %2
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 0)
  br label %6

.critedge:                                        ; preds = %1
  br i1 %tmp_2, label %5, label %4

; <label>:4                                       ; preds = %.critedge
  %tmp_4 = add i16 %t_V, 1
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 %tmp_4)
  br label %5

; <label>:5                                       ; preds = %4, %.critedge
  br label %6

; <label>:6                                       ; preds = %5, %._crit_edge
  %storemerge = phi i1 [ true, %5 ], [ false, %._crit_edge ]
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 %storemerge)
  br label %7

; <label>:7                                       ; preds = %6, %3
  br label %19

; <label>:8                                       ; preds = %0
  %tmp_1 = icmp eq i4 %uart_to_coordinates_uart_state, 1
  %uart_to_coordinates_next_out_b = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %uart_to_coordinates_next_out_byte_V)
  br i1 %tmp_1, label %9, label %16

; <label>:9                                       ; preds = %8
  br i1 %uart_to_coordinates_current_in_1, label %.critedge363, label %10

; <label>:10                                      ; preds = %9
  %tmp_7 = icmp ugt i16 %t_V, 1350
  br i1 %tmp_7, label %11, label %._crit_edge355

; <label>:11                                      ; preds = %10
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 2)
  %addconv = add i16 %t_V, -1299
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 %addconv)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 false)
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %uart_to_coordinates_next_out_byte_V, i8 0)
  br label %15

._crit_edge355:                                   ; preds = %10
  %tmp_8 = add i16 %t_V, 1
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 %tmp_8)
  br label %14

.critedge363:                                     ; preds = %9
  %tmp_6 = icmp ult i16 %t_V, 1350
  %tmp_s = icmp ugt i16 %t_V, 1250
  %or_cond = and i1 %tmp_6, %tmp_s
  br i1 %or_cond, label %12, label %._crit_edge357

; <label>:12                                      ; preds = %.critedge363
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 2)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 1)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 true)
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %uart_to_coordinates_next_out_byte_V, i8 0)
  br label %13

._crit_edge357:                                   ; preds = %.critedge363
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 0)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 1)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 true)
  br label %13

; <label>:13                                      ; preds = %._crit_edge357, %12
  br label %14

; <label>:14                                      ; preds = %13, %._crit_edge355
  br label %15

; <label>:15                                      ; preds = %14, %11
  br label %18

; <label>:16                                      ; preds = %8
  %tmp_10 = icmp eq i4 %uart_to_coordinates_uart_state, -1
  %tmp_12 = icmp eq i4 %uart_to_coordinates_uart_state, -2
  %tmp_14 = or i1 %tmp_12, %tmp_10
  %tmp_15 = icmp eq i4 %uart_to_coordinates_uart_state, -3
  %tmp_16 = or i1 %tmp_15, %tmp_14
  %tmp_17 = icmp eq i4 %uart_to_coordinates_uart_state, -4
  %tmp_18 = or i1 %tmp_17, %tmp_16
  %tmp_19 = icmp eq i4 %uart_to_coordinates_uart_state, -5
  %tmp_20 = or i1 %tmp_19, %tmp_18
  %tmp_21 = icmp eq i4 %uart_to_coordinates_uart_state, -6
  %tmp_22 = or i1 %tmp_21, %tmp_20
  %tmp_23 = icmp eq i4 %uart_to_coordinates_uart_state, 0
  %tmp_24 = or i1 %tmp_23, %tmp_22
  br i1 %tmp_24, label %._crit_edge359, label %17

; <label>:17                                      ; preds = %16
  %tmp_i1 = xor i1 %uart_to_coordinates_previous_i, %uart_to_coordinates_current_in_1
  %tmp_i1_10 = icmp ult i16 %t_V, 1350
  %tmp_52_i = icmp ugt i16 %t_V, 1250
  %tmp_53_i = icmp ugt i16 %t_V, 1350
  %lhs_V_1_i_cast = zext i4 %uart_to_coordinates_uart_state to i5
  %r_V_4 = add i5 -2, %lhs_V_1_i_cast
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %r_V_4, i32 4)
  %tmp_56_i = zext i1 %uart_to_coordinates_previous_i to i32
  %tmp_56_i_cast = zext i1 %uart_to_coordinates_previous_i to i5
  %tmp_57_i = sub i5 2, %lhs_V_1_i_cast
  %tmp_58_i = lshr i5 %tmp_56_i_cast, %tmp_57_i
  %tmp_60_i = sext i5 %r_V_4 to i32
  %tmp_61_i = shl i32 %tmp_56_i, %tmp_60_i
  %tmp_63_i = zext i1 %uart_to_coordinates_current_in_1 to i32
  %tmp_63_i_cast = zext i1 %uart_to_coordinates_current_in_1 to i5
  %tmp_65_i = lshr i5 %tmp_63_i_cast, %tmp_57_i
  %tmp_68_i = shl i32 %tmp_63_i, %tmp_60_i
  %tmp_5 = zext i5 %tmp_58_i to i8
  %tmp_26 = trunc i32 %tmp_61_i to i8
  %r_V = select i1 %tmp_25, i8 %tmp_5, i8 %tmp_26
  %tmp_70_i = add i4 1, %uart_to_coordinates_uart_state
  %tmp_11 = zext i5 %tmp_65_i to i8
  %tmp_27 = trunc i32 %tmp_68_i to i8
  %r_V_1 = select i1 %tmp_25, i8 %tmp_11, i8 %tmp_27
  %sel_tmp_i = xor i1 %tmp_i1, true
  %sel_tmp1_i = and i1 %tmp_53_i, %sel_tmp_i
  %sel_tmp2_v_i_cast_cast = select i1 %sel_tmp1_i, i16 -1299, i16 1
  %sel_tmp2_i = add i16 %t_V, %sel_tmp2_v_i_cast_cast
  %sel_tmp3_demorgan_i = and i1 %tmp_i1_10, %tmp_52_i
  %sel_tmp3_i = xor i1 %sel_tmp3_demorgan_i, true
  %sel_tmp4_i = and i1 %tmp_i1, %sel_tmp3_i
  %tmp1 = and i1 %tmp_52_i, %tmp_i1
  %sel_tmp6_i = and i1 %tmp1, %tmp_i1_10
  %tmp_13 = or i1 %sel_tmp6_i, %sel_tmp4_i
  %uart_to_coordinates_count_V_wr = select i1 %tmp_13, i16 1, i16 %sel_tmp2_i
  %sel_tmp13_i = select i1 %sel_tmp4_i, i1 %uart_to_coordinates_current_in_1, i1 %uart_to_coordinates_previous_i
  %uart_to_coordinates_previous_i_1 = select i1 %sel_tmp6_i, i1 %uart_to_coordinates_current_in_1, i1 %sel_tmp13_i
  %newSel = select i1 %sel_tmp6_i, i4 %tmp_70_i, i4 0
  %newSel1 = select i1 %sel_tmp1_i, i4 %tmp_70_i, i4 %uart_to_coordinates_uart_state
  %uart_to_coordinates_uart_state_1 = select i1 %tmp_13, i4 %newSel, i4 %newSel1
  %newSel3 = select i1 %sel_tmp6_i, i8 %r_V, i8 0
  %newSel4 = select i1 %sel_tmp1_i, i8 %r_V_1, i8 0
  %newSel5 = select i1 %tmp_13, i8 %newSel3, i8 %newSel4
  %uart_to_coordinates_next_out_b_1 = or i8 %uart_to_coordinates_next_out_b, %newSel5
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 %uart_to_coordinates_count_V_wr)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 %uart_to_coordinates_previous_i_1)
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 %uart_to_coordinates_uart_state_1)
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %uart_to_coordinates_next_out_byte_V, i8 %uart_to_coordinates_next_out_b_1)
  br label %._crit_edge361

._crit_edge359:                                   ; preds = %16
  %tmp_9 = icmp ugt i4 %uart_to_coordinates_uart_state, -7
  %tmp_3 = icmp ult i4 %uart_to_coordinates_uart_state, -3
  %or_cond3 = and i1 %tmp_9, %tmp_3
  br i1 %or_cond3, label %_ifconv, label %._crit_edge361

_ifconv:                                          ; preds = %._crit_edge359
  %tmp_i = icmp ugt i16 %t_V, 1350
  %tmp_i_11 = icmp ult i16 %t_V, 1350
  %tmp_11_i = icmp ugt i16 %t_V, 1250
  %addconv_i = add i16 %t_V, -1299
  %tmp_12_i = add i16 %t_V, 1
  %uart_to_coordinates_current_in = xor i1 %uart_to_coordinates_current_in_1, true
  %sel_tmp3 = xor i1 %tmp_i, true
  %sel_tmp4 = and i1 %uart_to_coordinates_current_in_1, %sel_tmp3
  %sel_tmp7 = or i1 %tmp_i, %uart_to_coordinates_current_in
  %tmp2 = and i1 %tmp_11_i, %uart_to_coordinates_current_in
  %sel_tmp9 = and i1 %tmp2, %tmp_i_11
  %sel_tmp = and i1 %tmp_i, %uart_to_coordinates_current_in_1
  %uart_to_coordinates_uart_state_2 = or i1 %sel_tmp9, %sel_tmp
  %uart_to_coordinates_uart_state_3 = zext i1 %uart_to_coordinates_uart_state_2 to i4
  %sel_tmp1 = select i1 %sel_tmp, i8 %uart_to_coordinates_next_out_b, i8 %uart_to_coordinates_current_ou_2
  %uart_to_coordinates_current_ou = select i1 %sel_tmp9, i8 %uart_to_coordinates_next_out_b, i8 %sel_tmp1
  %newSel6 = select i1 %sel_tmp9, i16 1, i16 %addconv_i
  %newSel7 = select i1 %sel_tmp4, i16 %tmp_12_i, i16 1
  %uart_to_coordinates_count_V_wr_1 = select i1 %uart_to_coordinates_uart_state_2, i16 %newSel6, i16 %newSel7
  %uart_to_coordinates_previous_i_2 = select i1 %sel_tmp7, i1 %sel_tmp, i1 %uart_to_coordinates_previous_i
  %uart_to_coordinates_uart_state_4 = select i1 %sel_tmp7, i4 %uart_to_coordinates_uart_state_3, i4 %uart_to_coordinates_uart_state
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %uart_to_coordinates_count_V, i16 %uart_to_coordinates_count_V_wr_1)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %uart_to_coordinates_previous_input_V, i1 %uart_to_coordinates_previous_i_2)
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %uart_to_coordinates_uart_state_V, i4 %uart_to_coordinates_uart_state_4)
  br label %20

._crit_edge361:                                   ; preds = %._crit_edge359, %17
  br label %18

; <label>:18                                      ; preds = %._crit_edge361, %15
  br label %19

; <label>:19                                      ; preds = %18, %7
  br label %20

; <label>:20                                      ; preds = %19, %_ifconv
  %uart_to_coordinates_current_ou_1 = phi i8 [ %uart_to_coordinates_current_ou_2, %19 ], [ %uart_to_coordinates_current_ou, %_ifconv ]
  %p_s = phi i1 [ false, %19 ], [ %uart_to_coordinates_uart_state_2, %_ifconv ]
  %mrv = insertvalue { i1, i8 } undef, i1 %p_s, 0
  %mrv_1 = insertvalue { i1, i8 } %mrv, i8 %uart_to_coordinates_current_ou_1, 1
  ret { i1, i8 } %mrv_1
}

define void @master_ip(i1* %uart1_V, i1* %uart2_V, i1* %alert_V, i8* %axi_byte_V) {
_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %uart1_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %uart2_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %alert_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %axi_byte_V), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @master_ip_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %uart1_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %axi_byte_V, [10 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %alert_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %uart2_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  %uart1_V_read = call i1 @_ssdm_op_Read.ap_none.i1P(i1* %uart1_V)
  %signal1_ck_a_V_load = load i8* @signal1_ck_a_V, align 1
  %signal1_ck_b_V_load = load i8* @signal1_ck_b_V, align 1
  %signal1_current_out_byte_V_loa = load i8* @signal1_current_out_byte_V, align 1
  %signal1_gnss_state_V_load = load i6* @signal1_gnss_state_V, align 1
  %coordinates1_0_load = load i32* @coordinates1_0, align 4
  %coordinates1_1_load = load i32* @coordinates1_1, align 4
  %coordinates1_2_load = load i32* @coordinates1_2, align 4
  %call_ret = call fastcc { i8, i8, i8, i6, i32, i32, i32 } @master_ip_mainFunction(i16* @signal1_count_V, i1* @signal1_previous_input_V, i4* @signal1_uart_state_V, i8* @signal1_next_out_byte_V, i8 %signal1_current_out_byte_V_loa, i6 %signal1_gnss_state_V_load, i8 %signal1_ck_a_V_load, i8 %signal1_ck_b_V_load, i32* @signal1_tempCoordinates_0, i32* @signal1_tempCoordinates_1, i32* @signal1_tempCoordinates_2, i1 %uart1_V_read, i32 %coordinates1_0_load, i32 %coordinates1_1_load, i32 %coordinates1_2_load)
  %newret = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 0
  %newret4 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 1
  %newret5 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 2
  %newret6 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 3
  %newret7 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 4
  %newret8 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 5
  %newret9 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret, 6
  store i32 %newret7, i32* @coordinates1_0, align 4
  store i32 %newret8, i32* @coordinates1_1, align 4
  store i32 %newret9, i32* @coordinates1_2, align 4
  store i8 %newret5, i8* @signal1_current_out_byte_V, align 1
  store i6 %newret6, i6* @signal1_gnss_state_V, align 1
  store i8 %newret, i8* @signal1_ck_a_V, align 1
  store i8 %newret4, i8* @signal1_ck_b_V, align 1
  %uart2_V_read = call i1 @_ssdm_op_Read.ap_none.i1P(i1* %uart2_V)
  %signal2_ck_a_V_load = load i8* @signal2_ck_a_V, align 1
  %signal2_ck_b_V_load = load i8* @signal2_ck_b_V, align 1
  %signal2_current_out_byte_V_loa = load i8* @signal2_current_out_byte_V, align 1
  %signal2_gnss_state_V_load = load i6* @signal2_gnss_state_V, align 1
  %coordinates2_0_load = load i32* @coordinates2_0, align 4
  %coordinates2_1_load = load i32* @coordinates2_1, align 4
  %coordinates2_2_load = load i32* @coordinates2_2, align 4
  %call_ret1 = call fastcc { i8, i8, i8, i6, i32, i32, i32 } @master_ip_mainFunction(i16* @signal2_count_V, i1* @signal2_previous_input_V, i4* @signal2_uart_state_V, i8* @signal2_next_out_byte_V, i8 %signal2_current_out_byte_V_loa, i6 %signal2_gnss_state_V_load, i8 %signal2_ck_a_V_load, i8 %signal2_ck_b_V_load, i32* @signal2_tempCoordinates_0, i32* @signal2_tempCoordinates_1, i32* @signal2_tempCoordinates_2, i1 %uart2_V_read, i32 %coordinates2_0_load, i32 %coordinates2_1_load, i32 %coordinates2_2_load)
  %newret1 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 0
  %newret2 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 1
  %newret3 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 2
  %newret10 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 3
  %newret11 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 4
  %newret12 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 5
  %newret13 = extractvalue { i8, i8, i8, i6, i32, i32, i32 } %call_ret1, 6
  store i32 %newret11, i32* @coordinates2_0, align 4
  store i32 %newret12, i32* @coordinates2_1, align 4
  store i32 %newret13, i32* @coordinates2_2, align 4
  store i8 %newret3, i8* @signal2_current_out_byte_V, align 1
  store i6 %newret10, i6* @signal2_gnss_state_V, align 1
  store i8 %newret1, i8* @signal2_ck_a_V, align 1
  store i8 %newret2, i8* @signal2_ck_b_V, align 1
  %tmp_i = sub nsw i32 %newret7, %newret11
  %tmp_i_12 = sitofp i32 %tmp_i to double
  %tmp_95_i = fmul double %tmp_i_12, %tmp_i_12
  %tmp_96_i = sub nsw i32 %newret8, %newret12
  %tmp_97_i = sitofp i32 %tmp_96_i to double
  %tmp_98_i = fmul double %tmp_97_i, %tmp_97_i
  %tmp_99_i = fadd double %tmp_95_i, %tmp_98_i
  %tmp_100_i = sub nsw i32 %newret9, %newret13
  %tmp_101_i = sitofp i32 %tmp_100_i to double
  %tmp_102_i = fmul double %tmp_101_i, %tmp_101_i
  %tmp_103_i = fadd double %tmp_99_i, %tmp_102_i
  %x_assign = call double @llvm.sqrt.f64(double %tmp_103_i) nounwind
  %p_Val2_s = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i_i = zext i53 %p_Result_1 to i136
  %tmp_i_i_i_i_cast1 = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_i_13 = sub i11 1023, %loc_V
  %tmp_i_i_i_cast = sext i11 %tmp_i_i_i_13 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_88_i_i_i = zext i32 %sh_assign_1_cast to i136
  %tmp_88_i_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_89_i_i_i = lshr i53 %p_Result_1, %tmp_88_i_i_i_cast
  %tmp_91_i_i_i = shl i136 %tmp_i_i_i, %tmp_88_i_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_89_i_i_i, i32 52)
  %tmp_3 = zext i1 %tmp to i32
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_91_i_i_i, i32 52, i32 83)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_3, i32 %tmp_4
  %p_Val2_7_i_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_7_i_i_i, i32 %p_Val2_3
  %tmp_s = icmp sgt i32 %p_Val2_5, 1000
  call void @_ssdm_op_Write.ap_none.i1P(i1* %alert_V, i1 %tmp_s)
  ret void
}

define internal fastcc { i8, i8, i8, i6, i32, i32, i32 } @master_ip_mainFunction(i16* nocapture %uart_to_coordinates_count_V, i1* nocapture %uart_to_coordinates_previous_input_V, i4* nocapture %uart_to_coordinates_uart_state_V, i8* nocapture %uart_to_coordinates_next_out_byte_V, i8 %uart_to_coordinates_current_out_byte_V_read, i6 %uart_to_coordinates_gnss_state_V_read, i8 %uart_to_coordinates_ck_a_V_read, i8 %uart_to_coordinates_ck_b_V_read, i32* nocapture %uart_to_coordinates_tempCoordinates_0, i32* nocapture %uart_to_coordinates_tempCoordinates_1, i32* nocapture %uart_to_coordinates_tempCoordinates_2, i1 %input_V_read, i32 %p_read, i32 %p_read2, i32 %p_read5) {
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5)
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2)
  %p_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  %input_V_read_1 = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %input_V_read)
  %uart_to_coordinates_ck_b_V_rea_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_ck_b_V_read)
  %uart_to_coordinates_ck_a_V_rea_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_ck_a_V_read)
  %uart_to_coordinates_gnss_state_1 = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %uart_to_coordinates_gnss_state_V_read)
  %uart_to_coordinates_current_ou_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_current_out_byte_V_read)
  %call_ret6 = call fastcc { i1, i8 } @master_ip_uart_to_byte(i16* %uart_to_coordinates_count_V, i1* %uart_to_coordinates_previous_input_V, i1 %input_V_read_1, i4* %uart_to_coordinates_uart_state_V, i8* %uart_to_coordinates_next_out_byte_V, i8 %uart_to_coordinates_current_ou_3)
  %tmp = extractvalue { i1, i8 } %call_ret6, 0
  %uart_to_coordinates_current_ou = extractvalue { i1, i8 } %call_ret6, 1
  br i1 %tmp, label %_ifconv, label %._crit_edge

_ifconv:                                          ; preds = %0
  %tmp_i = add i8 %uart_to_coordinates_current_ou, %uart_to_coordinates_ck_a_V_rea_1
  %tmp_85_i = add i8 %tmp_i, %uart_to_coordinates_ck_b_V_rea_1
  %tmp_86_i = icmp ugt i6 %uart_to_coordinates_gnss_state_1, -7
  %tmp_87_i = icmp ult i6 %uart_to_coordinates_gnss_state_1, -4
  %or_cond4_i = and i1 %tmp_86_i, %tmp_87_i
  %uart_to_coordinates_ck_a_V_rea = select i1 %or_cond4_i, i8 %uart_to_coordinates_ck_a_V_rea_1, i8 0
  %uart_to_coordinates_ck_b_V_rea = select i1 %or_cond4_i, i8 %uart_to_coordinates_ck_b_V_rea_1, i8 0
  %sel_tmp = icmp eq i6 %uart_to_coordinates_gnss_state_1, -1
  %sel_tmp1 = icmp eq i6 %uart_to_coordinates_gnss_state_1, -2
  %sel_tmp2 = icmp eq i6 %uart_to_coordinates_gnss_state_1, -3
  %sel_tmp3 = icmp eq i6 %uart_to_coordinates_gnss_state_1, -4
  %sel_tmp4 = icmp eq i6 %uart_to_coordinates_gnss_state_1, -5
  %sel_tmp5 = icmp eq i6 %uart_to_coordinates_gnss_state_1, -6
  %sel_tmp6 = icmp eq i6 %uart_to_coordinates_gnss_state_1, 1
  %sel_tmp7 = icmp eq i6 %uart_to_coordinates_gnss_state_1, 0
  %tmp6 = or i1 %sel_tmp5, %sel_tmp6
  %tmp7 = or i1 %sel_tmp4, %sel_tmp3
  %tmp8 = or i1 %tmp7, %tmp6
  %tmp9 = or i1 %sel_tmp, %sel_tmp2
  %tmp10 = or i1 %sel_tmp1, %sel_tmp7
  %tmp11 = or i1 %tmp10, %tmp9
  %sel_tmp8 = or i1 %tmp11, %tmp8
  %uart_to_coordinates_ck_a_V_1_i = select i1 %sel_tmp8, i8 %uart_to_coordinates_ck_a_V_rea, i8 %tmp_i
  %uart_to_coordinates_ck_b_V_1_i = select i1 %sel_tmp8, i8 %uart_to_coordinates_ck_b_V_rea, i8 %tmp_85_i
  %call_ret5 = call fastcc { i6, i32, i32, i32 } @master_ip_get_gps_info_from_ubx(i8 %uart_to_coordinates_current_ou, i6 %uart_to_coordinates_gnss_state_1, i8 %uart_to_coordinates_ck_a_V_1_i, i8 %uart_to_coordinates_ck_b_V_1_i, i32* %uart_to_coordinates_tempCoordinates_0, i32* %uart_to_coordinates_tempCoordinates_1, i32* %uart_to_coordinates_tempCoordinates_2, i32 %p_read_3, i32 %p_read_2, i32 %p_read_1)
  %call_ret2 = extractvalue { i6, i32, i32, i32 } %call_ret5, 0
  %coordinates_0_ret = extractvalue { i6, i32, i32, i32 } %call_ret5, 1
  %coordinates_1_ret = extractvalue { i6, i32, i32, i32 } %call_ret5, 2
  %coordinates_2_ret = extractvalue { i6, i32, i32, i32 } %call_ret5, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv, %0
  %coordinates = phi i32 [ %p_read_3, %0 ], [ %coordinates_0_ret, %_ifconv ]
  %coordinates_1 = phi i32 [ %p_read_2, %0 ], [ %coordinates_1_ret, %_ifconv ]
  %coordinates_2 = phi i32 [ %p_read_1, %0 ], [ %coordinates_2_ret, %_ifconv ]
  %uart_to_coordinates_ck_a_V = phi i8 [ %uart_to_coordinates_ck_a_V_rea_1, %0 ], [ %uart_to_coordinates_ck_a_V_1_i, %_ifconv ]
  %uart_to_coordinates_ck_b_V = phi i8 [ %uart_to_coordinates_ck_b_V_rea_1, %0 ], [ %uart_to_coordinates_ck_b_V_1_i, %_ifconv ]
  %uart_to_coordinates_gnss_state = phi i6 [ %uart_to_coordinates_gnss_state_1, %0 ], [ %call_ret2, %_ifconv ]
  %newret = insertvalue { i8, i8, i8, i6, i32, i32, i32 } undef, i8 %uart_to_coordinates_ck_a_V, 0
  %newret2 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret, i8 %uart_to_coordinates_ck_b_V, 1
  %newret4 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret2, i8 %uart_to_coordinates_current_ou, 2
  %newret6 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret4, i6 %uart_to_coordinates_gnss_state, 3
  %newret8 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret6, i32 %coordinates, 4
  %newret1 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret8, i32 %coordinates_1, 5
  %newret3 = insertvalue { i8, i8, i8, i6, i32, i32, i32 } %newret1, i32 %coordinates_2, 6
  ret { i8, i8, i8, i6, i32, i32, i32 } %newret3
}

declare double @llvm.sqrt.f64(double) nounwind readonly

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc { i6, i32, i32, i32 } @master_ip_get_gps_info_from_ubx(i8 %uart_to_coordinates_current_out_byte_V_read, i6 %uart_to_coordinates_gnss_state_V_read, i8 %uart_to_coordinates_ck_a_V_read, i8 %uart_to_coordinates_ck_b_V_read, i32* nocapture %uart_to_coordinates_tempCoordinates_0, i32* nocapture %uart_to_coordinates_tempCoordinates_1, i32* nocapture %uart_to_coordinates_tempCoordinates_2, i32 %p_read1, i32 %p_read4, i32 %p_read5) {
  %p_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5)
  %p_read_4 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read4)
  %p_read_5 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1)
  %uart_to_coordinates_ck_b_V_rea = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_ck_b_V_read)
  %uart_to_coordinates_ck_a_V_rea = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_ck_a_V_read)
  %uart_to_coordinates_gnss_state_2 = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %uart_to_coordinates_gnss_state_V_read)
  %uart_to_coordinates_current_ou = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %uart_to_coordinates_current_out_byte_V_read)
  %tmp = icmp eq i6 %uart_to_coordinates_gnss_state_2, 0
  %tmp_s = icmp eq i8 %uart_to_coordinates_current_ou, -75
  %or_cond = and i1 %tmp, %tmp_s
  br i1 %or_cond, label %._crit_edge454, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %tmp_1 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 1
  %tmp_2 = icmp eq i8 %uart_to_coordinates_current_ou, 98
  %or_cond1 = and i1 %tmp_1, %tmp_2
  br i1 %or_cond1, label %._crit_edge454, label %._crit_edge456

._crit_edge456:                                   ; preds = %._crit_edge
  %tmp_3 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 2
  %tmp_4 = icmp eq i8 %uart_to_coordinates_current_ou, 1
  %or_cond2 = and i1 %tmp_3, %tmp_4
  br i1 %or_cond2, label %._crit_edge454, label %._crit_edge459

._crit_edge459:                                   ; preds = %._crit_edge456
  %tmp_5 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 3
  %tmp_6 = icmp eq i8 %uart_to_coordinates_current_ou, 6
  %or_cond3 = and i1 %tmp_5, %tmp_6
  br i1 %or_cond3, label %._crit_edge454, label %._crit_edge462

._crit_edge462:                                   ; preds = %._crit_edge459
  %tmp_7 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 4
  %tmp_8 = icmp eq i8 %uart_to_coordinates_current_ou, 52
  %or_cond4 = and i1 %tmp_7, %tmp_8
  br i1 %or_cond4, label %._crit_edge454, label %._crit_edge465

._crit_edge465:                                   ; preds = %._crit_edge462
  %tmp_9 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 5
  %tmp_10 = icmp eq i8 %uart_to_coordinates_current_ou, 0
  %or_cond5 = and i1 %tmp_9, %tmp_10
  br i1 %or_cond5, label %._crit_edge454, label %._crit_edge468

._crit_edge468:                                   ; preds = %._crit_edge465
  %tmp_11 = icmp ugt i6 %uart_to_coordinates_gnss_state_2, 5
  %tmp_49 = call i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6 %uart_to_coordinates_gnss_state_2, i32 4, i32 5)
  %icmp = icmp eq i2 %tmp_49, 0
  %or_cond6 = and i1 %tmp_11, %icmp
  br i1 %or_cond6, label %._crit_edge454, label %._crit_edge471

._crit_edge471:                                   ; preds = %._crit_edge468
  %tmp_13 = icmp ugt i6 %uart_to_coordinates_gnss_state_2, 29
  %tmp_14 = icmp ult i6 %uart_to_coordinates_gnss_state_2, -6
  %or_cond7 = and i1 %tmp_13, %tmp_14
  br i1 %or_cond7, label %._crit_edge454, label %._crit_edge474

._crit_edge474:                                   ; preds = %._crit_edge471
  %tmp_15 = icmp eq i6 %uart_to_coordinates_gnss_state_2, -6
  %tmp_16 = icmp eq i8 %uart_to_coordinates_current_ou, %uart_to_coordinates_ck_a_V_rea
  %or_cond8 = and i1 %tmp_15, %tmp_16
  br i1 %or_cond8, label %._crit_edge454, label %._crit_edge477

._crit_edge477:                                   ; preds = %._crit_edge474
  %tmp_17 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 16
  %tmp_50 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %uart_to_coordinates_current_ou, i32 1, i32 7)
  %icmp1 = icmp ne i7 %tmp_50, 0
  %tmp_18 = icmp ult i8 %uart_to_coordinates_current_ou, 5
  %tmp1 = and i1 %icmp1, %tmp_18
  %or_cond9 = and i1 %tmp1, %tmp_17
  br i1 %or_cond9, label %._crit_edge454, label %._crit_edge480

._crit_edge480:                                   ; preds = %._crit_edge477
  %tmp_19 = icmp eq i6 %uart_to_coordinates_gnss_state_2, 17
  br i1 %tmp_19, label %._crit_edge454, label %1

._crit_edge454:                                   ; preds = %._crit_edge480, %._crit_edge477, %._crit_edge474, %._crit_edge471, %._crit_edge468, %._crit_edge465, %._crit_edge462, %._crit_edge459, %._crit_edge456, %._crit_edge, %0
  %tmp_20 = phi i6 [ %uart_to_coordinates_gnss_state_2, %._crit_edge480 ], [ 0, %0 ], [ 1, %._crit_edge ], [ 2, %._crit_edge456 ], [ 3, %._crit_edge459 ], [ 4, %._crit_edge462 ], [ 5, %._crit_edge465 ], [ %uart_to_coordinates_gnss_state_2, %._crit_edge468 ], [ %uart_to_coordinates_gnss_state_2, %._crit_edge471 ], [ -6, %._crit_edge474 ], [ 16, %._crit_edge477 ]
  %tmp_21 = add i6 %tmp_20, 1
  br label %5

; <label>:1                                       ; preds = %._crit_edge480
  %tmp_22 = icmp ugt i6 %uart_to_coordinates_gnss_state_2, 17
  %tmp_23 = icmp ult i6 %uart_to_coordinates_gnss_state_2, 22
  %or_cond10 = and i1 %tmp_22, %tmp_23
  %uart_to_coordinates_tempCoordi = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_0)
  br i1 %or_cond10, label %2, label %._crit_edge485

; <label>:2                                       ; preds = %1
  %tmp_24 = zext i8 %uart_to_coordinates_current_ou to i32
  %tmp_51 = trunc i6 %uart_to_coordinates_gnss_state_2 to i5
  %tmp_25 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_51, i3 0)
  %tmp_27_cast = zext i8 %tmp_25 to i9
  %tmp_26 = add i9 -144, %tmp_27_cast
  %tmp_28_cast = sext i9 %tmp_26 to i32
  %tmp_27 = shl i32 %tmp_24, %tmp_28_cast
  %tmp_28 = or i32 %uart_to_coordinates_tempCoordi, %tmp_27
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_0, i32 %tmp_28)
  %tmp_29 = add i6 1, %uart_to_coordinates_gnss_state_2
  br label %5

._crit_edge485:                                   ; preds = %1
  %tmp_30 = icmp ugt i6 %uart_to_coordinates_gnss_state_2, 21
  %tmp_31 = icmp ult i6 %uart_to_coordinates_gnss_state_2, 26
  %or_cond11 = and i1 %tmp_30, %tmp_31
  %uart_to_coordinates_tempCoordi_1 = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_1)
  br i1 %or_cond11, label %3, label %._crit_edge487

; <label>:3                                       ; preds = %._crit_edge485
  %tmp_32 = zext i8 %uart_to_coordinates_current_ou to i32
  %tmp_52 = trunc i6 %uart_to_coordinates_gnss_state_2 to i5
  %tmp_33 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_52, i3 0)
  %tmp_36_cast = zext i8 %tmp_33 to i9
  %tmp_34 = add i9 -176, %tmp_36_cast
  %tmp_37_cast = sext i9 %tmp_34 to i32
  %tmp_35 = shl i32 %tmp_32, %tmp_37_cast
  %tmp_36 = or i32 %uart_to_coordinates_tempCoordi_1, %tmp_35
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_1, i32 %tmp_36)
  %tmp_37 = add i6 1, %uart_to_coordinates_gnss_state_2
  br label %5

._crit_edge487:                                   ; preds = %._crit_edge485
  %tmp_38 = icmp ugt i6 %uart_to_coordinates_gnss_state_2, 25
  %tmp_39 = icmp ult i6 %uart_to_coordinates_gnss_state_2, 30
  %or_cond12 = and i1 %tmp_38, %tmp_39
  %uart_to_coordinates_tempCoordi_2 = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_2)
  br i1 %or_cond12, label %4, label %._crit_edge489

; <label>:4                                       ; preds = %._crit_edge487
  %tmp_40 = zext i8 %uart_to_coordinates_current_ou to i32
  %tmp_53 = trunc i6 %uart_to_coordinates_gnss_state_2 to i5
  %tmp_41 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_53, i3 0)
  %tmp_45_cast = zext i8 %tmp_41 to i9
  %tmp_42 = add i9 -208, %tmp_45_cast
  %tmp_46_cast = sext i9 %tmp_42 to i32
  %tmp_43 = shl i32 %tmp_40, %tmp_46_cast
  %tmp_44 = or i32 %uart_to_coordinates_tempCoordi_2, %tmp_43
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_2, i32 %tmp_44)
  %tmp_45 = add i6 1, %uart_to_coordinates_gnss_state_2
  br label %5

._crit_edge489:                                   ; preds = %._crit_edge487
  %tmp_46 = icmp eq i6 %uart_to_coordinates_gnss_state_2, -5
  %tmp_47 = icmp eq i8 %uart_to_coordinates_current_ou, %uart_to_coordinates_ck_b_V_rea
  %or_cond13 = and i1 %tmp_46, %tmp_47
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_0, i32 0)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_1, i32 0)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %uart_to_coordinates_tempCoordinates_2, i32 0)
  br label %5

; <label>:5                                       ; preds = %._crit_edge489, %4, %3, %2, %._crit_edge454
  %write_flag3_1 = phi i1 [ false, %._crit_edge454 ], [ false, %2 ], [ false, %3 ], [ false, %4 ], [ %or_cond13, %._crit_edge489 ]
  %coordinates_0_1 = phi i32 [ undef, %._crit_edge454 ], [ undef, %2 ], [ undef, %3 ], [ undef, %4 ], [ %uart_to_coordinates_tempCoordi, %._crit_edge489 ]
  %coordinates_1_1 = phi i32 [ undef, %._crit_edge454 ], [ undef, %2 ], [ undef, %3 ], [ undef, %4 ], [ %uart_to_coordinates_tempCoordi_1, %._crit_edge489 ]
  %coordinates_2_1 = phi i32 [ undef, %._crit_edge454 ], [ undef, %2 ], [ undef, %3 ], [ undef, %4 ], [ %uart_to_coordinates_tempCoordi_2, %._crit_edge489 ]
  %uart_to_coordinates_gnss_state = phi i6 [ %tmp_21, %._crit_edge454 ], [ %tmp_29, %2 ], [ %tmp_37, %3 ], [ %tmp_45, %4 ], [ 0, %._crit_edge489 ]
  %mrv_sel = select i1 %write_flag3_1, i32 %coordinates_0_1, i32 %p_read_5
  %mrv_sel1 = select i1 %write_flag3_1, i32 %coordinates_1_1, i32 %p_read_4
  %mrv_sel2 = select i1 %write_flag3_1, i32 %coordinates_2_1, i32 %p_read
  %mrv = insertvalue { i6, i32, i32, i32 } undef, i6 %uart_to_coordinates_gnss_state, 0
  %mrv_1 = insertvalue { i6, i32, i32, i32 } %mrv, i32 %mrv_sel, 1
  %mrv_2 = insertvalue { i6, i32, i32, i32 } %mrv_1, i32 %mrv_sel1, 2
  %mrv_3 = insertvalue { i6, i32, i32, i32 } %mrv_2, i32 %mrv_sel2, 3
  ret { i6, i32, i32, i32 } %mrv_3
}

define weak void @_ssdm_op_Write.ap_none.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i4 @_ssdm_op_Read.ap_auto.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0
  ret i16 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_14 = trunc i8 %empty to i7
  ret i7 %empty_14
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_15 = trunc i136 %empty to i32
  ret i32 %empty_15
}

define weak i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_16 = trunc i6 %empty to i2
  ret i2 %empty_16
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_17 = trunc i64 %empty to i11
  ret i11 %empty_17
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_18 = shl i64 1, %empty
  %empty_19 = and i64 %0, %empty_18
  %empty_20 = icmp ne i64 %empty_19, 0
  ret i1 %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_21 = shl i53 1, %empty
  %empty_22 = and i53 %0, %empty_21
  %empty_23 = icmp ne i53 %empty_22, 0
  ret i1 %empty_23
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_24 = shl i5 1, %empty
  %empty_25 = and i5 %0, %empty_24
  %empty_26 = icmp ne i5 %empty_25, 0
  ret i1 %empty_26
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_27 = shl i12 1, %empty
  %empty_28 = and i12 %0, %empty_27
  %empty_29 = icmp ne i12 %empty_28, 0
  ret i1 %empty_29
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_30 = zext i3 %1 to i8
  %empty_31 = shl i8 %empty, 3
  %empty_32 = or i8 %empty_31, %empty_30
  ret i8 %empty_32
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_33 = zext i52 %1 to i53
  %empty_34 = shl i53 %empty, 52
  %empty_35 = or i53 %empty_34, %empty_33
  ret i53 %empty_35
}

declare void @_GLOBAL__I_a5() nounwind

declare void @_GLOBAL__I_a20() nounwind

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [3 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"uart1.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"uart2.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"alert.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"axi_byte.V", metadata !11, metadata !"uint8", i32 0, i32 7}
