#include <fstream>
#include <string>
#include "master_ip.h"

int final_test_result = 0;

int expectedIndex = 0;
std::string expected;
ap_uint<1> gnss1 = 0;
ap_uint<1> gnss2 = 0;
ap_uint<1> gcs_rx = 0;
ap_uint<1> out_gnns;
ap_uint<1> most_reliable;

int sendUbxPackage(std::string package_to_gnss1, std::string package_to_gnss2) {
	// 620 -> 20 sync bits + 60 UART bit-frames (60 bytes = 1 UBX package)
	for(int i = 0; i < 620 ; i++)
	{
		// Read the next input to send in the package
		if(!package_to_gnss1.empty())
			gnss1 = (ap_uint<1>)(package_to_gnss1[i]-'0');
		if(!package_to_gnss2.empty())
			gnss2 = (ap_uint<1>)(package_to_gnss2[i]-'0');

		// Send the same bit for a bit-length of clock cycles
		for(int j = 0; j <= CLOCK_CYCLES_PER_BIT; j++)
			master_ip(&gnss1, &gnss2, &gcs_rx, &out_gnns, &most_reliable);
	}
	std::cout << most_reliable;
	// Check to see if the alert state is right
	//if((ap_uint<1>)(expected[expectedIndex++]-'0') != most_reliable)
	//	return 1;
	return 0;
}

int sendCppmPackage(int clocks_to_send, ap_uint<1> value_to_send) {
	// Send the same bit for a bit-length of clock cycles
	for(int j = 0; j <= clocks_to_send; j++)
		master_ip(&gnss1, &gnss2, &value_to_send, &out_gnns, &most_reliable);
	// Check to see if the alert state is right
	//if((ap_uint<1>)(expected[expectedIndex++]-'0') != most_reliable)
	//	return 1;
	return 0;
}

int main() {
	// Load data from files
	std::string package1;
	std::ifstream OutputGNSSMovementTrue_DataValidTrue( "testData_GNSSMovementTrue_DataValidTrue.txt" );
	getline( OutputGNSSMovementTrue_DataValidTrue, package1);

	std::string package2;
	std::ifstream OutputGNSSMovementFalse_DataValidTrue("testData_GNSSMovementFalse_DataValidTrue.txt" );
	getline( OutputGNSSMovementFalse_DataValidTrue, package2);

	std::ifstream expectedOutput( "testResultData3.txt" );
	getline( expectedOutput, expected);

	// Start the test

	ap_uint<1> input = 0;
	std::ifstream package4( "testData_CPPMMovementTrue_DataValidTrue.txt" );
	// 18 = CPPM (sync + 2x 8 pulses + sync) +2
	for(int i = 0; i < 20 ; i++)
	{
		// Invert pulse (high to low and low to high)
		input ^= 1;

		std::string temp;
		getline( package4, temp);
		int clocks_to_send = std::atoi(temp.c_str());

		// Send the same bit for a bit-length of clock cycles
		final_test_result += sendCppmPackage(clocks_to_send, input);
	}
	std::cout << most_reliable;

	sendUbxPackage(package1, package2);

	input = 0;
	std::ifstream package5( "testData_CPPMMovementFalse_DataValidTrue.txt" );
	// 18 = CPPM (sync + 2x 8 pulses + sync) +2
	for(int i = 0; i < 20 ; i++)
	{
		// Invert pulse (high to low and low to high)
		input ^= 1;

		std::string temp;
		getline( package5, temp);
		int clocks_to_send = std::atoi(temp.c_str());

		// Send the same bit for a bit-length of clock cycles
		final_test_result += sendCppmPackage(clocks_to_send, input);
	}
	std::cout << most_reliable;

	sendUbxPackage(package1, "");

	// Return the test result
	return final_test_result;
}
