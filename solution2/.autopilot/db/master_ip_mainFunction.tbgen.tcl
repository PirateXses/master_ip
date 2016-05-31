set moduleName master_ip_mainFunction
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {master_ip_mainFunction}
set C_modelType { int 126 }
set C_modelArgList { 
	{ uart_to_coordinates_count_V int 16 regular {pointer 2}  }
	{ uart_to_coordinates_previous_input_V int 1 regular {pointer 2}  }
	{ uart_to_coordinates_uart_state_V int 4 regular {pointer 2}  }
	{ uart_to_coordinates_next_out_byte_V int 8 regular {pointer 2}  }
	{ uart_to_coordinates_current_out_byte_V_read int 8 regular  }
	{ uart_to_coordinates_gnss_state_V_read int 6 regular  }
	{ uart_to_coordinates_ck_a_V_read int 8 regular  }
	{ uart_to_coordinates_ck_b_V_read int 8 regular  }
	{ uart_to_coordinates_tempCoordinates_0 int 32 regular {pointer 2}  }
	{ uart_to_coordinates_tempCoordinates_1 int 32 regular {pointer 2}  }
	{ uart_to_coordinates_tempCoordinates_2 int 32 regular {pointer 2}  }
	{ input_V_read int 1 regular  }
	{ p_read int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read5 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "uart_to_coordinates_count_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_previous_input_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_uart_state_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_next_out_byte_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_current_out_byte_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "uart_to_coordinates_gnss_state_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "uart_to_coordinates_ck_a_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "uart_to_coordinates_ck_b_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "uart_to_coordinates_tempCoordinates_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_tempCoordinates_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_tempCoordinates_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "input_V_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 126} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ uart_to_coordinates_count_V_i sc_in sc_lv 16 signal 0 } 
	{ uart_to_coordinates_count_V_o sc_out sc_lv 16 signal 0 } 
	{ uart_to_coordinates_count_V_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ uart_to_coordinates_previous_input_V_i sc_in sc_lv 1 signal 1 } 
	{ uart_to_coordinates_previous_input_V_o sc_out sc_lv 1 signal 1 } 
	{ uart_to_coordinates_previous_input_V_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ uart_to_coordinates_uart_state_V_i sc_in sc_lv 4 signal 2 } 
	{ uart_to_coordinates_uart_state_V_o sc_out sc_lv 4 signal 2 } 
	{ uart_to_coordinates_uart_state_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ uart_to_coordinates_next_out_byte_V_i sc_in sc_lv 8 signal 3 } 
	{ uart_to_coordinates_next_out_byte_V_o sc_out sc_lv 8 signal 3 } 
	{ uart_to_coordinates_next_out_byte_V_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ uart_to_coordinates_current_out_byte_V_read sc_in sc_lv 8 signal 4 } 
	{ uart_to_coordinates_gnss_state_V_read sc_in sc_lv 6 signal 5 } 
	{ uart_to_coordinates_ck_a_V_read sc_in sc_lv 8 signal 6 } 
	{ uart_to_coordinates_ck_b_V_read sc_in sc_lv 8 signal 7 } 
	{ uart_to_coordinates_tempCoordinates_0_i sc_in sc_lv 32 signal 8 } 
	{ uart_to_coordinates_tempCoordinates_0_o sc_out sc_lv 32 signal 8 } 
	{ uart_to_coordinates_tempCoordinates_0_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ uart_to_coordinates_tempCoordinates_1_i sc_in sc_lv 32 signal 9 } 
	{ uart_to_coordinates_tempCoordinates_1_o sc_out sc_lv 32 signal 9 } 
	{ uart_to_coordinates_tempCoordinates_1_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ uart_to_coordinates_tempCoordinates_2_i sc_in sc_lv 32 signal 10 } 
	{ uart_to_coordinates_tempCoordinates_2_o sc_out sc_lv 32 signal 10 } 
	{ uart_to_coordinates_tempCoordinates_2_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_V_read sc_in sc_lv 1 signal 11 } 
	{ p_read sc_in sc_lv 32 signal 12 } 
	{ p_read2 sc_in sc_lv 32 signal 13 } 
	{ p_read5 sc_in sc_lv 32 signal 14 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 6 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_count_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "uart_to_coordinates_count_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_count_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "uart_to_coordinates_count_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_count_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_count_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_current_out_byte_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_current_out_byte_V_read", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_gnss_state_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "uart_to_coordinates_gnss_state_V_read", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_ck_a_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_ck_a_V_read", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_ck_b_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_ck_b_V_read", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_0", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_0", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_tempCoordinates_0", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_1", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_1", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_tempCoordinates_1", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_2", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_to_coordinates_tempCoordinates_2", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_tempCoordinates_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_tempCoordinates_2", "role": "o_ap_vld" }} , 
 	{ "name": "input_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_read", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }}  ]}
set Spec2ImplPortList { 
	uart_to_coordinates_count_V { ap_ovld {  { uart_to_coordinates_count_V_i in_data 0 16 }  { uart_to_coordinates_count_V_o out_data 1 16 }  { uart_to_coordinates_count_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_previous_input_V { ap_ovld {  { uart_to_coordinates_previous_input_V_i in_data 0 1 }  { uart_to_coordinates_previous_input_V_o out_data 1 1 }  { uart_to_coordinates_previous_input_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_uart_state_V { ap_ovld {  { uart_to_coordinates_uart_state_V_i in_data 0 4 }  { uart_to_coordinates_uart_state_V_o out_data 1 4 }  { uart_to_coordinates_uart_state_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_next_out_byte_V { ap_ovld {  { uart_to_coordinates_next_out_byte_V_i in_data 0 8 }  { uart_to_coordinates_next_out_byte_V_o out_data 1 8 }  { uart_to_coordinates_next_out_byte_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_current_out_byte_V_read { ap_none {  { uart_to_coordinates_current_out_byte_V_read in_data 0 8 } } }
	uart_to_coordinates_gnss_state_V_read { ap_none {  { uart_to_coordinates_gnss_state_V_read in_data 0 6 } } }
	uart_to_coordinates_ck_a_V_read { ap_none {  { uart_to_coordinates_ck_a_V_read in_data 0 8 } } }
	uart_to_coordinates_ck_b_V_read { ap_none {  { uart_to_coordinates_ck_b_V_read in_data 0 8 } } }
	uart_to_coordinates_tempCoordinates_0 { ap_ovld {  { uart_to_coordinates_tempCoordinates_0_i in_data 0 32 }  { uart_to_coordinates_tempCoordinates_0_o out_data 1 32 }  { uart_to_coordinates_tempCoordinates_0_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_tempCoordinates_1 { ap_ovld {  { uart_to_coordinates_tempCoordinates_1_i in_data 0 32 }  { uart_to_coordinates_tempCoordinates_1_o out_data 1 32 }  { uart_to_coordinates_tempCoordinates_1_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_tempCoordinates_2 { ap_ovld {  { uart_to_coordinates_tempCoordinates_2_i in_data 0 32 }  { uart_to_coordinates_tempCoordinates_2_o out_data 1 32 }  { uart_to_coordinates_tempCoordinates_2_o_ap_vld out_vld 1 1 } } }
	input_V_read { ap_none {  { input_V_read in_data 0 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
}
