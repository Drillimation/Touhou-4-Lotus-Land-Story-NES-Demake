/// @description Insert description here
// You can write your code in this editor
global.stage_speed = 0;
boss = true;
vspeed = 1;
if !instance_exists(obj_clear_all_small) {
	instance_create_depth(0,0,0,obj_clear_all_small)
}