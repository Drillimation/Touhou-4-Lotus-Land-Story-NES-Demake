if ammo >= 1 {
	randomize();
	ex = irandom_range(-64,64)
	for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 4) + 4)) * i),spr_bullet_small,0,ex,0,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1,270,spr_bullet_normal,3,irandom_range(-64,64),0,false,snd_enemyfire_1)
	}
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_normal and image_index == 3 {
			gravity = 0.01;
		}
	}
	ammo -= 1;
}