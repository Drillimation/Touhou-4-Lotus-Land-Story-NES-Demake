if ammo >= 1 {
	for (var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
		scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_shard,3,0,0,true,snd_enemyfire);
	}
	ammo -= 1;
}