if ammo >= 1 {
	for(var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),270 + dir,spr_bullet_twin,1,-8,-8,false,snd_enemyfire_1);
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),270 - dir,spr_bullet_twin,1,8,-8,false,snd_enemyfire_1);
	}
	for (var i = -4; i < 5; i += 1) {
		for(var j = 0; j < global.difficulty + 1; j += 1) {
			scr_shoot_bullet_enemy(1.5 - (j * 0.125),20 * i,spr_bullet_small,0,0,0,true,snd_enemyfire_1);
		}
	}
	ammo -= 1;
}