/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.language);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_sprite(image[text_current],0,0,0);
draw_set_color(make_color_rgb(252,252,252));
var len = string_length(text[text_current]); if (char_current < len) { char_current += char_speed; }
var _str = string_copy(text[text_current], 1, char_current);
if global.reg_no == 0 {
	draw_text(text_x, text_y + 8, _str);
}
else {
	draw_text_ext(text_x, text_y + 8, _str,8,text_width);
}
//draw_set_color(make_color_rgb(248,56,0));
//draw_text(text_x, text_y, speaker[text_current]);