if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 3) + 3)) * i) + dir,spr_bullet_normal,0,0,0,true,snd_enemyfire);
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 3) + 3)) * i) - dir,spr_bullet_normal,0,0,0,true,snd_enemyfire);
	}
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 2) + 2)) * i) + dir,spr_bullet_small,0,0,0,true,snd_enemyfire);
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 2) + 2)) * i) - dir,spr_bullet_small,0,0,0,true,snd_enemyfire);
	}
	dir -= 15;
	ammo -= 1;
}