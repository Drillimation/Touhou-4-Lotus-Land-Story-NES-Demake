/// Fill an audio buffer and add it to the queue

if(playing && !end_reached)
{
  // Fill the buffer with audio data
  end_reached = !GameMusicEmu_Read(buf_pointer[buffer_index]);
  
  // Add the buffer to the queue
  audio_queue_sound(snd_queue, buf[buffer_index], 0, buffer_size);
  
  // Increase the buffer index and wrap to zero if last buffer has been queued
  buffer_index++;
  if(buffer_index >= buffer_count)
    buffer_index = 0;
}

