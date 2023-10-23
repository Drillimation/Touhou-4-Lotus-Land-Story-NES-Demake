if ammo >= 1 {
	timeline_position = 65;
}
else {
	randomize();
	speed = 0.25;
	direction = irandom_range(0,360);
}