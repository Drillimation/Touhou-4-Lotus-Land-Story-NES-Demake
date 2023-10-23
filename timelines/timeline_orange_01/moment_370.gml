if ammo >= 1 {
	for(var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.25 - (i * 0.125),180 + (ammo * 10),spr_bullet_small,0,0,0,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1.25 - (i * 0.125),0 + (ammo * 10),spr_bullet_small,0,0,0,false,snd_enemyfire);
	}
	ammo -= 1;
}