if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 4) + 4)) * i),spr_bullet_twin,1,0,0,true,snd_enemyfire);
	}
	ammo -= 1;
}