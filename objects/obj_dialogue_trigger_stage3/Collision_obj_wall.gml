/// @description Insert description here
// You can write your code in this editor
var _inst = instance_create_layer(0, 0, layer, obj_dialogue);
with(_inst) {
	stage = "game_files/stage3_prebattle"
	file = string(stage) + string(global.suf) + ".ini";
	ini_open(file);
	title = ini_read_string("reveal","title","No title\nNo description");
	title_format = string_replace_all(title, "#", "\n");
	switch (global.character) {
	case "REIMU":
    scr_dialogue_line(0,spr_reimu_content,spr_blank,snd_blip_m,false);
	scr_dialogue_line(1,spr_reimu_content,spr_elly_content,snd_blip_f,false);
	scr_dialogue_line(2,spr_reimu_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(3,spr_reimu_happy,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(4,spr_reimu_happy,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(5,spr_reimu_happy,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(6,spr_reimu_happy,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(7,spr_reimu_happy,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(8,spr_reimu_happy,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(9,spr_reimu_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(10,spr_reimu_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(11,spr_reimu_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(12,spr_reimu_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(13,spr_reimu_content,spr_elly_concern,snd_blip_f,true);
	scr_dialogue_line(14,spr_reimu_happy,spr_elly_concern,snd_blip_m,true);
	scr_dialogue_line(15,spr_reimu_happy,spr_elly_sweat,snd_blip_f,true);
	scr_dialogue_line(16,spr_reimu_happy,spr_elly_sweat,snd_blip_f,true);
	scr_dialogue_line(17,spr_reimu_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(18,spr_reimu_content,spr_elly_content,snd_blip_f,true);
	ini_close();
	for (var i = 0; i < 19; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
    text_last = 18;
	break;

	case "MARISA":
    scr_dialogue_line(0,spr_marisa_content,spr_blank,snd_blip_m,false);
	scr_dialogue_line(1,spr_marisa_content,spr_elly_content,snd_blip_f,false);
	scr_dialogue_line(2,spr_marisa_content,spr_elly_content,snd_blip_m,false);
	scr_dialogue_line(3,spr_marisa_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(4,spr_marisa_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(5,spr_marisa_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(6,spr_marisa_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(7,spr_marisa_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(8,spr_marisa_content,spr_elly_content,snd_blip_m,true);
	scr_dialogue_line(9,spr_marisa_content,spr_elly_concern,snd_blip_f,true);
	scr_dialogue_line(10,spr_marisa_happy,spr_elly_sweat,snd_blip_m,true);
	scr_dialogue_line(11,spr_marisa_happy,spr_elly_sweat,snd_blip_f,true);
	scr_dialogue_line(12,spr_marisa_happy,spr_elly_sweat,snd_blip_f,true);
	scr_dialogue_line(13,spr_marisa_content,spr_elly_content,snd_blip_f,true);
	scr_dialogue_line(14,spr_marisa_content,spr_elly_content,snd_blip_f,true);
	ini_close();
	for (var i = 0; i < 15; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
    text_last = 14;
	break;
	}
	text_width = 192;
	destroy_action = true;
	destroy_script = scr_create_boss;
	arg1 = obj_elly
	arg2 = 96
	arg3 = 40
	arg4 = 8
}
instance_destroy();