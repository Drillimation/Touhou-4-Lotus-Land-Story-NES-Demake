/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat (buttons_y) 
{
draw_set_font(global.font);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(252,252,252));
if (menu_index_y == i) draw_set_color(make_color_rgb(246,56,0));
draw_text(x, y + (button_h * i), button[i]);
i++;
}