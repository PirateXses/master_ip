
call xelab xil_defaultlib.apatb_master_ip_top -prj master_ip.prj --lib "ieee_proposed=./ieee_proposed" -s master_ip 
call xsim --noieeewarnings master_ip -tclbatch master_ip.tcl

