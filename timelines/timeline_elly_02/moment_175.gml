if ammo >= 1 {
	for(var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.25,-180 + ((i * 10) + (ammo * 4)),spr_bullet_small,0,0,0,false,snd_enemyfire)
	}
	ammo -= 1;
}