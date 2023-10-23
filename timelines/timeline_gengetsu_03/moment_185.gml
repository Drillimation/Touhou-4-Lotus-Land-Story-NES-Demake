if ammo >= 1 {
	for(var i = 0; i < 17 - ammo; i += 1) {
		scr_shoot_bullet_enemy(1.5,i * 15,spr_bullet_small,0,0,0,true,snd_enemyfire)
		scr_shoot_bullet_enemy(1.5,i * -15,spr_bullet_small,0,0,0,true,snd_enemyfire)
	}
	ammo -= 1;
}