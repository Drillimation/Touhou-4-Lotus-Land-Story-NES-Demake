/// @description Insert description here
// You can write your code in this editor
var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
with(_inst) {
	stage = "game_files/extrastage_gengetsu"
	file = string(stage) + string(global.suf) + ".ini";
	ini_open(file);
	title = ini_read_string("reveal","title","No title\nNo description");
	title_format = string_replace_all(title, "#", "\n");
	switch (global.character) {
	case "REIMU":
    scr_dialogue_line(0,spr_reimu_happy,spr_mugetsu_shock,snd_blip_m,false);
	scr_dialogue_line(1,spr_reimu_happy,spr_mugetsu_shock,snd_blip_f,false);
	scr_dialogue_line(2,spr_reimu_happy,spr_mugetsu_shock,snd_blip_f,false);
	scr_dialogue_line(3,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,false);
	scr_dialogue_line(4,spr_reimu_happy,spr_gengetsu_content,snd_blip_m,false);
	scr_dialogue_line(5,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,false);
	scr_dialogue_line(6,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(7,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(8,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(9,spr_reimu_happy,spr_gengetsu_content,snd_blip_m,true);
	scr_dialogue_line(10,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(11,spr_reimu_happy,spr_gengetsu_content,snd_blip_m,true);
	scr_dialogue_line(12,spr_reimu_happy,spr_gengetsu_content,snd_blip_f,true);
    text_last = 12;
	for (var i = 0; i < 13; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
	break;
	
	case "MARISA":
    scr_dialogue_line(0,spr_marisa_content,spr_mugetsu_shock,snd_blip_m,false);
	scr_dialogue_line(1,spr_marisa_content,spr_mugetsu_shock,snd_blip_f,false);
	scr_dialogue_line(2,spr_marisa_content,spr_mugetsu_shock,snd_blip_f,false);
	scr_dialogue_line(3,spr_marisa_content,spr_mugetsu_shock,snd_blip_m,false);
	scr_dialogue_line(4,spr_marisa_content,spr_gengetsu_content,snd_blip_f,false);
	scr_dialogue_line(5,spr_marisa_content,spr_gengetsu_content,snd_blip_m,false);
	scr_dialogue_line(6,spr_marisa_content,spr_gengetsu_content,snd_blip_f,false);
	scr_dialogue_line(7,spr_marisa_content,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(8,spr_marisa_content,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(9,spr_marisa_content,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(10,spr_marisa_content,spr_gengetsu_content,snd_blip_m,true);
	scr_dialogue_line(11,spr_marisa_content,spr_gengetsu_content,snd_blip_f,true);
	scr_dialogue_line(12,spr_marisa_content,spr_gengetsu_content,snd_blip_f,true);
    text_last = 12;
	for (var i = 0; i < 13; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
	break;	
	}
	ini_close();
	text_width = 192;
	destroy_action = true;
	destroy_script = scr_create_boss;
	arg1 = obj_gengetsu
	arg2 = 96
	arg3 = 40
	arg4 = 18
}
if life <= 0 {
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
//global.stage_speed = 0.5;