/// @description Insert description here
// You can write your code in this editor
difference = score - global.displayscore;
if score > global.highscore {
	global.highscore = score;
}
if global.displayscore < score or global.displayscore > score {
	if difference >= 1000 {
		global.displayscore += 1000;
	}
	else if difference >= 100 {
		global.displayscore += 100;
	}
	else if difference >= 10 {
		global.displayscore += 10;
	}
}
else {
	global.displayscore = score;
}

if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) {
	if paused == false {
		audio_play_sound(snd_pause,10,false);
		paused = true;
		instance_deactivate_all(false);
		//instance_deactivate_region(0,-4096,256,8192,true,false);
		instance_activate_object(obj_gme)
		instance_activate_object(obj_display_manager);
		instance_activate_object(obj_resize);
		if !instance_exists(obj_pause) {
			instance_create_depth(128,112,0,obj_pause);
			instance_activate_object(obj_pause);
		}
	}
	else {
		paused = false;
		instance_destroy(obj_pause);
		instance_activate_all();
	}
}

if score > global.scoreforlife {
	if global.chuhoujoutaimode == false {
		lives += 1
		global.received += 1;
		scr_one_channel_sound(snd_get_life);
		global.scoreforlife += (global.received * 100000);
	}
	else {
		global.bombs += 1;
		global.received += 1;
		scr_one_channel_sound(snd_get_bomb);
		global.scoreforlife += (global.received * 100000);
	}
}