/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < buttons_y ; i++) {
font = font_add_sprite(spr_font,32,false,0);
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(248,248,248));
for (var j = 0; j < buttons_x ; j++) {
	draw_text(x + (button_h * j), y + (button_h * i), button[i,j]);
}
}
draw_set_color(make_color_rgb(248,56,0));
draw_text(x + (button_h * menu_index_x), y + (button_h * menu_index_y), button[menu_index_y,menu_index_x]);
draw_set_color(make_color_rgb(248,248,248));
draw_text(8,24,"RANK");
draw_text(80,24,"NAME");
draw_text(152,24,"SCORE");
draw_text(208,24,"STAGE");
for (var i = 0; i < 10; i += 1) {
	draw_text(24,32 + (i * 8),string(i + 1));
	draw_text(56,32 + (i * 8),string(global.rank[i][0]));
}
draw_set_halign(fa_right);
for (var i = 0; i < 10; i += 1) {
	draw_text(200,32 + (i * 8),string(global.rank[i][1]));
	draw_text(240,32 + (i * 8),string(global.rank[i][2]));
}
draw_set_halign(fa_center);
draw_text(128,160,p1_name);
draw_text(192,192,score);
draw_set_halign(fa_left);