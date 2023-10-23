if ammo >= 1 {
	for(var i = 0; i < 24; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),15 * i,spr_bullet_normal,6,0,0,false,snd_enemyfire_1)
	}
	ammo -= 1;
}