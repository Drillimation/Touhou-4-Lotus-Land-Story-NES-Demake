/// @description Insert description here
// You can write your code in this editor
if y > 0 {
	instance_destroy();
}
else {
	vspeed = 0;
	randomize();
	y = irandom_range(16,64);
	x = irandom_range(24,168);
	speed = 0.5;
	direction = irandom_range(0,360);
}