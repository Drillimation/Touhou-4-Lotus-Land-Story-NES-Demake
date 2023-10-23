/// @description Insert description here
// You can write your code in this editor
if global.pow >= 12 {
	if focusmode == true {
		draw_sprite(turret,-1,x - 4,y - 8);
		draw_sprite(turret,-1,x + 4,y - 8);
		draw_sprite(spr_hitbox,0,x,y);
	}
	else {
		draw_sprite(turret,-1,x - 16,y);
		draw_sprite(turret,-1,x + 16,y);
	}
}
draw_self();
if focusmode == true {
	draw_sprite(spr_hitbox,0,x,y);
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);