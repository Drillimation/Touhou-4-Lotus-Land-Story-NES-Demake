/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,1,false)
	GME_Stop()
	if alarm[2] != 0 {
		alarm[2] = 30;
	}
}
if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2) {
	GME_Stop()
	room_goto(room_title);
}