set moduleName master_ip_uart_to_byte
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {master_ip_uart_to_byte}
set C_modelType { int 9 }
set C_modelArgList { 
	{ uart_to_coordinates_count_V int 16 regular {pointer 2}  }
	{ uart_to_coordinates_previous_input_V int 1 regular {pointer 2}  }
	{ uart_to_coordinates_current_input_V_read int 1 regular  }
	{ uart_to_coordinates_uart_state_V int 4 regular {pointer 2}  }
	{ uart_to_coordinates_next_out_byte_V int 8 regular {pointer 2}  }
	{ uart_to_coordinates_current_out_byte_V_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "uart_to_coordinates_count_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_previous_input_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_current_input_V_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "uart_to_coordinates_uart_state_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_next_out_byte_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "uart_to_coordinates_current_out_byte_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ uart_to_coordinates_count_V_i sc_in sc_lv 16 signal 0 } 
	{ uart_to_coordinates_count_V_o sc_out sc_lv 16 signal 0 } 
	{ uart_to_coordinates_count_V_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ uart_to_coordinates_previous_input_V_i sc_in sc_lv 1 signal 1 } 
	{ uart_to_coordinates_previous_input_V_o sc_out sc_lv 1 signal 1 } 
	{ uart_to_coordinates_previous_input_V_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ uart_to_coordinates_current_input_V_read sc_in sc_lv 1 signal 2 } 
	{ uart_to_coordinates_uart_state_V_i sc_in sc_lv 4 signal 3 } 
	{ uart_to_coordinates_uart_state_V_o sc_out sc_lv 4 signal 3 } 
	{ uart_to_coordinates_uart_state_V_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ uart_to_coordinates_next_out_byte_V_i sc_in sc_lv 8 signal 4 } 
	{ uart_to_coordinates_next_out_byte_V_o sc_out sc_lv 8 signal 4 } 
	{ uart_to_coordinates_next_out_byte_V_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ uart_to_coordinates_current_out_byte_V_read sc_in sc_lv 8 signal 5 } 
	{ ap_return_0 sc_out sc_lv 1 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "uart_to_coordinates_count_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "uart_to_coordinates_count_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_count_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "uart_to_coordinates_count_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_count_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_count_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_previous_input_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_previous_input_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_current_input_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_to_coordinates_current_input_V_read", "role": "default" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_uart_state_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_uart_state_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "i" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "o" }} , 
 	{ "name": "uart_to_coordinates_next_out_byte_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "uart_to_coordinates_next_out_byte_V", "role": "o_ap_vld" }} , 
 	{ "name": "uart_to_coordinates_current_out_byte_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_to_coordinates_current_out_byte_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}
set Spec2ImplPortList { 
	uart_to_coordinates_count_V { ap_ovld {  { uart_to_coordinates_count_V_i in_data 0 16 }  { uart_to_coordinates_count_V_o out_data 1 16 }  { uart_to_coordinates_count_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_previous_input_V { ap_ovld {  { uart_to_coordinates_previous_input_V_i in_data 0 1 }  { uart_to_coordinates_previous_input_V_o out_data 1 1 }  { uart_to_coordinates_previous_input_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_current_input_V_read { ap_none {  { uart_to_coordinates_current_input_V_read in_data 0 1 } } }
	uart_to_coordinates_uart_state_V { ap_ovld {  { uart_to_coordinates_uart_state_V_i in_data 0 4 }  { uart_to_coordinates_uart_state_V_o out_data 1 4 }  { uart_to_coordinates_uart_state_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_next_out_byte_V { ap_ovld {  { uart_to_coordinates_next_out_byte_V_i in_data 0 8 }  { uart_to_coordinates_next_out_byte_V_o out_data 1 8 }  { uart_to_coordinates_next_out_byte_V_o_ap_vld out_vld 1 1 } } }
	uart_to_coordinates_current_out_byte_V_read { ap_none {  { uart_to_coordinates_current_out_byte_V_read in_data 0 8 } } }
}
