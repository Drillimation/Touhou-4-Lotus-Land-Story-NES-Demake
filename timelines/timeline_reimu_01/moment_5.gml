if ammo >= 1 {
	for (var i = -2 - global.difficulty; i < global.difficulty + 3; i += 1) {
		scr_shoot_bullet_enemy(2,(15 * i),spr_bullet_kunai,3,0,0,true,snd_enemyfire)
	}
	ammo -= 1;
}