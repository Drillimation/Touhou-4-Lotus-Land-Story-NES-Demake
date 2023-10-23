/// @description Insert description here
// You can write your code in this editor
scr_menu_input();
scr_menu_input_2d();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_x) {
		case 0:
			switch(menu_index_y) {
				case 0:
					audio_play_sound(snd_menuconfirm,1,false)
					global.difficulty = 0;
					instance_create_depth(24,80,0,obj_choose_gametype)
					instance_destroy();
					break;
				case 1:
					audio_play_sound(snd_menuconfirm,1,false)
					global.difficulty = 2;
					instance_create_depth(24,80,0,obj_choose_gametype)
					instance_destroy();
					break;
			}
			break;
		case 1:
			switch(menu_index_y) {
				case 0:
					audio_play_sound(snd_menuconfirm,1,false)
					global.difficulty = 1;
					instance_create_depth(24,80,0,obj_choose_gametype)
					instance_destroy();
					break;
				case 1:
					audio_play_sound(snd_menuconfirm,1,false)
					global.difficulty = 3;
					instance_create_depth(24,80,0,obj_choose_gametype)
					instance_destroy();
					break;
			}
	}
}