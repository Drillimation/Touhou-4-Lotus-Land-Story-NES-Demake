for (var i = 0; i < global.difficulty + 1; i += 1) {
	for (var j = -7; j < 8; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.1 * i),10 + (15 * j),spr_bullet_normal,1,0,0,true,snd_enemyfire)
	}
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_normal {
		can_slide = true;
		slide_speed = 0.01;
	}
}