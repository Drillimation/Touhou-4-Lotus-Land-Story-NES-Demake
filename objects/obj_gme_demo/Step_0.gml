/// Test various GameMusicEmu functions

// Play (if stopped)
if( keyboard_check_pressed(vk_enter) ) {
  GME_Play();
  pause = false;
}

// Stop
if( keyboard_check_pressed(vk_escape) ) {
  GME_Stop();
  pause = false;
}

// Pause / resume
if( keyboard_check_pressed(vk_space) ) {
  pause = !pause;
  //GME_Pause(pause);
  if(pause){
	audio_pause_all();
	audio_resume_sound( sound_index );
  }
  else {
	audio_resume_all();
  }
}

// Volume (gain)
if( keyboard_check_pressed(vk_pageup) )
  audio_sound_gain(sound_index,1,2000);
if( keyboard_check_pressed(vk_pagedown) )
  audio_sound_gain(sound_index,0,2000);

// Mute / unmute single voice
for(var i=0; i<=7; i++) {
  if( keyboard_check_pressed(ord(string(i+1)))) {
    mute[i] = !mute[i];
    GME_MuteVoice(i, mute[i]);
  }
}

// Set track
if( keyboard_check_pressed(vk_right) ) {
  track_number++;
  if(track_number >= song_tracks)
    track_number = 0;
  GME_StartTrack(track_number);
  GME_Play();
}
if( keyboard_check_pressed(vk_left) ) {
  track_number--;
  if(track_number < 0)
    track_number = song_tracks-1;
  GME_StartTrack(track_number);
  GME_Play();
}

// Mute / unmute multiple voices (bitmask)
if( keyboard_check_pressed(ord("M")) ) {
  GME_MuteVoices(5); // 5 = B00000101 (mute channels 0 and 2
}

// Set tempo
if( keyboard_check_pressed(vk_up) ) {
  tempo += 0.05;
  GME_SetTempo(tempo);
}
if( keyboard_check_pressed(vk_down) ) {
  if(tempo>0.1)
    tempo -= 0.05;
  GME_SetTempo(tempo);
}

// Get track length (debug message)
if( keyboard_check_pressed(ord("L")) ) {
  show_debug_message("Track length (ms): " + string(GME_GetTrackLength()));
}

// Get position (debug message)
if( keyboard_check_pressed(ord("P")) ) {
  show_debug_message("Position (ms): " + string(GME_GetPosition()));
}

// Set position
if( keyboard_check_pressed(ord("S")) ) {
  GME_SetPosition(10000);
}

// Load a new song
if(mouse_check_button_pressed(mb_left))
{
  var filename = working_directory + "supermetroid.spc";
    
  sound_index = GME_LoadSong(filename);
  if(sound_index != noone)
  {
    track_number = 0;
    song_tracks = GME_NumTracks();
    song_voices = GME_NumVoices();
    GME_StartTrack(track_number);
	name = GME_GetName();
    author = GME_GetAuthor();
    comment = GME_GetComment();
    copyright = GME_GetCopyright();
    GME_Play();
  }
  
  pause = false;
  tempo = 1;
}

