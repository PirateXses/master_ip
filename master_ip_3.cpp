#include "master_ip.h"

static uart_to_coordinates gnss1 = uart_to_coordinates((ap_uint<1>)GNSS1_PROTOCOL);
static uart_to_coordinates gnss2 = uart_to_coordinates((ap_uint<1>)GNSS2_PROTOCOL);
static cppm_to_horizontal_movement gcs_rx1 = cppm_to_horizontal_movement();

static int velocity1[] = {0,0,0};
static int velocity2[] = {0,0,0};
static ap_uint<1> velocity3 = 0;

static ap_uint<1> uart1, uart2, cppm, most_reliable;

void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *in_gcs_rx1, ap_uint<1> *out_gnns, ap_uint<1> *out_most_reliable)
{
	// Input signals
	uart1 = *(in_gnss1);
	uart2 = *(in_gnss2);
	cppm = *(in_gcs_rx1);

	// Get information from signal
	gnss1.mainFunction(uart1, velocity1);
	gnss2.mainFunction(uart2, velocity2);
	gcs_rx1.main_function(cppm, velocity3);

	// if((1=true && (2=true || 3=true)) || (1=false && (2=false || 3=false)) )
	if( ( (velocity1[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity1[1] > MAX_GNSS_NOT_MOVING_VELOCITY) &&
			((velocity2[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity2[1] > MAX_GNSS_NOT_MOVING_VELOCITY) ||
			(velocity3 == 1)) )
			||
			( (velocity1[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity1[1] < MAX_GNSS_NOT_MOVING_VELOCITY) &&
			((velocity2[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity2[1] < MAX_GNSS_NOT_MOVING_VELOCITY) ||
			velocity3 == 0) ) ) {
		most_reliable = 0;
	}
	else {
		most_reliable = 1;
	}

	// Outputs signals
	*(out_most_reliable) = most_reliable;

	if(most_reliable == 0)
		*(out_gnns) = uart1;
	else
		*(out_gnns) = uart2;
}
