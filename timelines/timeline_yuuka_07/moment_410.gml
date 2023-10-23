if ammo >= 1 {
	for(var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,15 * i,spr_bullet_twin,1,-48,0,true,snd_enemyfire);
		scr_shoot_bullet_enemy(1.5,15 * i,spr_bullet_twin,1,48,0,true,snd_enemyfire);
	}
	ammo -= 1;
}