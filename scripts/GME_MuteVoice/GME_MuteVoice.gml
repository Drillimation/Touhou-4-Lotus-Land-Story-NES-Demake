/// @description GME_MuteVoice(voice, mute)
function GME_MuteVoice(argument0, argument1) {

	var _voice = argument0;
	var _mute = argument1;

	with(obj_gme)
	{
	  GameMusicEmu_MuteVoice(_voice, _mute);
	}


}
