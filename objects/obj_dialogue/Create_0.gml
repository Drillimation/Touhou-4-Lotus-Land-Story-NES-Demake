/// @description Insert description here
// You can write your code in this editor
depth = -1000;
scr_region();
stage = "test"
file = "game_files/" + string(stage) + string(global.suf) + ".ini";
ini_open(file);
title = ini_read_string("reveal","title","No title\nNo description");
title_format = string_replace_all(title, "#", "\n");
scr_dialogue_line(0,spr_reimu_content,spr_blank,snd_blip_m,false);
scr_dialogue_line(1,spr_reimu_content,spr_blank,snd_blip_f,true);
ini_close();

text_current = 0;
text_last = 1;
text_width = 192;
text_x = 0;
text_y = 200;

char_current = 1;
char_speed = 0.25;
reveal = 0;
alarm[1] = char_speed * 12;
name_reveal = false;

destroy_action = false;
destroy_script = scr_do_nothing;

text[text_current] = scr_string_wrap(text[text_current], text_width);