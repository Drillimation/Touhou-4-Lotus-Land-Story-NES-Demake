if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_normal,1,0,0,false,snd_enemyfire);
	}
	ammo -= 1;
}