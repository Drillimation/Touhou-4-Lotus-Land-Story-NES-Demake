randomize();
for(var i = 0; i < 12; i += 1) {
	instance_create_depth(irandom_range(8,184),irandom_range(48,80),0,obj_autospawn);
}
instance_destroy();