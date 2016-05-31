#include "uart_to_coordinates.h"

void uart_to_coordinates::mainFunction(ap_uint<1> &current_input, int (&coordinates)[3])
{
	this->current_input = current_input;

	//Functionality
	if(uart_to_byte() && !gnss_protocol) //UBX
	{
		calculate_ubx_checksum();
		get_gps_info_from_ubx(coordinates);
	}
}

bool uart_to_coordinates::uart_to_byte()
{
	//Functionality
	if(uart_state == 0) //Frame not started
	{
		if(current_input == 0 && previous_input == 1 && count == MIN_PRE_STARTBIT_PULSE_SIZE) // New frame started
		{
			uart_state++;
			count = 1;
		}
		else if(current_input == 0)
		{
			count = 0;
			previous_input = 0;
		}
		else if(count == MIN_PRE_STARTBIT_PULSE_SIZE) //current_input == 1
		{
			previous_input = 1;
		}
		else //current_input == 1 && count != MIN_PRE_STARTBIT_PULSE_SIZE
		{
			count++;
			previous_input = 1;
		}
	}
	else if(uart_state == 1) // START BIT (always 0)
	{
		if(current_input == 0 && count > CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) // START BIT OVER
		{
			uart_state++;
			count = count - CLOCK_CYCLES_PER_BIT + 1;
			previous_input = 0;
			next_out_byte = 0;
		}
		else if(current_input == 0)
		{
			count++;
		}
		else if(count < CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES &&
				count > CLOCK_CYCLES_PER_BIT - MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) //START BIT OVER (current_input == 1)
		{
			uart_state++;
			count = 1;
			previous_input = 1;
			next_out_byte = 0;
		}
		else // ERROR in frame //current_input == 1
		{
			uart_state = 0;
			count = 1;
			previous_input = 1;
		}
	}
	else if(uart_state >= 2 && uart_state <= 1+DATA_BITS_PER_FRAME) // DATA BIT
	{
		databit();
	}
	else if(uart_state >= 2+DATA_BITS_PER_FRAME && uart_state <= 2+BITS_PER_FRAME+STOP_BITS_PER_FRAME) // STOP BIT (always 1)
	{
		return stopbit();
	}
	return false;
}

void uart_to_coordinates::databit()
{
	if(current_input == previous_input && count > CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) //DATA BIT OVER
	{

		count = count - CLOCK_CYCLES_PER_BIT + 1;
		next_out_byte |= ((ap_uint<8>)(current_input) << (uart_state-2));
		uart_state++;
	}
	else if(current_input == previous_input)
	{
		count++;
	}
	else if(count < CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES &&
			count > CLOCK_CYCLES_PER_BIT - MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) //DATA BIT OVER (current_input != previous_input)
	{

		count = 1;
		next_out_byte |= ((ap_uint<8>)(previous_input) << (uart_state-2));
		previous_input = current_input;
		uart_state++;
	}
	else // ERROR in frame //current_input != previous_input
	{
		uart_state = 0;
		count = 1;
		previous_input = current_input;
	}
}

bool uart_to_coordinates::stopbit()
{
	if(current_input == 1 && count > CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) // STOP BIT OVER
	{
		uart_state = 1;
		count = count - CLOCK_CYCLES_PER_BIT + 1;
		previous_input = 1;
		current_out_byte = next_out_byte;
		return true;
	}
	else if(current_input == 1)
	{
		count++;
	}
	else if(count < CLOCK_CYCLES_PER_BIT + MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES &&
			count > CLOCK_CYCLES_PER_BIT - MAX_BIT_UNCERTAINTY_IN_CLOCK_CYCLES) //STOP BIT OVER (current_input == 0)
	{
		uart_state = 1;
		count = 1;
		previous_input = 0;
		current_out_byte = next_out_byte;
		return true;
	}
	else // ERROR in frame //current_input == 0
	{
		uart_state = 0;
		count = 1;
		previous_input = 0;
	}

	return false;
}


void uart_to_coordinates::get_gps_info_from_ubx(int (&coordinates)[3]) // This is velocity
{
	if( (gnss_state == 0 && current_out_byte == 181) ||
			(gnss_state == 1 && current_out_byte == 98) ||
			(gnss_state == 2 && current_out_byte == 1) ||
			(gnss_state == 3 && current_out_byte == 6) ||
			(gnss_state == 4 && current_out_byte == 52) ||
			(gnss_state == 5 && current_out_byte == 0) ||
			(gnss_state >= (6+0) && gnss_state <= (6+9)) ||
			(gnss_state >= (6+12) && gnss_state <= (6+27)) ||
			(gnss_state >= (6+40) && gnss_state <= (6+51)) ||
			(gnss_state == UBX_OFFSET_CK_A && current_out_byte == ck_a) || //CK_A
			(gnss_state == (6+10) && (current_out_byte >= 2 && current_out_byte <= 4)) || //GPSFix
			(gnss_state == (6+11 )) )
	{
		gnss_state++;
	}
	else if( (gnss_state >= UBX_OFFSET_VEL_X) && (gnss_state <= (UBX_OFFSET_VEL_X+3)) ) //ECEF coordinates X
	{
		tempCoordinates[0] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_VEL_X)));
		gnss_state++;
	}
	else if(gnss_state >= UBX_OFFSET_VEL_Y && gnss_state <= UBX_OFFSET_VEL_Y+3) //ECEF coordinates Y
	{
		tempCoordinates[1] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_VEL_Y)));
		gnss_state++;
	}
	else if(gnss_state >= UBX_OFFSET_VEL_Z && gnss_state <= UBX_OFFSET_VEL_Z+3) //ECEF coordinates Z
	{
		tempCoordinates[2] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_VEL_Z)));
		gnss_state++;
	}
	else if(gnss_state == UBX_OFFSET_CK_B && current_out_byte == ck_b)
	{
		coordinates[0] = tempCoordinates[0];
		coordinates[1] = tempCoordinates[1];
		coordinates[2] = tempCoordinates[2];

		#ifndef __SYNTHESIS__
		std::cout << "New velocity: " << tempCoordinates[0] << "," << tempCoordinates[1] << "," << tempCoordinates[2] << "\n";
		#endif

		gnss_state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
	else
	{
		gnss_state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
}

void uart_to_coordinates::calculate_ubx_checksum()
{
	if(gnss_state >= 2 && gnss_state <= (6+51))
	{
		ck_a += current_out_byte;
		ck_b += ck_a;
	}
	else if(gnss_state >= (6+52) && gnss_state <= (6+53))
	{
		//do nothing
	}
	else //reset
	{
		ck_a = 0;
		ck_b = 0;
	}
}

/*
void uart_to_coordinates::get_gps_info_from_ubx(int (&coordinates)[3])
{
	if( (gnss_state == 0 && current_out_byte == 181) ||
			(gnss_state == 1 && current_out_byte == 98) ||
			(gnss_state == 2 && current_out_byte == 1) ||
			(gnss_state == 3 && current_out_byte == 6) ||
			(gnss_state == 4 && current_out_byte == 52) ||
			(gnss_state == 5 && current_out_byte == 0) ||
			(gnss_state >= (6+0) && gnss_state <= (6+9)) ||
			(gnss_state >= (6+24) && gnss_state <= (6+51)) ||
			(gnss_state == UBX_OFFSET_CK_A && current_out_byte == ck_a) || //CK_A
			(gnss_state == (6+10) && (current_out_byte >= 2 && current_out_byte <= 4)) || //GPSFix
			(gnss_state == (6+11 )) )
	{
		gnss_state++;
	}
	else if( (gnss_state >= UBX_OFFSET_POS_X) && (gnss_state <= (UBX_OFFSET_POS_X+3)) ) //ECEF coordinates X
	{
		tempCoordinates[0] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_POS_X)));
		gnss_state++;
	}
	else if(gnss_state >= UBX_OFFSET_POS_Y && gnss_state <= UBX_OFFSET_POS_Y+3) //ECEF coordinates Y
	{
		tempCoordinates[1] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_POS_Y)));
		gnss_state++;
	}
	else if(gnss_state >= UBX_OFFSET_POS_Z && gnss_state <= UBX_OFFSET_POS_Z+3) //ECEF coordinates Z
	{
		tempCoordinates[2] |= (((int)current_out_byte) << (8*(gnss_state-UBX_OFFSET_POS_Z)));
		gnss_state++;
	}
	else if(gnss_state == UBX_OFFSET_CK_B && current_out_byte == ck_b)
	{
		coordinates[0] = tempCoordinates[0];
		coordinates[1] = tempCoordinates[1];
		coordinates[2] = tempCoordinates[2];

		#ifndef __SYNTHESIS__
		std::cout << "New velocity: " << tempCoordinates[0] << "," << tempCoordinates[1] << "," << tempCoordinates[2] << "\n";
		#endif

		gnss_state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
	else
	{
		gnss_state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
}
*/
