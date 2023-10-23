if instance_exists(obj_bullet_enemy) {
	if obj_bullet_enemy.sprite_index == spr_master_spark {
		if obj_bullet_enemy.image_yscale < 0.5 {
			timeline_position = 61;
		}
	}
}