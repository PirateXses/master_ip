#include <fstream>
#include <string>
#include "gnss_to_alert.h"

int main()
{
	int testResult = 0;
	ap_uint<1> data_pulse1 = 0;
	ap_uint<1> data_pulse2 = 0;


	std::ifstream input1( "generatedTestData1.txt" );
	std::ifstream input2( "generatedTestData2.txt" );
	std::ifstream expectedOutput( "testResultData.txt" );

	for( std::string line1; getline( input1, line1 ); )
	{
		std::string line2;
		getline( input2, line2);
		ap_uint<8> gnss1 = (ap_uint<8>)(atoi(line1.c_str()));
		ap_uint<8> gnss2 = (ap_uint<8>)(atoi(line2.c_str()));
		data_pulse1 ^= 1;
		data_pulse2 ^= 1;
		ap_uint<1> alert;
		ap_uint<1> axi_alert;

		gnss_to_alert(&gnss1, &data_pulse1, &gnss2, &data_pulse2, &alert, &axi_alert);
		printf("(%d) Alert: %d\n",(int)gnss1,(int)alert);
		//printf("%d\n",(int)alert);

		// Get expected result as 8 bit value
		std::string expectedResultAsString;
		getline( expectedOutput, expectedResultAsString );
		ap_uint<1> expectedResultAs1Bit = (ap_uint<1>)(atoi(expectedResultAsString.c_str()));

		//Compare result with expected result
		if(alert != expectedResultAs1Bit)
		{
			testResult = 1;
		}
	}
	return testResult;
}
