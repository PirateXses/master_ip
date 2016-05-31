#include "gnss_to_alert.h"

#if GNSS1_PROTOCOL // NMEA
#else // UBX

static ap_uint<6> state1 = 0;
static ap_uint<8> ck_a1 = 0;
static ap_uint<8> ck_b1 = 0;
static int tempCoordinates1[] = {0,0,0};
static int coordinates1[] = {0,0,0};

#endif

#if GNSS2_PROTOCOL // NMEA
#else // UBX

static ap_uint<6> state2 = 0;
static ap_uint<8> ck_a2 = 0;
static ap_uint<8> ck_b2 = 0;
static int tempCoordinates2[] = {0,0,0};
static int coordinates2[] = {0,0,0};

#endif

#if GNSS_SIGNALS_USED-2 // Use 3 GNSS signals

static ap_uint<8> current_gnss3 = 0;
static ap_uint<1> previous_gnss_pulse_data3 = 0;

#if GNSS3_PROTOCOL // NMEA
#else // UBX

static ap_uint<6> state3 = 0;
static ap_uint<8> ck_a3 = 0;
static ap_uint<8> ck_b3 = 0;
static int tempCoordinates3[] = {0,0,0};
static int coordinates3[] = {0,0,0};

#endif

void gnss_to_alert(ap_uint<8> * gnss_data1, ap_uint<1> * gnss_data_pulse1, ap_uint<8> * gnss_data2, ap_uint<1> * gnss_data_pulse2, ap_uint<8> * gnss3, ap_uint<1> * gnss_data_pulse3, ap_uint<1> * alert, ap_uint<1> * fix1, ap_uint<1> * fix2, ap_uint<1> * axi_alert)
{
#pragma HLS INTERFACE ap_none port=gnss_data3
#pragma HLS INTERFACE ap_none port=gnss_data_pulse3

#else // Use 2 GNSS signals

void gnss_to_alert(ap_uint<8> * gnss_data1, ap_uint<1> * gnss_data_pulse1, ap_uint<8> * gnss_data2, ap_uint<1> * gnss_data_pulse2, ap_uint<1> * alert, ap_uint<1> * fix1, ap_uint<1> * fix2, ap_uint<1> * axi_alert)
{
#endif

#pragma HLS PIPELINE
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE ap_none port=gnss_data1
#pragma HLS INTERFACE ap_none port=gnss_data2
#pragma HLS INTERFACE ap_none port=gnss_data_pulse1
#pragma HLS INTERFACE ap_none port=gnss_data_pulse2
#pragma HLS INTERFACE ap_none port=fix1
#pragma HLS INTERFACE ap_none port=fix2
#pragma HLS INTERFACE ap_none port=alert
//#pragma HLS INTERFACE ap_none port=axi_alert
#pragma HLS INTERFACE s_axilite port=axi_alert


	//Read from inputs && Functionality
	if(previous_gnss_pulse_data1 != *(gnss_data_pulse1) && !GNSS1_PROTOCOL)
	{
		current_gnss1 = *(gnss_data1);
		previous_gnss_pulse_data1 = *(gnss_data_pulse1);
		calculate_ubx_checksum(current_gnss1, state1, ck_a1, ck_b1);
		get_gps_info_from_ubx(current_gnss1, state1, tempCoordinates1, coordinates1, ck_a1, ck_b1, *(fix1));
	}
	if(previous_gnss_pulse_data2 != *(gnss_data_pulse2) && !GNSS2_PROTOCOL)
	{
		current_gnss2 = *(gnss_data2);
		previous_gnss_pulse_data2 = *(gnss_data_pulse2);
		calculate_ubx_checksum(current_gnss2, state2, ck_a2, ck_b2);
		get_gps_info_from_ubx(current_gnss2, state2, tempCoordinates2, coordinates2, ck_a2, ck_b2, *(fix2));
	}

	if(differ_in_3D(coordinates1, coordinates2) > MAX_DIFFER_IN_CM)
	{
		outAlert = 1;
	}
	else
	{
		outAlert = 0;
	}

	//Write to outputs
	*(alert) = outAlert;
	*(axi_alert) = outAlert;

}

void calculate_ubx_checksum(ap_uint<8> &byte_input, ap_uint<6> &state, ap_uint<8> &ck_a, ap_uint<8> &ck_b)
{
	if(state >= 2 && state <= (6+51))
	{
		ck_a += byte_input;
		ck_b += ck_a;
	}
	else if(state >= (6+52) && state <= (6+53))
	{
		//do nothing
	}
	else //reset
	{
		ck_a = 0;
		ck_b = 0;
	}
}

int differ_in_3D(int (&coordinatesLocal1)[3], int (&coordinatesLocal2)[3])
{
    return (int)sqrt(pow(coordinatesLocal1[0]-coordinatesLocal2[0],2)+pow(coordinatesLocal1[1]-coordinatesLocal2[1],2)+pow(coordinatesLocal1[2]-coordinatesLocal2[2],2));
}
/*
void get_gps_info_from_nmea(ap_uint<8> &byte_input, ap_uint<6> &state, int (&tempCoordinates)[3], int (&coordinates)[3], ap_uint<8> &ck_a, ap_uint<8> &ck_b, ap_uint<1> &fix)
{
#pragma HLS INLINE
	if( (state == 0 && byte_input == 181) ||
			(state == 1 && byte_input == 98) ||
			(state == 2 && byte_input == 1) ||
			(state == 3 && byte_input == 6) ||
			(state == 4 && byte_input == 52) ||
			(state == 5 && byte_input == 0) ||
			(state >= (6+0) && state <= (6+9)) ||
			(state >= (6+24) && state <= (6+51)) ||
			(state == UBX_OFFSET_CK_A && byte_input == ck_a) || //CK_A
			(state == (6+11 )) )
	{
		state++;
	}
	else if(state == (6+10) && (byte_input >= 2 && byte_input <= 4)) //GPSFix
	{
		state++;
		fix = 1;
	}
	else if( (state >= UBX_OFFSET_POS_X) && (state <= (UBX_OFFSET_POS_X+3)) ) //ECEF coordinates X
	{
		tempCoordinates[0] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_X)));
		state++;
	}
	else if(state >= UBX_OFFSET_POS_Y && state <= UBX_OFFSET_POS_Y+3) //ECEF coordinates Y
	{
		tempCoordinates[1] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_Y)));
		state++;
	}
	else if(state >= UBX_OFFSET_POS_Z && state <= UBX_OFFSET_POS_Z+3) //ECEF coordinates Z
	{
		tempCoordinates[2] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_Z)));
		state++;
	}
	else if(state == UBX_OFFSET_CK_B && byte_input == ck_b)
	{
		coordinates[0] = tempCoordinates[0];
		coordinates[1] = tempCoordinates[1];
		coordinates[2] = tempCoordinates[2];
		//std::cout << "New coordinate: " << tempCoordinates[0] << "," << tempCoordinates[1] << "," << tempCoordinates[2] << "\n";
		state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
	else
	{
		state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
}
*/
void get_gps_info_from_ubx(ap_uint<8> &byte_input, ap_uint<6> &state, int (&tempCoordinates)[3], int (&coordinates)[3], ap_uint<8> &ck_a, ap_uint<8> &ck_b, ap_uint<1> &fix)
{
	//std::cout << "in here: " << state << "\n";
#pragma HLS INLINE
	if( (state == 0 && byte_input == 181) ||
			(state == 1 && byte_input == 98) ||
			(state == 2 && byte_input == 1) ||
			(state == 3 && byte_input == 6) ||
			(state == 4 && byte_input == 52) ||
			(state == 5 && byte_input == 0) ||
			(state >= (6+0) && state <= (6+9)) ||
			(state >= (6+24) && state <= (6+51)) ||
			(state == UBX_OFFSET_CK_A && byte_input == ck_a) || //CK_A
			(state == (6+11 )) )
	{
		state++;
	}
	else if(state == (6+10)) //GPSFix
	{
		if((byte_input >= 2 && byte_input <= 4))
		{
			state++;
			fix = 1;
		}
		else
		{
			state = 0;
			tempCoordinates[0] = 0;
			tempCoordinates[1] = 0;
			tempCoordinates[2] = 0;
			fix = 0;
		}
	}
	else if( (state >= UBX_OFFSET_POS_X) && (state <= (UBX_OFFSET_POS_X+3)) ) //ECEF coordinates X
	{
		tempCoordinates[0] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_X)));
		state++;
	}
	else if(state >= UBX_OFFSET_POS_Y && state <= UBX_OFFSET_POS_Y+3) //ECEF coordinates Y
	{
		tempCoordinates[1] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_Y)));
		state++;
	}
	else if(state >= UBX_OFFSET_POS_Z && state <= UBX_OFFSET_POS_Z+3) //ECEF coordinates Z
	{
		tempCoordinates[2] |= (((int)byte_input) << (8*(state-UBX_OFFSET_POS_Z)));
		state++;
	}
	else if(state == UBX_OFFSET_CK_B && byte_input == ck_b)
	{
		coordinates[0] = tempCoordinates[0];
		coordinates[1] = tempCoordinates[1];
		coordinates[2] = tempCoordinates[2];
		//std::cout << "New coordinate: " << tempCoordinates[0] << "," << tempCoordinates[1] << "," << tempCoordinates[2] << "\n";
		state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
	else
	{
		state = 0;
		tempCoordinates[0] = 0;
		tempCoordinates[1] = 0;
		tempCoordinates[2] = 0;
	}
}
