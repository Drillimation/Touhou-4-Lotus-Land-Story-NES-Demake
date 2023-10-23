with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_normal {
		instance_destroy();
		scr_shoot_bullet_enemy(1.5,0,spr_bullet_kunai,1,0,0,true,snd_enemyfire_1);
	}
}