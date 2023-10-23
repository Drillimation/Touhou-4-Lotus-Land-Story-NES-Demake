/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_final_results,0,0,0);
draw_sprite(spr_reimu_wink,0,24,24);
draw_sprite(spr_marisa_content,0,136,24);
var i = 0;
repeat (buttons_x) 
{
//font = font_add_sprite(spr_font,32,false,0);
draw_set_font(global.language);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(0,0,0));
draw_text(x+1, y+1 + (button_h * i), button[i][global.reg_no]);
draw_set_color(make_color_rgb(252,252,252));
if (menu_index_x == i) draw_set_color(make_color_rgb(246,56,0));
draw_text(x + (104 * i), y, button[i][global.reg_no]);
i++;
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);
draw_text(24,192,button_desc[menu_index_x][global.reg_no]);