if ammo >= 1 {
	if x < 96 {
		for (var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1.25 - (0.125 * i),90 - (ammo * 10),spr_bullet_kunai,6,0,0,false,snd_enemyfire);
		}
	}
	else {
		for (var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1.25 - (0.125 * i),90 + (ammo * 10),spr_bullet_kunai,6,0,0,false,snd_enemyfire);
		}
	}
	ammo -= 1;
}