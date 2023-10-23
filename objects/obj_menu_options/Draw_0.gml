/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat (buttons_y) 
{
font = font_add_sprite(spr_font,32,false,0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(0,0,0));
draw_text(x+1, y+1 + (button_h * i), button[i]);
draw_set_color(make_color_rgb(252,252,252));
if (menu_index_y == i) draw_set_color(make_color_rgb(246,56,0));
draw_text(x, y + (button_h * i), button[i]);
i++;
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);
draw_text(0,216,@"@2022 Drillimation Systems
Original by Team Shanghai Alice")