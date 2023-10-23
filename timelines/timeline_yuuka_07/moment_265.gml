if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
		scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(-45,45),spr_bullet_kunai,3,choose(-48,48),0,true,snd_enemyfire_1);
	}
	ammo -= 1;
}