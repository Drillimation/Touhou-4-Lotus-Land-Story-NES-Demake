// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hud(){
	fnt = font_add_sprite(spr_font,32,false,0);
	draw_set_font(fnt);
	draw_set_color(make_color_rgb(8,8,8));
	draw_rectangle(192,0,256,240,false);
	//Yellow Text
	draw_set_color(make_color_rgb(248,216,120));
	draw_set_halign(fa_left)
	draw_text(192,8,@"HIGH
	 SCORE")
	draw_text(192,40,"1UP")
	if global.chuhoujoutaimode == false {
		draw_text(192,88,"LIVES")
	}
	else {
		draw_text(192,88,"LIFE")
	}
	draw_text(192,104,"BOMBS")
	draw_text(192,128,"POINT")
	draw_text(192,144,"GRAZE")
	draw_text(192,160,"POWER")
	draw_text(192,176,"DREAM")
	
	//White Text
	draw_set_color(make_color_rgb(252,252,252));
	draw_set_halign(fa_right);
	draw_text(248,24,global.highscore);
	draw_text(248,48,global.displayscore);
	
	if global.chuhoujoutaimode == false {
		if lives >= 2 and lives <= 6 {
			for (var i = 0; i < lives - 1; i += 1) {
				draw_sprite(spr_life_orb,0,192 + (i * 8),96)
			}
		}
		if lives >= 7 {
			draw_sprite(spr_life_orb,0,192,96)
			draw_text(248,96,lives - 1);
		}
	}
	else {
		draw_text(248,96,health)
	}
	if global.bombs >= 1 and global.bombs <= 5 {
		for (var i = 0; i < global.bombs; i += 1) {
			draw_sprite(spr_bomb_orb,0,192 + (i * 8),112)
		}
	}
	else {
		draw_sprite(spr_bomb_orb,0,192,112)
		draw_text(248,112,global.bombs);
	}
	draw_text(248,136,global.pnt_item);
	draw_text(248,152,global.graze);
	draw_text(248,168,global.pow);
	draw_text(248,184,global.dream);
}