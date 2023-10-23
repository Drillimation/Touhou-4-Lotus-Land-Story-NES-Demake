/// @description Insert description here
// You can write your code in this editor
draw_set_font(font);
draw_set_color(make_color_rgb(0,0,0));
draw_set_halign(fa_center);
draw_text(x+1,y+1,string(display_score));
draw_set_color(make_color_rgb(248,248,248));
draw_text(x,y,string(display_score));