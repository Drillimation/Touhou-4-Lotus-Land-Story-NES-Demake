/// @description Insert description here
// You can write your code in this editor
if y > 0 {
	instance_destroy();
}
else {
	y = 8;
	if global.stage == 7 {
		vspeed = 0;
		path_start(default_path,2,path_action_stop,false)
	}
	else {
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		//vspeed = 0;
		speed = 0.5;
	}
}