/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	var _len = string_length(text[text_current]);
	if (char_current < _len) {
	    char_current = _len;
	    }
	else {
	    text_current += 1;
		if (text_current == text_last) {
			if destroy_script == scr_create_boss {
				GME_Stop();
			}
		}
	    if (text_current > text_last) {
	        instance_destroy();
        }
		else {
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
			if alarm[1] < 0 {
				alarm[1] = char_speed * 12;
			}
			if reveal_title[text_current] == true {
				name_reveal = true;
				if alarm[0] < 0 {
					alarm[0] = 30;
				}
			}
        }
    }
}
