scr_shoot_bullet_enemy(0,270,spr_master_spark,0,0,0,false,snd_master_spark);
with(obj_bullet_enemy) {
	if sprite_index == spr_master_spark {
		image_yscale = 0;
	}
}