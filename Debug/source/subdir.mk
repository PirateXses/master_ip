################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../cppm_to_horizontal_movement.cpp \
../master_ip.cpp \
../master_ip_1.cpp \
../master_ip_2.cpp \
../master_ip_3.cpp \
../uart_to_coordinates.cpp 

OBJS += \
./source/cppm_to_horizontal_movement.o \
./source/master_ip.o \
./source/master_ip_1.o \
./source/master_ip_2.o \
./source/master_ip_3.o \
./source/uart_to_coordinates.o 

CPP_DEPS += \
./source/cppm_to_horizontal_movement.d \
./source/master_ip.d \
./source/master_ip_1.d \
./source/master_ip_2.d \
./source/master_ip_3.d \
./source/uart_to_coordinates.d 


# Each subdirectory must supply rules for building sources it contributes
source/cppm_to_horizontal_movement.o: C:/Users/mxfr/Vivado/master_ip/cppm_to_horizontal_movement.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/master_ip.o: C:/Users/mxfr/Vivado/master_ip/master_ip.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/master_ip_1.o: C:/Users/mxfr/Vivado/master_ip/master_ip_1.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/master_ip_2.o: C:/Users/mxfr/Vivado/master_ip/master_ip_2.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/master_ip_3.o: C:/Users/mxfr/Vivado/master_ip/master_ip_3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/uart_to_coordinates.o: C:/Users/mxfr/Vivado/master_ip/uart_to_coordinates.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/mxfr/Vivado -IC:/Xilinx/Vivado_HLS/2015.4/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2015.4/include/etc -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2015.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2015.4/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


