
// It seems that when sending a pointer to a dll, only one argument can be defined,
// any other arguments won't work.

// ★★★★★★★★★★★★★★★★★★★★★★★★★★★★
// ☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠
#region variables
// Instance variables
snd_queue = noone;
buffer_gme = noone;
buffer_gme_address = 0;
buffer_gme_size = 0;
playing = false;
end_reached = true;
track_number = -1;
#endregion

// Buffer size in the dll is 760*2 so we need to match that here
buffer_size = 1520;

// The number of audio buffers
buffer_count = 20;

// Buffer index is used to keep track of current buffer to fill / add to queue
buffer_index = 0;

// Sample rate is hardcoded to 44100 in the dll
sample_rate = 44100;

// Create the audio buffers
for(var i=0; i<buffer_count; i++)
{
  buf[i] = buffer_create(buffer_size, buffer_fixed, 2);
  buf_pointer[i] = string(buffer_get_address(buf[i]));
  buffer_fill(buf[i], 0, buffer_u8, 0, buffer_size);
}
