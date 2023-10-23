for (var i = 0; i < 4; i += 1) {
	var inst = instance_create_depth(x,y,0,obj_marisa_turret);
	inst.image_index = i;
	inst.plc = i * 90;
	inst.lng = 0;
}