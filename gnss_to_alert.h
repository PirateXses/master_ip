#ifndef GNSS_TO_ALERT_H
#define GNSS_TO_ALERT_H

// Include
#include "ap_int.h"

// Defines
#define GNSS_SIGNALS_USED 2
//** NOTE: If only 2 GNSS signals are define, then the protocol of the 3rd signal is unused  **//
#define GNSS1_PROTOCOL 0 // 0 = UBX, 1 == NMEA
#define GNSS2_PROTOCOL 0 // 0 = UBX, 1 == NMEA
#define GNSS3_PROTOCOL 0 // 0 = UBX, 1 == NMEA

#define UBX_OFFSET_POS_X (6+12)
#define UBX_OFFSET_POS_Y (6+16)
#define UBX_OFFSET_POS_Z (6+20)
#define UBX_OFFSET_CK_A (6+52)
#define UBX_OFFSET_CK_B (6+53)

#define MAX_DIFFER_IN_CM 1000

class gnns_to_alert
{
public:
	ap_uint<8> current_gnss1 = 0;
	ap_uint<8> current_gnss2 = 0;
	ap_uint<1> outAlert = 0;

	#if GNSS1_PROTOCOL // NMEA
	#else // UBX

	ap_uint<6> state1 = 0;
	ap_uint<8> ck_a1 = 0;
	ap_uint<8> ck_b1 = 0;
	int tempCoordinates1[] = {0,0,0};
	int coordinates1[] = {0,0,0};

	#endif

	#if GNSS2_PROTOCOL // NMEA
	#else // UBX

	ap_uint<6> state2 = 0;
	ap_uint<8> ck_a2 = 0;
	ap_uint<8> ck_b2 = 0;
	int tempCoordinates2[] = {0,0,0};
	int coordinates2[] = {0,0,0};

	#endif
};

// Functions
#if GNSS_SIGNALS_USED-2
void gnss_to_alert(ap_uint<8> * gnss_data1, ap_uint<1> * gnss_data_pulse1, ap_uint<8> * gnss_data2, ap_uint<1> * gnss_data_pulse2, ap_uint<8> * gnss3, ap_uint<1> * gnss_data_pulse3, ap_uint<1> * alert, ap_uint<1> * axi_alert);
#else
void gnss_to_alert(ap_uint<8> * gnss_data1, ap_uint<1> * gnss_data_pulse1, ap_uint<8> * gnss_data2, ap_uint<1> * gnss_data_pulse2, ap_uint<1> * alert, ap_uint<1> * axi_alert);
#endif

void get_gps_info_from_ubx(ap_uint<8> &byte_input, ap_uint<6> &state, int (&tempCoordinates)[3], int (&coordinates)[3], ap_uint<8> &ck_a, ap_uint<8> &ck_b, ap_uint<1> &fix);
void calculate_ubx_checksum(ap_uint<8> &byte_input, ap_uint<6> &state, ap_uint<8> &ck_a, ap_uint<8> &ck_b);
int differ_in_3D(int (&coordinatesLocal1)[3], int (&coordinatesLocal2)[3]);


#endif //def GNSS_TO_ALERT_H
