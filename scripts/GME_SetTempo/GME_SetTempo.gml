/// @description GME_SetTempo(tempo)
function GME_SetTempo(argument0) {

	var _tempo = argument0;

	with(obj_gme)
	{
	  GameMusicEmu_SetTempo(_tempo);
	}


}
