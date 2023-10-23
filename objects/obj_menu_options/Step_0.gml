/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false);
			global.gamemode = 0;
			room_goto(room_setup);
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false);
			global.gamemode = 1;
			room_goto(room_setup);
			break;
		case 2:
			audio_play_sound(snd_menuconfirm,1,false);
			GME_Stop()
			room_goto(room_sound_test);
			break;
		case 3:
			audio_play_sound(snd_menuconfirm,1,false);
			game_end();
			break;
	}
}

if keyboard_check_pressed(ord("R")) {
	game_restart();
}