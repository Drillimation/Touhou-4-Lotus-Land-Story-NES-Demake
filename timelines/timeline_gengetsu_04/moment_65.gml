if ammo >= 1 {
	for(var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(0.75 + (ammo * 0.02),(90 + (ammo * 10)) + (15 * i),spr_bullet_twin,1,0,0,false,snd_enemyfire);
		scr_shoot_bullet_enemy(0.75 + (ammo * 0.02),(90 - (ammo * 10)) + (15 * i),spr_bullet_twin,1,0,0,false,snd_enemyfire);
	}
	ammo -= 1;
}