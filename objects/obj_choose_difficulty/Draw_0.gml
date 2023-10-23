/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < buttons_y ; i++) {
draw_set_font(global.font);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(248,248,248));
for (var j = 0; j < buttons_x ; j++) {
	draw_text(x + (104 * j), y + (button_h * i), button[i][j]);
}
}
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(246,56,0));
draw_text(x + (104 * menu_index_x), y + (button_h * menu_index_y), button[menu_index_y][menu_index_x]);

draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);
draw_set_font(global.language);
draw_text_ext(24,184,button_desc[menu_index_y][menu_index_x][global.reg_no],8,200);