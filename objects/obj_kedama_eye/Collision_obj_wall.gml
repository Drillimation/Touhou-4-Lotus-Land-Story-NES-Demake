/// @description Insert description here
// You can write your code in this editor
if y > 0 {
	instance_destroy();
}
else {
	y = jump_to;
	if pathed = false {
		vspeed = 1;
	}
	else {
		vspeed = 0;
		path_start(default_path,path_spd,path_action_stop,false)
	}
}