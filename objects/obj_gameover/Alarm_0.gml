/// @description Insert description here
// You can write your code in this editor
if image_angle > -90 or image_xscale > 0.01 {
	image_angle -= 1;
	image_xscale -= 0.01;
	alarm[0] = 1;
}
else {
	alarm[1] = 120;
}