randomize();
for(var i = 0; i < 9; i += 1) {
	instance_create_depth(irandom_range(8,184),120,0,obj_autospawn);
}
instance_destroy();