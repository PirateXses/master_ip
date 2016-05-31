#ifndef CPPM_TO_HORIZONTAL_MOVEMENT_H
#define CPPM_TO_HORIZONTAL_MOVEMENT_H

// Defines
#define MIN_FRAME_SIZE 2300000
#define MAX_FRAME_SIZE 3100000
//#define AVG_SYNC_PULSE_SIZE 2700000

#define MIN_SYNC_PULSE_SIZE 1000000
#define MAX_SYNC_PULSE_SIZE 1300000

#define MIN_CHANNEL_PULSE_SIZE 2000
#define MAX_CHANNEL_PULSE_SIZE 800000

#define MIN_SPILT_PULSE_SIZE 20000
#define MAX_SPILT_PULSE_SIZE 60000
#define AVG_SPILT_PULSE_SIZE 40000

#define NUMBER_OF_CHANNELS 8

#define MAX_PULSE_BEFORE_DEFINE_MOVEMENT 140000
#define MIN_PULSE_BEFORE_DEFINE_MOVEMENT 100000

enum state {UNKNOWN, SYNC_PULSE,
		SPLIT_PULSE_1, CHANNEL_PULSE_1,
		SPLIT_PULSE_2, CHANNEL_PULSE_2,
		SPLIT_PULSE_3, CHANNEL_PULSE_3,
		SPLIT_PULSE_4, CHANNEL_PULSE_4,
		SPLIT_PULSE_5, CHANNEL_PULSE_5,
		SPLIT_PULSE_6, CHANNEL_PULSE_6,
		SPLIT_PULSE_7, CHANNEL_PULSE_7,
		SPLIT_PULSE_8, CHANNEL_PULSE_8,
		SPLIT_PULSE_9};

// Class define
class cppm_to_horizontal_movement
{
private:
	// Primary used for synchronizer
	ap_uint<22> signal_count;
	ap_uint<22> previous_signal_count;
	ap_uint<22> frame_count;
	ap_uint<1> local_in_sync;
	ap_uint<1> current_input;
	ap_uint<1> previous_input;
	ap_uint<1> horizontal_movement;
	state current_state;
	ap_uint<22> incomplete_frame[NUMBER_OF_CHANNELS];
public:
	cppm_to_horizontal_movement()
	{
		signal_count = 0;
		previous_signal_count = 0;
		frame_count = 0;
		local_in_sync = 0;
		current_input = 0;
		previous_input = 0;
		horizontal_movement = 0;
		current_state = UNKNOWN;

		cppm_to_horizontal_movement_label0:for(int i = 0; i < NUMBER_OF_CHANNELS; i++)
		{
			incomplete_frame[i] = 0;
		}
	}

	// Functions
	void main_function(ap_uint<1> &input, ap_uint<1> &output);
};

#endif //def CPPM_TO_HORIZONTAL_MOVEMENT_H
