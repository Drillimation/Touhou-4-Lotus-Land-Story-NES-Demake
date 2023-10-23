if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
		scr_shoot_bullet_enemy(random_range(0.5,1.5),irandom_range(-15,15),spr_bullet_normal,0,0,0,true,snd_enemyfire_1)
	}
	ammo -= 1;
}