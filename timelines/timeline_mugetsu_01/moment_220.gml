if ammo >= 1 {
	for(i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(random_range(1,2),irandom_range(180,360),spr_bullet_normal,3,0,0,false,snd_enemyfire_1);
	}
	with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_normal and image_index == 3 {
		gravity = 0.01;
	}
	}
	ammo -= 1;
}