if ammo >= 1 {
	timeline_position = 75;
}
else {
	randomize();
	hspeed = random_range(-1,1);
	vspeed = random_range(-1,1);
}