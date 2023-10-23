/// @description Insert description here
// You can write your code in this editor
/*if sprite_index == spr_stardust_reverie {
	draw_set_alpha(0.0625)
}
else {
	draw_set_alpha(0.5);
}*/
draw_set_color(make_color_rgb(0,0,0));
draw_rectangle(0,0,191,240,false);
draw_set_alpha(1);
draw_self();
draw_set_font(font_main_jap);
draw_sprite(spr_player_spell,0,8,224);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(0,0,0));
draw_text(8+1,224+1,text)
draw_set_color(make_color_rgb(252,252,252));
draw_text(8,224,text)