/// @description Insert description here
// You can write your code in this editor
if exitatbottom == false {
	instance_create_depth(x,y,0,obj_explosion);
	scr_one_channel_sound(snd_hit);
	score += 50;
	randomize();
	if irandom(2) = 1 {
		instance_create_depth(x,y,-1000,choose(obj_power_item_large,obj_power_item,obj_point_item,obj_dream_item));
	}
}
else
{
	exit
}