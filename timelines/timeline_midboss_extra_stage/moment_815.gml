if ammo >= 1 {
	timeline_position = 805;
}
else {
	randomize();
	instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item_large)
	for (var i = 0; i < 4; i += 1) {
		instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_power_item)
	}
	for (var j = 0; j < 5; j += 1) {
		instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_point_item)
	}
}