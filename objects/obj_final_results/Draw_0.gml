/// @description Insert description here
// You can write your code in this editor
fnt = font_add_sprite(spr_font,32,false,0);
draw_set_font(fnt);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(248,56,0));
draw_text(128,24,"FINAL RESULTS")
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(252,252,252));
draw_text(24,40,"FINAL SCORE")
draw_text(24,56,"CONTINUES USED")
draw_text(24,72,"DANMAKU GRAZED")
draw_text(24,88,"POINT ITEMS")
draw_set_halign(fa_right);
draw_text(232,48,score)
draw_text(232,64,global.continuesused)
draw_text(232,80,global.graze)
draw_text(232,96,global.pnt_item)
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(248,56,0));
draw_text(128,200,@"PUSH FIRE BUTTON
TO CONTINUE")