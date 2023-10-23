sprite_index = spr_red_pix_wingless_attack;
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(1.5 - (i * 0.1),0,spr_bullet_twin,1,0,0,true,snd_enemyfire_1);
}
for(var i = -2; i < 3; i += 1) {
	for(var j = 0; j < global.difficulty + 1; j += 1) {
		scr_shoot_bullet_enemy(1.25 - (0.25 * j),30 * i,spr_bullet_normal,1,0,0,true,snd_enemyfire);
	}
}