if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1,270,spr_bullet_normal,6,irandom_range(-64,64),0,false,snd_enemyfire);
	}
	ammo -= 1;
}