if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (i * 0.1),0,spr_bullet_small,0,0,0,true,snd_enemyfire_1);
	}
	ammo -= 1;
}