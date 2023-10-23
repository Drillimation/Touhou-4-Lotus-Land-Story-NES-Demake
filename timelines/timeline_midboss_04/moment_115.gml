if ammo >= 1 {
	for(var i = -1; i < 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),0 + (i * 15),spr_bullet_kunai,3,0,0,true,snd_enemyfire_1);
	}
	scr_shoot_bullet_enemy(1,0,spr_bullet_normal,3,0,0,true,snd_enemyfire)
	if global.difficulty >= 1 {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1,(30 * i),spr_bullet_normal,3,0,0,true,snd_enemyfire)
			scr_shoot_bullet_enemy(1,(-30 * i),spr_bullet_normal,3,0,0,true,snd_enemyfire)
		}
	}
	ammo -= 1;
}