/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if display_stats == true {
	var pc;
	pc = ((((life - 1) * starthp) + hp) / maxhp) * 100;
	draw_healthbar(vx+1,vy+0,vx+238,vy+3,pc,make_color_rgb(8,8,8),make_color_rgb(252,252,252),make_color_rgb(252,252,252),0,true,false);
	draw_set_alpha(1);
	draw_sprite(spr_healthbar,bar,vx+1,vy+0);
	draw_sprite(spr_boss_health_wireframe,0,vx+0,vy+0);
	var font = font_add_sprite(spr_font,vk_space,false,0)
	draw_set_font(font)
	draw_set_halign(fa_right);
	draw_text(vx+256,vy+0,timer);
}