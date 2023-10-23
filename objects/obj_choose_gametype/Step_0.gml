/// @description Insert description here
// You can write your code in this editor
scr_menu_input()

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false)
			global.chuhoujoutaimode = false;
			instance_create_depth(24,120,0,obj_choose_weapontype)
			instance_destroy();
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false)
			global.chuhoujoutaimode = true;
			instance_create_depth(24,120,0,obj_choose_weapontype)
			instance_destroy();
			break;
	}
}