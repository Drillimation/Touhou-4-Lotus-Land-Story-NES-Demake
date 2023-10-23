/// @description Insert description here
// You can write your code in this editor
if other.invincible == false {
	switch (sprite_index) {
		case spr_bullet_normal:
			scr_declare_damage(1)
			break;
		case spr_bullet_small:
			scr_declare_damage(1)
			break;
		case spr_bullet_kunai:
			scr_declare_damage(2)
			break;
		case spr_bullet_twin:
			scr_declare_damage(2)
			break;
		case spr_bullet_shard:
			scr_declare_damage(3)
			break;
		case spr_bullet_large:
			scr_declare_damage(5)	
			break;
		case spr_master_spark:
			scr_declare_damage(10)	
			break;
	}
}