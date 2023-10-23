if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
		scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,0,0,true,snd_enemyfire);
	}
	scr_shoot_bullet_enemy(1.25,0,spr_bullet_normal,0,0,0,true,snd_enemyfire)
	ammo -= 1;
}