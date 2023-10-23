if ammo >= 1 {
	for (var j = 0; j < global.difficulty + 1; j += 1) {
		for (var i = 0; i < 16; i += 1) {
			scr_shoot_bullet_enemy(1.25 - (j * 0.125),i * 22.5,spr_bullet_small,0,0,0,true,snd_enemyfire_1);
		}
	}
}