/// @description Insert description here
// You can write your code in this editor
scr_region();
stage = "game_files/endings"
file = string(stage) + string(global.suf) + ".ini";
ini_open(file);
if global.continuesused >= 1 {
	switch(global.character) {
		case "REIMU": ending = 0; break;
		case "MARISA": ending = 1; break;
	}
}
else {
	switch(global.character) {
		case "REIMU":
			switch (global.weapontype) {
				case 0: ending = 2; break;
				case 1: ending = 3; break;
			}
			break;
		case "MARISA":
			switch (global.weapontype) {
				case 0: ending = 4; break;
				case 1: ending = 5; break;
			}
			break;
	}
}
scr_ending(0,spr_ending_00);
for (var i = 1; i < 4; i += 1) {
	switch(ending) {
		case 0: scr_ending(i,spr_ending_01); break;
		case 1: scr_ending(i,spr_ending_02); break;
		case 2: scr_ending(i,spr_ending_03); break;
		case 3: scr_ending(i,spr_ending_03); break;
		case 4: scr_ending(i,spr_ending_04); break;
		case 5: scr_ending(i,spr_ending_05); break;
	}
}
for (var i = 0; i < 4; i += 1) {
	text[i] = string_replace_all(text[i], "#", "\n");
}
ini_close();

text_current = 0;
text_last = 3;
text_width = 256;
text_x = 0;
text_y = 192;

char_current = 1;
char_speed = 0.25;
reveal = 0;
alarm[1] = char_speed * 12;
name_reveal = false;

//destroy_action = false;
//destroy_script = scr_do_nothing;

text[text_current] = scr_string_wrap(text[text_current], text_width);