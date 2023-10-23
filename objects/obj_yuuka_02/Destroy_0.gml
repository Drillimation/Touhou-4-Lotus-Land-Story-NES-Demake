/// @description Insert description here
// You can write your code in this editor
GME_Stop();
audio_play_sound(snd_endgame,10,false);
instance_create_depth(0,0,0,obj_endgame);
if life <= 0 {
	//audio_play_sound(snd_explosion,10,false);
	score += defeat_bonus + (timer * 100);
	instance_create_depth(0,0,0,obj_clear_all_small);
	var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
	inst1.font = font_add_sprite(spr_font_score_bonus,48,false,0);
	inst1.display_score = defeat_bonus;
}
else {
	instance_create_depth(0,0,0,obj_clear_all_small);
}