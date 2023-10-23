if ammo >= 1 {
	randomize();
	ex = irandom_range(-24,24);
	ey = irandom_range(-24,24);
	for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
		scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_normal,1,ex,ey,false,snd_enemyfire);
	}
}