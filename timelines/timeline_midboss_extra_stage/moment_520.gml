if ammo >= 1 {
	for(var i = 0 - (global.difficulty); i < (global.difficulty) + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,90 + (i * 15),spr_bullet_shard,5,0,0,false,snd_enemyfire);
	}
	with(obj_bullet_enemy) {
		if image_index == 5 {
			can_bounce = true;
			times_bounce = 1;
			image_index = 3;
		}
	}
	randomize();
	speed = 1.5
	direction = irandom_range(0,360);
	ammo -= 1;
}