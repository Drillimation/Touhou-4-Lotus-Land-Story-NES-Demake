if ammo >= 1 {
	if ammo == 8 or ammo == 6 or ammo == 4 or ammo == 2 {
		for (var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
			scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_normal,0,0,0,true,snd_enemyfire);
		}
	}
	for (var i = 0; i < 8; i += 1) {
		for(var j = 0; j < global.difficulty + 1; j += 1) {
			scr_shoot_bullet_enemy(1.5,((360 / 8) * i) + (j * 15),spr_bullet_small,0,0,0,true,snd_enemyfire_1);
		}
	}
	ammo -= 1;
}