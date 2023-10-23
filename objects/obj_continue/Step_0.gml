/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			score = round((score / 10) / 2) * 10;
			global.continuesused += 1;
			lives = 3;
			global.bombs = 3;
			switch(global.stage) {
				case 1: room_goto(room_intermission1); break;
				case 2: room_goto(room_intermission2); break;
				case 3: room_goto(room_intermission3); break;
				case 4: room_goto(room_intermission4); break;
				case 5: room_goto(room_intermission5); break;
				case 6: room_goto(room_intermission6); break;
				case 7: room_goto(room_intermission7); break;
			}
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			room_goto(room_results);
			break;
	}
}