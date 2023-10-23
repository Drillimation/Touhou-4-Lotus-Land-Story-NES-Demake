
// The following is a check to refill audio buffers
// if playing has stopped unexpectedly from moving window etc.
if(playing && !end_reached && !audio_is_playing(snd_queue))
{
  // Fill all the audio buffers with song data and add to queue
  for(var i=0; i<buffer_count; i++) {
    end_reached = !GameMusicEmu_Read(buf_pointer[i]);
    audio_queue_sound(snd_queue, buf[i], 0, buffer_size);
    if(end_reached)
      break;
  }
  // Play the queue
  audio_play_sound(snd_queue, 10, false);
  audio_sound_gain(snd_queue, 0.7, 0);
  buffer_index = 0;
}

