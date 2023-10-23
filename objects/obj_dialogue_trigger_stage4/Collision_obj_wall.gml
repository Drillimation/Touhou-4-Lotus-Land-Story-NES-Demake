/// @description Insert description here
// You can write your code in this editor
var _inst = instance_create_layer(0, 0, layer, obj_dialogue);
with(_inst) {
	stage = "game_files/stage4_prebattle"
	file = string(stage) + string(global.suf) + ".ini";
	ini_open(file);
	title = ini_read_string("reveal",global.character,"No title\nNo description");
	title_format = string_replace_all(title, "#", "\n");
	switch (global.character) {
	case "REIMU":
    scr_dialogue_line(0,spr_reimu_content,spr_blank,snd_blip_m,false);
	scr_dialogue_line(1,spr_reimu_content,spr_blank,snd_blip_f,false);
	scr_dialogue_line(2,spr_reimu_content,spr_marisa_content,snd_blip_f,false);
	scr_dialogue_line(3,spr_reimu_content,spr_marisa_content,snd_blip_f,false);
	scr_dialogue_line(4,spr_reimu_content,spr_marisa_content,snd_blip_m,false);
	scr_dialogue_line(5,spr_reimu_content,spr_marisa_joy,snd_blip_f,false);
	scr_dialogue_line(6,spr_reimu_anger,spr_marisa_joy,snd_blip_m,true);
	scr_dialogue_line(7,spr_reimu_anger,spr_marisa_joy,snd_blip_f,true);
	scr_dialogue_line(8,spr_reimu_anger,spr_marisa_joy,snd_blip_m,true);
	scr_dialogue_line(9,spr_reimu_anger,spr_marisa_anger,snd_blip_f,true);
	scr_dialogue_line(10,spr_reimu_anger,spr_marisa_anger,snd_blip_m,true);
	scr_dialogue_line(11,spr_reimu_anger,spr_marisa_anger,snd_blip_f,true);
	scr_dialogue_line(12,spr_reimu_anger,spr_marisa_anger,snd_blip_m,true);
	ini_close();
	for (var i = 0; i < 13; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
    text_last = 12;
	arg1 = obj_marisa_boss
	arg4 = 11
	break;

	case "MARISA":
    scr_dialogue_line(0,spr_marisa_content,spr_blank,snd_blip_m,false);
	scr_dialogue_line(1,spr_marisa_content,spr_blank,snd_blip_f,false);
	scr_dialogue_line(2,spr_marisa_content,spr_reimu_content,snd_blip_f,false);
	scr_dialogue_line(3,spr_marisa_content,spr_reimu_content,snd_blip_m,false);
	scr_dialogue_line(4,spr_marisa_happy,spr_reimu_content,snd_blip_m,false);
	scr_dialogue_line(5,spr_marisa_content,spr_reimu_content,snd_blip_f,false);
	scr_dialogue_line(6,spr_marisa_content,spr_reimu_anger,snd_blip_f,true);
	scr_dialogue_line(7,spr_marisa_joy,spr_reimu_anger,snd_blip_m,true);
	scr_dialogue_line(8,spr_marisa_joy,spr_reimu_anger,snd_blip_f,true);
	scr_dialogue_line(9,spr_marisa_evil,spr_reimu_anger,snd_blip_m,true);
	scr_dialogue_line(10,spr_marisa_evil,spr_reimu_anger,snd_blip_f,true);
	scr_dialogue_line(11,spr_marisa_joy,spr_reimu_anger,snd_blip_m,true);
	ini_close();
	for (var i = 0; i < 12; i += 1) {
		text[i] = string_replace_all(text[i], "#", "\n");
	}
    text_last = 11;
	arg1 = obj_reimu_boss
	arg4 = 10
	break;
	}
	text_width = 192;
	destroy_action = true;
	destroy_script = scr_create_boss;
	arg2 = 96
	arg3 = 40
}
instance_destroy();