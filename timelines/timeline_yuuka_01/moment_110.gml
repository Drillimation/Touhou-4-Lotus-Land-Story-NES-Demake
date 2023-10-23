if ammo >= 1 {
	for(var i = 0; i < 4; i += 1) {
		for(var j = 0; j < global.difficulty + 1; j += 1) {
			scr_shoot_bullet_enemy(1.5 - (j * 0.125),(90 * i) + dir,spr_bullet_twin,1,0,0,false,snd_enemyfire_1);
		}
	}
	ammo -= 1;
	dir += 10;
}