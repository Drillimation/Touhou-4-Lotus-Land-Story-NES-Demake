if ammo >= 1 {
	for(var i = -7; i < 7; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),i * 20,spr_bullet_normal,6,0,0,true,snd_enemyfire_1)
	}
	ammo -= 1;
}