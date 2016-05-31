#ifndef UART_TO_COORDINATES_H
#define UART_TO_COORDINATES_H

// Include
#include "ap_int.h"

// Defines
#define DATA_BITS_PER_FRAME 8
#define STOP_BITS_PER_FRAME 1
#define PARITY_BITS_PER_FRAME 0
#define BITS_PER_FRAME (DATA_BITS_PER_FRAME+STOP_BITS_PER_FRAME+PARITY_BITS_PER_FRAME)
#define NS_PER_CLOCK_CYCLE 10
#define CLOCK_CYCLES_PER_BIT 2600 //(NS_PER_CLOCK_CYCLE/10)
#define MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES 100/2
#define MIN_PRE_STARTBIT_PULSE_SIZE ((BITS_PER_FRAME+2)*CLOCK_CYCLES_PER_BIT)

// Defines
//#define UBX_OFFSET_POS_X (6+12)
//#define UBX_OFFSET_POS_Y (6+16)
//#define UBX_OFFSET_POS_Z (6+20)
#define UBX_OFFSET_VEL_X (6+28)
#define UBX_OFFSET_VEL_Y (6+32)
#define UBX_OFFSET_VEL_Z (6+36)
#define UBX_OFFSET_CK_A (6+52)
#define UBX_OFFSET_CK_B (6+53)

// Class define
class uart_to_coordinates
{
public:
	ap_uint<16> count;
	ap_uint<1> previous_input;
	ap_uint<1> current_input;
	ap_uint<4> uart_state;
	ap_uint<8> next_out_byte;
	ap_uint<8> current_out_byte;

	const ap_uint<1> gnss_protocol;
	ap_uint<6> gnss_state;
	ap_uint<8> ck_a;
	ap_uint<8> ck_b;
	int tempCoordinates[3];

	uart_to_coordinates(ap_uint<1> gnss_protocol): gnss_protocol(gnss_protocol) // 0 = UBX, 1 == NMEA
	{
		count = 0;
		previous_input = 0;
		current_input = 0;
		uart_state = 0;
		next_out_byte = 0;
		current_out_byte = 0;

		gnss_state = 0;
		ck_a = 0;
		ck_b = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
	bool uart_to_byte();
	void databit();
	bool stopbit();
	void get_gps_info_from_ubx(int (&coordinates)[3]);
	void calculate_ubx_checksum();
	void mainFunction(ap_uint<1> &current_input, int (&coordinates)[3]);
};

#endif //def UART_TO_COORDINATES_H
