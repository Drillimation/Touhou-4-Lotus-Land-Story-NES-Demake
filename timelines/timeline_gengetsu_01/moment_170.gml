if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_enemy(1,270,spr_bullet_normal,6,irandom_range(-96,96),0,false,snd_enemyfire);
	}
	ammo -= 1;
}