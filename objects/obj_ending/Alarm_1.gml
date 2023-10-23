/// @description Insert description here
// You can write your code in this editor
if (char_current < string_length(text[text_current])) {
	randomize();
	audio_sound_pitch(blip[text_current],random_range(1.0,1.1))
	scr_one_channel_sound(blip[text_current])
	alarm[1] = char_speed * 12;
}