sprite_index = spr_yuuka_02_attack;
scr_shoot_bullet_enemy(0,-45,spr_master_spark,0,0,0,true,snd_master_spark);
scr_shoot_bullet_enemy(0,45,spr_master_spark,0,0,0,true,snd_master_spark);
with(obj_bullet_enemy) {
	if sprite_index == spr_master_spark {
		image_yscale = 0;
	}
}