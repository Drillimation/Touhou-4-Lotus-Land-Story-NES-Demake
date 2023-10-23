if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.25 - (0.1 * i),(-10 * ammo),spr_bullet_kunai,1,0,0,false,snd_enemyfire_1);
	}
	ammo -= 1;
}