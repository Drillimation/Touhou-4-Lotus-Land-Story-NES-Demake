with (obj_bullet_enemy) {
	if sprite_index == spr_bullet_normal {
		instance_destroy();
		scr_shoot_bullet_enemy(1,270,spr_bullet_shard,image_index,0,0,false,snd_enemyfire_1);
	}
}