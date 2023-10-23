/// @description Insert description here
// You can write your code in this editor
if boss == false {
	vspeed = global.stage_speed;
}
/*else {
	vspeed = 0;
}*/
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var begin_attack_delay = 60;
if y >= vy+0 {
	display_stats = true;
	canattack = true;
	if alarm[2] < 0 {
		alarm[2] = 60;
	}
	if canattack == true {
		if oneattack == 0 {
			if alarm[0] < 0 {
			alarm[0] = begin_attack_delay;
			}
		}
	}
	/*if speed > 0 {
	friction=0.01;
	}
	else
	{
	friction=0;
	}*/
}
if y < 32 {
	y = 32; 
}
if y > 96 {
	y = 96; 
}
if x < 48 {
	x = 48; 
}
if x > 144 {
	x = 144; 
}

if y >= vy+240 {
	instance_destroy();
}
if timer == 0 {
	hp = 0;
	timed_out = true;
}

if hp <= 0 {
	life -= 1;
	global.spell_card_time = timer;
	hspeed = 0;
	vspeed = 0;
	if life >= 1 {
		hp = starthp;
		scr_next_attack();
		randomize();
		if timed_out == false {
			instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item_large)
			for (var i = 0; i < 4; i += 1) {
				instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item)
			}
		}
		instance_create_depth(0,0,0,obj_clear_all_small);
		timer = start_time;
		timed_out = false;
	}
	else {
		exitatbottom = false;
		instance_destroy()
	}
}