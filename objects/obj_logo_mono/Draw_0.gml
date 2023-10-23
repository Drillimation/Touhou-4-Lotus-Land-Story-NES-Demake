/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(global.font);
draw_set_color(make_color_rgb(248,216,120));
draw_set_halign(fa_center)
draw_text(128,0,@"HIGH SCORE")
draw_set_halign(fa_left)
draw_text(16,0,"1UP")

draw_set_halign(fa_right)
draw_set_color(make_color_rgb(252,252,252));
draw_text(56,8,score);
draw_text(152,8,global.highscore);