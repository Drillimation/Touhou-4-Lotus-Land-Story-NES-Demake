// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_string_wrap(_text, _width){
	var _text_wrapped = "";
	var _space = -1;
	var _char_pos = 1;
	while (string_length(_text) >= _char_pos) {
	    if (string_width(string_copy(_text, 1, _char_pos)) > _width) {
	        if (_space != -1) {
	            _text_wrapped += string_copy(_text, 1, _space) + "\n";
	            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));
	            _char_pos = 1;
	            _space = -1;
	            }
	        }
		switch(global.reg_no) {
			case 0:
				if (string_char_at(_text,_char_pos) == " ") {
				    _space = _char_pos;
				}
				break;
			case 1:
				if (_char_pos >= 24) {
				    _space = _char_pos;
				}
				break;
		}
		_char_pos += 1;
	}
	if (string_length(_text) > 0) {
	    _text_wrapped += _text;
	}
	return _text_wrapped;
}

function scr_dialogue_line(_line_no, _image1, _image2, _voice, _reveal) {
	text[_line_no] = ini_read_string(global.character,string(_line_no),"No string found!");
	speaker[_line_no] = ini_read_string("speaker-" + global.character,string(_line_no),"No person found!");
	left_image[_line_no] = _image1;
	right_image[_line_no] = _image2;
	blip[_line_no] = _voice;
	reveal_title[_line_no] = _reveal;
}

function scr_ending(_line_no,_image) {
	text[_line_no] = ini_read_string(string(ending),string(_line_no),"No string found!");
	image[_line_no] = _image;
	blip[_line_no] = snd_blip_noise;
}