/// @description Insert description here
// You can write your code in this editor
scr_get_input();
//depth = -y
script_execute(state);

if keyboard_check(vk_shift) or gamepad_button_check(0,gp_face2) or gamepad_button_check(0,gp_shoulderl) or gamepad_button_check(0,gp_shoulderlb) {
	focusmode = true;
	spd = 1;
}
else {
	focusmode = false;
	spd = 1.5
}

if keyboard_check(ord("Z")) or gamepad_button_check(0,gp_face1) {
	scr_player_shoot_speed()
}
if global.pow > 100 {
	global.pow = 100;
}
if global.pow < 0 {
	global.pow = 0;
}
if global.dream > 1000 {
	global.dream = 1000;
}
if global.dream < 0 {
	global.dream = 0;
}
gamepad_set_button_threshold(0,0.5);
if !instance_exists(obj_dialogue) {
	if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_shoulderr) or gamepad_button_check_pressed(0,gp_shoulderrb) {
		if global.bombs >= 1 and global.pow >= 10 and !instance_exists(obj_spellbomb) {
			global.bombs -= 1;
			global.pow -= 10;
			instance_create_layer(x,y,"Spell",obj_spellbomb);
			with (obj_spellbomb) {
				if global.character == "MARISA" and global.weapontype == 0 {
					direction = 0;
					for(var i = 1; i < 8; i += 1) {
						inst2 = instance_create_layer(x,y,"Spell",obj_spellbomb);
						inst2.direction = i * 45;
						randomize();
						inst2.image_index = choose(0,1,2);
					}
				}
			}
		}
		else {
			audio_play_sound(snd_buzzer,10,false);
		}
	}
}
if health <= 0 {
	scr_one_channel_sound(snd_pichuun);
	if global.pnt_item >= 10 + (10 * global.revivesused) {
		global.pnt_item -= 10 + (10 * global.revivesused)
		global.revivesused += 1
		health = 30;
		randomize();
		instance_create_depth(obj_player.x + irandom_range(-32,32),obj_player.y + irandom_range(-32,32),0,obj_power_item_large)
		for (var i = 0; i < 4; i += 1) {
			instance_create_depth(obj_player.x + irandom_range(-32,32),obj_player.y + irandom_range(-32,32),0,obj_power_item)
		}
		obj_player.x = 96
		obj_player.y = 216
		invincible = true;
	}
	else {
		room_goto(room_gameover);
	}
}
global.diedat_x = x;
global.diedat_y = y;
if invincible == true {
	if alarm[1] < 0 {
		alarm[1] = 300;
	}
}