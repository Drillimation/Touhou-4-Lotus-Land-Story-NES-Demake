// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_soundtrack(_song){
	//Start up the soundtrack upon first load
	sound_index = GME_LoadSong("game_files/touhou_gensoukyou.nsf"); // Load the soundtrack
	if(sound_index != noone) { // Check if song has been loaded
		GME_StartTrack(_song); // Start the first track (subtune)
		GME_Play(); // Play the track
		GME_SetPosition(0);
	}
}

function scr_play(_song) {
	GME_StartTrack(_song); // Start the first track (subtune)
	GME_Play(); // Play the track
}