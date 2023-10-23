if ammo >= 1 {
	timeline_position = 95;
}
else {
	randomize();
	direction = irandom_range(0,360);
	speed = 0.25;
}