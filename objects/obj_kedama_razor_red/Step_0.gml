/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var begin_attack_delay = 60;
if y >= vy+0 {
	canattack = true;
	if canattack == true {
		if oneattack == 0 {
			if alarm[0] < 0 {
			alarm[0] = begin_attack_delay;
			}
		}
	}
}

if y >= vy+240 {
	instance_destroy();
}

//Enemy AI
if hp <= 0 {
	exitatbottom = false;
	instance_destroy();
}
if canattack == false {
	if global.stage == 6 {
		hp = 500;
	}
	else {
		hp = 25;
	}
	vspeed = global.stage_speed;
}
else {
	//vspeed = 0;
	//speed -= 0.001;
	if direction > point_direction(x,y,obj_player.x,obj_player.y) {
		direction -= 0.1;
	}
	if direction < point_direction(x,y,obj_player.x,obj_player.y) {
		direction += 0.1;
	}
}
