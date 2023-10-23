randomize();
if ammo >= 1 {
	instance_create_depth(irandom_range(8,184),irandom_range(8,120),0,obj_autospawn2);
	ammo -= 1;
}