scr_soundtrack(7);
global.stage_speed = 0.125;
global.stage = 3;
with (obj_enemy) {
	if sprite_index == spr_bakebake or sprite_index == spr_bakebake_fear {
		path_spd = 1;
	}
}