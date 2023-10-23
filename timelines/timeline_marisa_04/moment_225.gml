if ammo >= 1 {
	timeline_position = 215;
}
else {
	sprite_index = spr_marisa_boss_attack
	randomize();
	if obj_player.x < x {
		direction = irandom_range(90,270);
		speed = 0.5;
	}
	else {
		direction = irandom_range(-90,90);
		speed = 0.5;
	}
}