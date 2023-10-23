/// @description Insert description here
// You can write your code in this editor
scr_menu_input();
scr_menu_input_2d();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_numpad2) or gamepad_button_check_pressed(0,gp_face1) and string_length(p1_name) < 10 {
	audio_play_sound(snd_menuconfirm,1,false)
	p1_name += button[menu_index_y][menu_index_x];
}

if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_numpad6) or gamepad_button_check_pressed(0,gp_face2) {
	audio_play_sound(snd_menu_cancel,1,false)
	p1_name = string_delete(p1_name, string_length(p1_name), 1);
}

if keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start) {
	for (var i = 0; i <= 9; i += 1) {
		if score > global.rank[i][1] {
			for (var j = 9; j > i; j -= 1) {
				global.rank[j][0] = global.rank[j - 1][0];
				global.rank[j][1] = global.rank[j - 1][1];
				global.rank[j][2] = global.rank[j - 1][2];
			}
			global.rank[i][0] = p1_name;
			global.rank[i][1] = score;
			global.rank[i][2] = global.stage;
			break;
		}
	}
	ini_open("highscores.ini")
	for (var i = 0; i <= 9; i += 1) {
		ini_write_string(string(i),"name",global.rank[i][0])
		ini_write_real(string(i),"score",global.rank[i][1]);
		ini_write_real(string(i),"stage",global.rank[i][2]);
	}
	ini_close();
	GME_Stop();
	instance_create_depth(0,0,0,obj_true_game_over);
	instance_destroy();
}