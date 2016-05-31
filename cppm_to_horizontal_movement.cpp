#include "ap_int.h"
#include <assert.h>
#include "cppm_to_horizontal_movement.h"

void cppm_to_horizontal_movement::main_function(ap_uint<1> &input, ap_uint<1> &output)
{
	// Input reads
	current_input = input;

	// Algorithm/functionality
	if(current_state == UNKNOWN)
	{
		// Set LED indicator
		local_in_sync = 0;

		if(current_input == 1)
		{
			signal_count++;
			previous_input = 1;
		}
		// If end of pulse and If the Sync-pulse have the required size
		else if(previous_input == 1 && // if (current_input == 0)
				signal_count > MIN_SYNC_PULSE_SIZE && signal_count < MAX_SYNC_PULSE_SIZE)
		{
			// Set LED indicator
			local_in_sync = 1;

			current_state = SPLIT_PULSE_1;
			frame_count = 0;
			signal_count = 0;

			// Reset data to send
			for(int i = 0; i < NUMBER_OF_CHANNELS; i++)
			{
				incomplete_frame[i] = 0;
			}
		}
		else
		{
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SYNC_PULSE)
	{
		if(current_input == 1)
		{
			signal_count++;
			frame_count++;
		}
		// If end of pulse (if (current_input == 0 && previous_input == 1))
		// and If the Sync-pulse and the frame have the required size
		else if(signal_count > MIN_SYNC_PULSE_SIZE && signal_count < MAX_SYNC_PULSE_SIZE &&
				frame_count > MIN_FRAME_SIZE && frame_count < MAX_FRAME_SIZE)
		{
			current_state = SPLIT_PULSE_1;
			signal_count = 0;
			frame_count = 0;

			// Pass the frame to the transmitter and reset transmitter

			if(incomplete_frame[2] < MIN_PULSE_BEFORE_DEFINE_MOVEMENT ||
					incomplete_frame[2] > MAX_PULSE_BEFORE_DEFINE_MOVEMENT ||
					incomplete_frame[3] < MIN_PULSE_BEFORE_DEFINE_MOVEMENT ||
					incomplete_frame[3] > MAX_PULSE_BEFORE_DEFINE_MOVEMENT)
			{
				horizontal_movement = 1;
			}
			else
			{
				horizontal_movement = 0;
			}

			#ifndef __SYNTHESIS__
			std::cout << "H:" << horizontal_movement << "\n";
			#endif

			// Reset data to send
			for(int i = 0; i < NUMBER_OF_CHANNELS; i++)
			{
				incomplete_frame[i] = 0;
			}
		}
		// If end of pulse (if (current_input == 0 && previous_input == 1))
		// and If but the Sync-pulse and the frame DO NOT have the required size
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_1)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_1;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_1)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_2;
			// Pass data to send
			incomplete_frame[0] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_2)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_2;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_2)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_3;
			// Pass data to send
			incomplete_frame[1] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_3)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_3;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_3)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_4;
			// Pass data to send
			incomplete_frame[2] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_4)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_4;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_4)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_5;
			// Pass data to send
			incomplete_frame[3] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_5)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_5;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_5)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_6;
			// Pass data to send
			incomplete_frame[4] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_6)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_6;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_6)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_7;
			// Pass data to send
			incomplete_frame[5] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_7)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_7;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_7)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_8;
			// Pass data to send
			incomplete_frame[6] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_8)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = CHANNEL_PULSE_8;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}
	else if(current_state == CHANNEL_PULSE_8)
	{
		frame_count++;
		if(current_input == 1)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 0 && previous_input == 1)
		// and If the channel-pulse have the required size
		else if(signal_count > MIN_CHANNEL_PULSE_SIZE && signal_count < MAX_CHANNEL_PULSE_SIZE)
		{
			current_state = SPLIT_PULSE_9;
			// Pass data to send
			incomplete_frame[7] = signal_count+1;

			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 0;
		}
	}
	else if(current_state == SPLIT_PULSE_9)
	{
		frame_count++;
		if(current_input == 0)
		{
			signal_count++;
		}
		// If start of pulse (current_input == 1 && previous_input == 0)
		// and If the split-pulse have the required size
		else if(signal_count > MIN_SPILT_PULSE_SIZE && signal_count < MAX_SPILT_PULSE_SIZE)
		{
			current_state = SYNC_PULSE;
			signal_count = 0;
		}
		else
		{
			current_state = UNKNOWN;
			signal_count = 0;
			previous_input = 1;
		}
	}

	// Output writes
	output = horizontal_movement;
}
