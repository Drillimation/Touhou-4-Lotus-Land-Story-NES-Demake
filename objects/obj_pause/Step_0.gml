/// @description Insert description here
// You can write your code in this editor
scr_menu_input();
if !instance_exists(obj_dialogue) {
	if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
		switch(menu_index_y) {
			case 0:
				audio_play_sound(snd_menuconfirm,1,false)
				instance_activate_all();
				obj_control.paused = false;
				instance_destroy();
				break;
			case 1:
				audio_play_sound(snd_menuconfirm,1,false)
				GME_Stop();
				room_goto(room_title);
				break;
		}
	}
	if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) {
		audio_play_sound(snd_pause,10,false);
		instance_activate_all();
		instance_destroy();
		obj_control.paused = false;
	}
}