for(var i = 0; i < 8; i += 1) {
	scr_shoot_bullet_enemy(1,i * 45,spr_bullet_large,0,0,0,false,snd_enemyfire_1);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		gravity = 0.01;
	}
}