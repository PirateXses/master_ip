/*
#include "master_ip.h"

static uart_to_coordinates gnss1 = uart_to_coordinates((ap_uint<1>)GNSS1_PROTOCOL);
static uart_to_coordinates gnss2 = uart_to_coordinates((ap_uint<1>)GNSS2_PROTOCOL);
static uart_to_coordinates gnss3 = uart_to_coordinates((ap_uint<1>)GNSS3_PROTOCOL);

static int velocity1[] = {0,0,0};
static int velocity2[] = {0,0,0};
static int velocity3[] = {0,0,0};

static ap_uint<1> uart1, uart2, uart3, most_reliable;

void master_ip(ap_uint<1> *in_gnss1, ap_uint<1> *in_gnss2, ap_uint<1> *in_gnss3, ap_uint<1> *out_gnns, ap_uint<1> *out_most_reliable)
{
	// Input signals
	uart1 = *(in_gnss1);
	uart2 = *(in_gnss2);
	uart3 = *(in_gnss3);

	// Get information from signal
	gnss1.mainFunction(uart1, velocity1);
	gnss2.mainFunction(uart2, velocity2);
	gnss3.mainFunction(uart3, velocity3);

	// if((1=true && (2=true || 3=true)) || (1=false && (2=false || 3=false)) )
	if( ( (velocity1[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity1[1] > MAX_GNSS_NOT_MOVING_VELOCITY) &&
			((velocity2[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity2[1] > MAX_GNSS_NOT_MOVING_VELOCITY) ||
			(velocity3[0] > MAX_GNSS_NOT_MOVING_VELOCITY || velocity3[1] > MAX_GNSS_NOT_MOVING_VELOCITY)) )
			||
			( (velocity1[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity1[1] < MAX_GNSS_NOT_MOVING_VELOCITY) &&
			((velocity2[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity2[1] < MAX_GNSS_NOT_MOVING_VELOCITY) ||
			(velocity3[0] < MAX_GNSS_NOT_MOVING_VELOCITY && velocity3[1] < MAX_GNSS_NOT_MOVING_VELOCITY)) ) ) {
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
*/
