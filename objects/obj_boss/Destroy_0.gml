/// @description Insert description here
// You can write your code in this editor
if life <= 0 {
	randomize();
	instance_create_depth(x,y - 24,0,choose(obj_bomb_item,obj_life_item))
	instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item_large)
	for (var i = 0; i < 4; i += 1) {
		instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item)
	}
	for (var j = 0; j < 5; j += 1) {
		instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_point_item)
	}
	audio_play_sound(snd_explosion,10,false);
	score += defeat_bonus + (timer * 100);
	instance_create_depth(0,0,0,obj_clear_all_small);
	var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
	inst1.font = font_add_sprite(spr_font_score_bonus,48,false,0);
	inst1.display_score = defeat_bonus;
}
else {
	instance_create_depth(0,0,0,obj_clear_all_small);
}
global.stage_speed = 0.5;