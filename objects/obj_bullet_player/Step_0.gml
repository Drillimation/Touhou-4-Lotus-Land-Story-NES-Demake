/// @description Insert description here
// You can write your code in this editor
image_angle = direction;
if sprite_index == spr_bullet_aux1 {
	if instance_exists(obj_enemy) {
		if collision_circle(x,y,256,obj_enemy,false,true) {
			var ex = instance_nearest(x, y, obj_enemy).x;
			var ey = instance_nearest(x, y, obj_enemy).y;
			direction = point_direction(x,y,ex,ey);
		}
	}	
}
if sprite_index == spr_bullet_aux4 {
	if image_xscale < 4 {
		image_xscale += 0.1;
	}
}