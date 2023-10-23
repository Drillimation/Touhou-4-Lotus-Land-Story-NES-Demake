for (var i = 0; i < global.difficulty + 1; i += 1) {
	for(var j = 0; j < 32; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 32) * j),spr_bullet_small,6,0,0,false,snd_enemyfire);
	}
}