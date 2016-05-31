/*
#include <fstream>
#include <string>
#include "master_ip.h"

int final_test_result = 0;

int expectedIndex = 0;
std::string expected;
ap_uint<1> gnss1 = 0;
ap_uint<1> gnss2 = 0;
ap_uint<1> alert = 0;

int sendPackage(std::string package_to_gnss1, std::string package_to_gnss2) {
	// 620 -> 20 sync bits + 60 UART bit-frames + 20 sync bits (60 bytes = 1 UBX package)
	for(int i = 0; i < 640 ; i++)
	{
		// Read the next input to send in the package
		if(!package_to_gnss1.empty())
			gnss1 = (ap_uint<1>)(package_to_gnss1[i]-'0');
		if(!package_to_gnss2.empty())
			gnss2 = (ap_uint<1>)(package_to_gnss2[i]-'0');

		// Send the same bit for a bit-length of clock cycles
		for(int j = 0; j <= CLOCK_CYCLES_PER_BIT; j++)
			master_ip(&gnss1, &gnss2, &alert);
	}
	// Check to see if the alert state is right
	if((ap_uint<1>)(expected[expectedIndex++]-'0') != alert)
		return 1;
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

	std::string package3;
	std::ifstream OutputGNSSMovementTrue_DataValidFalse( "testData_GNSSMovementTrue_DataValidFalse.txt" );
	getline( OutputGNSSMovementTrue_DataValidFalse, package3);

	std::ifstream expectedOutput( "testResultData1.txt" );
	getline( expectedOutput, expected);

	// Start the test
	final_test_result += sendPackage(package3,"");
	final_test_result += sendPackage("",package3);
	final_test_result += sendPackage(package1,"");
	final_test_result += sendPackage("",package1);
	final_test_result += sendPackage(package2,"");
	final_test_result += sendPackage("",package2);
	final_test_result += sendPackage(package1, package1);
	final_test_result += sendPackage(package2, package2);
	final_test_result += sendPackage(package1, package2);
	final_test_result += sendPackage(package2, package1);

	// Return the test result
	return final_test_result;
}
*/
