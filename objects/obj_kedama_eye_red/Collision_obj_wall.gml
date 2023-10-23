/// @description Insert description here
// You can write your code in this editor
if pathed == false {
	if y > 0 {
		instance_destroy();
	}
	else {
		y = 8;
	}
	vspeed = 1;
}
else {
	if y > 0 {
		instance_destroy();
	}
	else {
		if default_path == path_kedama_07 or default_path == path_kedama_08 {
			y = 120;
		}
		else {
			y = 8;
		}
		vspeed = 0;
		path_start(default_path,path_spd,path_action_stop,false)
	}
}