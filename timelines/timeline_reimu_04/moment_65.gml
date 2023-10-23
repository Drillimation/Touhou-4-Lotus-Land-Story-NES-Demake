if ammo >= 1 {
	scr_shoot_bullet_enemy(1,-45 * ammo,spr_bullet_large,0,0,0,false,snd_enemyfire);
	ammo -= 1;
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_large {
			gravity = 0.01;
		}
	}
}