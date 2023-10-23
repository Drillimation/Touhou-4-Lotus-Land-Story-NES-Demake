if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
		randomize();
		scr_shoot_bullet_enemy(random_range(0.75,1.5),irandom_range(0,360),spr_bullet_small,0,0,0,false,snd_enemyfire_1);
	}
	ammo -= 1;
}
else {
	randomize();
	hspeed = choose(-1.5,1.5);
}