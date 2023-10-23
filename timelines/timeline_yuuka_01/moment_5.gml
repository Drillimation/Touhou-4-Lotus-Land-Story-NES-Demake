if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 5; i += 1) {
		scr_shoot_bullet_enemy(1,(270 - (ammo * 10)) - (i * 10),spr_bullet_shard,5,0,0,false,snd_enemyfire);
	}
	with(obj_bullet_enemy) {
		if image_index == 5 {
			can_bounce = true;
			times_bounce = 1;
			image_index = 3;
		}
	}
}