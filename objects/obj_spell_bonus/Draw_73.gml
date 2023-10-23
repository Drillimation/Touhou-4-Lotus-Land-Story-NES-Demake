/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font);
draw_set_halign(fa_center);
if cleared == true {
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(96+1,16+1,"SPELL CARD BONUS")
	draw_set_color(make_color_rgb(248,184,0));
	draw_text(96,16,"SPELL CARD BONUS")
	font2 = font_add_sprite(spr_spell_card_numerals,48,false,0);
	draw_set_font(font2);
	draw_set_color(make_color_rgb(248,56,0));
	draw_text(96,24,bonus)
}
else {
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(96+1,16+1,"SPELL BONUS FAILED")
	draw_set_color(make_color_rgb(248,184,0));
	draw_text(96,16,"SPELL BONUS FAILED")
}
draw_set_color(make_color_rgb(252,252,252));