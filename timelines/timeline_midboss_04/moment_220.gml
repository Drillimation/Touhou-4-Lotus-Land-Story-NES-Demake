if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (i * 0.1),10 * ammo,spr_bullet_normal,3,0,0,true,snd_enemyfire_1);
		scr_shoot_bullet_enemy(1.5 - (i * 0.1),-10 * ammo,spr_bullet_normal,3,0,0,true,snd_enemyfire_1);
	}
	ammo -= 1;
}