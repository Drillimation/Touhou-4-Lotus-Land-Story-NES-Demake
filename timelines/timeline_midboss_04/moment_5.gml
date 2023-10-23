if ammo >= 1 {
	randomize();
	n = irandom_range(-90,90);
	m = irandom_range(-90,90);
	scr_shoot_bullet_enemy(1,n,spr_bullet_normal,3,0,0,true,snd_enemyfire)
	if global.difficulty >= 1 {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1,n + (15 * i),spr_bullet_normal,3,0,0,true,snd_enemyfire)
			scr_shoot_bullet_enemy(1,n + (-15 * i),spr_bullet_normal,3,0,0,true,snd_enemyfire)
		}
	}
	scr_shoot_bullet_enemy(1,m,spr_bullet_small,0,0,0,true,snd_enemyfire)
	if global.difficulty >= 1 {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1,m + (15 * i),spr_bullet_small,0,0,0,true,snd_enemyfire)
			scr_shoot_bullet_enemy(1,m + (-15 * i),spr_bullet_small,0,0,0,true,snd_enemyfire)
		}
	}
	ammo -= 1;
}