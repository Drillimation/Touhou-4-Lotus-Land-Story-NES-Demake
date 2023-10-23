if obj_marisa_turret.lng < 32 {
	timeline_position = 61;
}
else {
	sprite_index = spr_marisa_boss_attack
	randomize();
	hspeed = random_range(-1,1);
	vspeed = random_range(-1,1);
}