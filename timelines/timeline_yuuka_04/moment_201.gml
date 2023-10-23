with(obj_bullet_enemy) {
	if sprite_index == spr_master_spark {
		if image_yscale < 0 {
			instance_destroy();
		}
	}
}
if instance_exists(obj_bullet_enemy) {
	if obj_bullet_enemy.sprite_index == spr_master_spark {
		if obj_bullet_enemy.image_yscale > 0 {
			timeline_position = 200;
		}
	}
}