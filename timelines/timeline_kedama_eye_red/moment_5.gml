if ammo >= 1 {
	for(var i = 0; i < global.difficulty + 1; i += 1) {
		for(var j = -1; j < 2; j += 1) {
			scr_shoot_bullet_enemy(1 - (0.1 * i),((ammo * 15) + (j * 15)) + startdir,spr_bullet_small,0,0,0,true,snd_enemyfire);
		}
	}
	ammo -= 1;
}