/*
#include "master_ip.h"

static uart_to_coordinates gnss1 = uart_to_coordinates((ap_uint<1>)GNSS1_PROTOCOL);
static uart_to_coordinates gnss2 = uart_to_coordinates((ap_uint<1>)GNSS2_PROTOCOL);

static int velocity1[] = {0,0,0};
static int velocity2[] = {0,0,0};

static ap_uint<1> uart1, uart2, alert;

void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *out_alert)
{
	// Input signals
	uart1 = *(in_gnss1);
	uart2 = *(in_gnss2);

	// Get information from signal
	gnss1.mainFunction(uart1, velocity1);
	gnss2.mainFunction(uart2, velocity2);

	// Is all as it should be?
	if(((velocity1[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity1[1] > MAX_GNSS_NOT_MOVING_VELOCITY) &&
			(velocity2[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity2[1] > MAX_GNSS_NOT_MOVING_VELOCITY)) ||
			((velocity1[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity1[1] < MAX_GNSS_NOT_MOVING_VELOCITY) &&
			(velocity2[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity2[1] < MAX_GNSS_NOT_MOVING_VELOCITY))) {
		alert = 0;
	}
	else {
		alert = 1;
	}

	// Outputs signals
	*(out_alert) = alert;
}
*/
