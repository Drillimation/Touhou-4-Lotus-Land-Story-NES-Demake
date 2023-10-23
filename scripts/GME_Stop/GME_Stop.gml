/// @description GME_Stop()
function GME_Stop() {

	with(obj_gme)
	{
	  playing = false;
	  GME_StartTrack(track_number);
	}


}
