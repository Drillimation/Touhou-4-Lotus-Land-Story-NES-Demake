/// @description GME_Pause(pause)
function GME_Pause(argument0) {

	var _pause = argument0;

	with(obj_gme)
	{
	  playing = !_pause;
	}


}
