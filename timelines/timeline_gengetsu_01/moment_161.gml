with(obj_bullet_enemy) {
	if sprite_index == spr_master_spark {
		if image_yscale < 0.25 {
			image_yscale += 0.05;
		}
	}
}