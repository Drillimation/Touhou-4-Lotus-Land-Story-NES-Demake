if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 8) + 8)) * i) + dir,spr_bullet_small,0,0,0,false,snd_enemyfire);
	}
	ammo -= 1;
	dir += 15;
}