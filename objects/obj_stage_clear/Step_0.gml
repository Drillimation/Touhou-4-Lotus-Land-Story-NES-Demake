/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_anykey) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	if global.stage == 7 {
		room_goto(room_results)
	}
	else {
		room_goto_next();
	}
}