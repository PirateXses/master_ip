#ifndef MASTER_IP_H
#define MASTER_IP_H

// Include
#include <stdlib.h>
#include "ap_int.h"
#include "uart_to_coordinates.h"
#include "cppm_to_horizontal_movement.h"

//** NOTE: If only 2 GNSS signals are define, then the protocol of the 3rd signal is unused  **//
#define GNSS1_PROTOCOL 0 // 0 = UBX, 1 == NMEA
#define GNSS2_PROTOCOL 0 // 0 = UBX, 1 == NMEA
#define GNSS3_PROTOCOL 0 // 0 = UBX, 1 == NMEA

#define MAX_GNSS_NOT_MOVING_VELOCITY 100

// Functions
//void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *out_alert);
//void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *in_gnss3, ap_uint<1> *out_gnns, ap_uint<1> *out_most_reliable);
void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *in_gcs_rx1, ap_uint<1> *out_gnns, ap_uint<1> *out_most_reliable);

#endif //def MASTER_IP_H
