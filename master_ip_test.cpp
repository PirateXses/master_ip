/*
#include <fstream>
#include <string>
#include "master_ip.h"

// Shared variables
static ap_uint<32> time_count = 0;
static ap_uint<32> next_value_to_send = 0;
static ap_uint<1> ubx_frame[] =
	{1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,
	0,1,0,1,0,1,1,0,1,1,
	0,0,1,0,0,0,1,1,0,1,
	0,1,0,0,0,0,0,0,0,1,
	0,0,1,1,0,0,0,0,0,1,
	0,0,0,1,0,1,1,0,0,1,
	0,0,0,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,0,0,0,0,0,0,1,
	0,1,1,1,0,1,0,1,1,1,
	0,0,0,0,0,0,1,0,1,1};

void ubx_error_maker(ap_uint<1> * gnss, ap_uint<1> * make_error, ap_uint<1> * data_pulse)
{
	// Read inputs && Functionality
	if((*make_error) == 0)
	{
		*(data_pulse) = *(gnss);
		next_value_to_send = 0;
		time_count = 0;
	}
	else
	{
		if(time_count != 0)
		{
			time_count--;
			*(data_pulse) = ubx_frame[next_value_to_send];

		}
		else
		{
			next_value_to_send++;
			*(data_pulse) = ubx_frame[next_value_to_send];
			time_count = CLOCK_CYCLES_PER_BIT;
		}
	}
}

int main()
{
	ap_uint<1> real_gnss = 0;
	ap_uint<1> make_error = 1;
	ap_uint<1> fake_gnss = 0;

	ap_uint<1> alert = 0;
	ap_uint<8> dummy_axi = 0;

	std::ifstream expectedOutput( "testResultData.txt" );
	std::string line;

	for(int i = 0; i < 640 ; i++)
	{
		for(int j = 0; j <= CLOCK_CYCLES_PER_BIT; j++)
		{
			ubx_error_maker(&real_gnss, &make_error, &fake_gnss);
			//master_ip(real_gnss, fake_gnss, alert, dummy_axi);
		}
		//std::cout << "real_gnss, make_error, fake_gnss, alert: " << real_gnss << " " << make_error << " " << fake_gnss << " " << alert << "\n";
		getline( expectedOutput, line);
		ap_uint<1> expectedOutputBit = (ap_uint<1>)(line[0]-'0');

		if(alert != expectedOutputBit)
		{
			return 1;
		}
	}
	return 0;
}
*/
