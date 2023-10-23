if ammo >= 1 {
	randomize();
	n = irandom_range(0,360)
	for (var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,n + (i * 15),spr_bullet_normal,1,0,0,false,snd_enemyfire);
	}
	ammo -= 1;
}