for(var i = 0; i < 4; i += 1) {
	for(var j = 0; j < floor(global.difficulty / 2) + 1; j += 1) {
		scr_shoot_bullet_enemy(1.25 - (j * 0.125),(90 * i) + dir,spr_bullet_small,0,0,0,false,snd_enemyfire)
	}
	dir += 5;
	if dir >= 1080 {
		for (var k = 0; k < 2; k += 1) {
			scr_shoot_bullet_enemy(1.25 - (j * 0.125),(180 * k) - dir2,spr_bullet_normal,6,0,0,false,snd_enemyfire)
		}
		dir2 += 5;
	}
}
