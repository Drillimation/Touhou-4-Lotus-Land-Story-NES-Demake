if ammo >= 1 {
	if ammo == 8 or ammo == 4 {
		for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
			scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_shard,3,-16,0,false,snd_enemyfire);
			scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_shard,3,16,0,false,snd_enemyfire);
		}
	}
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (i * 0.125),ammo * 15,spr_bullet_twin,1,0,0,true,snd_enemyfire_1);
		scr_shoot_bullet_enemy(1.5 - (i * 0.125),ammo * -15,spr_bullet_twin,1,0,0,true,snd_enemyfire_1);
	}
	ammo -= 1;
}