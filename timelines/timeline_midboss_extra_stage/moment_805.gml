if ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		for(var j = 0; j < global.difficulty + 1; j += 1) {
			scr_shoot_bullet_enemy(1.5 - (j * 0.125),15 * i,spr_bullet_small,0,0,0,true,snd_enemyfire_1);
		}
	}
	ammo -= 1;
}