/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font);
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(0,0,0));
draw_rectangle(0,0,191,240,false);
draw_set_alpha(1);
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_center);
draw_text(96,8,"STAGE " + string(global.stage) + " CLEAR")
draw_text(96,200,@"PUSH FIRE BUTTON
TO CONTINUE")
draw_set_halign(fa_left);
draw_text(8,24,"RANK");
draw_text(8,40,"BOMBS");
if global.chuhoujoutaimode == true {
	draw_text(8,56,"LIFE");
}
else {
	draw_text(8,56,"LIVES");
}
draw_text(8,72,"PNT");
draw_text(8,88,"POW");
draw_text(8,104,"DREAM");
draw_text(8,120,"TOTAL");
draw_set_halign(fa_right);
draw_text(184,24,clear_rank);
draw_text(184,40,clear_bombs);
if global.chuhoujoutaimode == true {
	draw_text(184,56,clear_health);
}
else {
	draw_text(184,56,clear_lives);
}
draw_text(184,72,clear_pnt);
draw_text(184,88,clear_pow);
draw_text(184,104,clear_dream);
draw_text(184,120,clear_total);