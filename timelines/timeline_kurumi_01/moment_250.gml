if ammo >= 1 {
	timeline_position = 240;
}
else {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (i * 0.1),0,spr_bullet_twin,1,0,0,true,snd_enemyfire_1)
	}
	hspeed = 1.25;
}