/// @description Insert description here
// You can write your code in this editor
scr_one_channel_sound(snd_get_item);
if global.dream == 1000 {
	score += global.dream;
	var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
	inst1.display_score = global.dream;
}
else {
	score += global.dream + 100;
	global.dream += 100
	var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
	inst1.display_score = global.dream + 100;
}
instance_destroy();