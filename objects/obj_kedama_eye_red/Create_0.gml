/// @description Insert description here
// You can write your code in this editor
canattack = false;
vspeed = global.stage_speed;
//depth = 0;
oneattack = 0;
exitatbottom = true;
hp = 5;

pathed = false;
if global.stage == 6 {
	if x > 96 {
		default_path = path_kedama_08
	}
	else {
		default_path = path_kedama_07
	}
}
else {
	if x > 96 {
		default_path = path_bakebake_02
	}
	else {
		default_path = path_bakebake_01
	}
}
path_spd = 1.5;
