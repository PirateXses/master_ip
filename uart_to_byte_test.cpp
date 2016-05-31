#include <fstream>
#include "uart_to_byte.h"

int main()
{
	int testResult = 0;


	std::ifstream input( "generatedTestData.txt" );
	std::ifstream expectedOutput( "testResultData.txt" );

	for( std::string line; getline( input, line ); )
	{
		for(int k = 0; k < line.length(); k++)
		{
			ap_uint<1> input = (ap_uint<1>)(line[k]-'0');

			//System.out.println("Sending "+input);
			ap_uint<8> output = 0;
			ap_uint<8> zynq_output_dummy = 0;

			for(int i = 0; i < CLOCK_CYCLES_PER_BIT; i++)
			{
				uart_to_byte(&input, &output, &zynq_output_dummy);
			}

			// Get expected result as 8 bit value
			std::string expectedResultAsString;
			getline( expectedOutput, expectedResultAsString );
			std::stringstream convert(expectedResultAsString);
			ap_uint<8> expectedResultAs8Bit;
			convert >> expectedResultAs8Bit;

			//Compare result with expected result
			if(output != expectedResultAs8Bit)
			{
				testResult = 1;
			}
		}
	}
	return testResult;
}
