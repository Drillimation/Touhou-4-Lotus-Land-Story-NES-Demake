if ammo >= 1 {
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.25,10 + (20 * i),spr_bullet_small,0,0,0,true,snd_enemyfire_1)
		scr_shoot_bullet_enemy(1.25,-10 - (20 * i),spr_bullet_small,0,0,0,true,snd_enemyfire_1)
	}
	ammo -= 1;
}