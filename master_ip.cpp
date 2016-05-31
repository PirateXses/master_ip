/*
#include "master_ip.h"

static uart_to_coordinates gnss1 = uart_to_coordinates((ap_uint<1>)GNSS1_PROTOCOL);
static uart_to_coordinates gnss2 = uart_to_coordinates((ap_uint<1>)GNSS2_PROTOCOL);
static cppm_to_horizontal_movement gcs_rx1 = cppm_to_horizontal_movement();

static int velocity1[] = {100000,100000,100000};
static int velocity2[] = {100000,100000,100000};

static ap_uint<1> uart1, uart2, cppm1, horizontal_movement, alert, true_gnss;

void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *in_gcs_rx, ap_uint<1> *out_alert, ap_uint<1> *out_gnss, ap_uint<1> *out_gcs_rx)
{
	// Input signals
	uart1 = *(in_gnss1);
	uart2 = *(in_gnss2);
	cppm1 = *(in_gcs_rx);

	// Get information fra signal
	gnss1.mainFunction(uart1, velocity1);
	gnss2.mainFunction(uart2, velocity2);
	gcs_rx1.main_function(cppm1, horizontal_movement);

	// Is all as it should be?
	if((velocity1[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity1[1] > MAX_GNSS_NOT_MOVING_VELOCITY) &&
			(velocity2[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity2[1] > MAX_GNSS_NOT_MOVING_VELOCITY))
	{
		alert = 0;
		true_gnss = uart1;
	}
	else
	{
		alert = 1;
		if((velocity1[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity1[1] > MAX_GNSS_NOT_MOVING_VELOCITY) &&
				horizontal_movement)
		{
			true_gnss = uart1;
		}
		else
		{
			true_gnss = uart2;
		}
	}

	// Outputs signals
	*(out_alert) = alert;
	*(out_gcs_rx) = cppm1;
	*(out_gnss) = true_gnss;
}
*/
