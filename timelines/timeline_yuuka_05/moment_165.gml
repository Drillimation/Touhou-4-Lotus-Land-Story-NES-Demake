if ammo >= 1 {
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1,irandom_range(0,360),spr_bullet_small,0,choose(-16,16),0,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1,irandom_range(0,360),spr_bullet_normal,0,choose(-16,16),0,false,snd_enemyfire);
	}
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_normal or sprite_index == spr_bullet_small {
			gravity = 0.01;
		}
	}
	ammo -= 1;
}