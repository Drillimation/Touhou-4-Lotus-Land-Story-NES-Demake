if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
		scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_normal,6,0,0,false,snd_enemyfire_1);
	}
	if ammo == 5 or ammo == 10 or ammo == 15 or ammo == 20 {
		for (var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
			scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_twin,1,0,0,false,snd_enemyfire);
		}
	}
	ammo -= 1;
}