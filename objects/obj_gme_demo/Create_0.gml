/// Load and play a song

// Instance variables
sound_index = noone;
track_number = 0;
song_tracks = 0;
song_voices = 0;
pause = false;
name = "";
author = "";
comment = ""
copyright = "";
tempo = 1;
for(var i=7; i>=0; i--)
  mute[i] = false;

// Local variables
var filename;

// The songs listed below can be downloaded from:
// https://www.zophar.net/music/nintendo-nes-nsf/legend-of-zelda-the
// https://www.zophar.net/music/nintendo-snes-spc/super-metroid
// https://www.zophar.net/music/gameboy-gbs/mega-man-iv
// https://www.zophar.net/music/sega-mega-drive-genesis/super-bubble-bobble-md
// Include the files in your project if you want to test with these

filename = working_directory + "test.nsf";
//filename = working_directory + "zelda.nsf";
//filename = working_directory + "supermetroid.spc";
//filename = working_directory + "megaman.gbs";
//filename = working_directory + "superbubblebobble.vgm";

// Load a song. The function will return the index to the sound queue
// which can be used if you want to set the gain (volume) or do a fade.
sound_index = GME_LoadSong(filename);
if(sound_index != noone)
{
  song_tracks = GME_NumTracks();
  song_voices = GME_NumVoices();
  GME_StartTrack(track_number);
  name = GME_GetName();
  author = GME_GetAuthor();
  comment = GME_GetComment();
  copyright = GME_GetCopyright();
  GME_Play();
}

