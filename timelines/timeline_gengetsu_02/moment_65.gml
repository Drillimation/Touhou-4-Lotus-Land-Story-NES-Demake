if ammo >= 1 {
	if ammo == 20 or ammo == 15 or ammo == 10 or ammo == 5 {
		for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
			scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_twin,1,0,0,false,snd_enemyfire);
		}
	}
	randomize();
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,choose(45,135),spr_bullet_shard,3,irandom_range(-24,24),irandom_range(-24,24),false,snd_enemyfire_1);
	}
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_shard and image_index == 3 {
			can_bounce = true;
			times_bounce = 3;
		}
	}
	ammo -= 1;
}