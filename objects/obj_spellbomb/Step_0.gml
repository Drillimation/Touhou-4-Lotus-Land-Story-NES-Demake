/// @description Insert description here
// You can write your code in this editor
switch(sprite_index) {
	case spr_evil_sealing_circle:
		image_angle += 1;
		x = obj_player.x;
		y = obj_player.y;
		image_xscale += 0.01;
		image_yscale += 0.01;
		break;
	case spr_fantasy_seal:
		if instance_exists(obj_enemy) {
			if collision_circle(x,y,256,obj_enemy,false,true) {
				var ex = instance_nearest(x, y, obj_enemy).x;
				var ey = instance_nearest(x, y, obj_enemy).y;
				direction = point_direction(x,y,ex,ey);
			}
		}
		if instance_exists(obj_bullet_enemy) {
			if collision_circle(x,y,256,obj_bullet_enemy,false,true) {
				var ex = instance_nearest(x, y, obj_bullet_enemy).x;
				var ey = instance_nearest(x, y, obj_bullet_enemy).y;
				direction = point_direction(x,y,ex,ey);
			}
		}
		speed = 4;
		image_xscale -= 0.005;
		image_yscale -= 0.005;
		if image_xscale < 0 and image_yscale < 0 {
			instance_destroy();
		}
		break;
	case spr_stardust_reverie:
		image_angle += 1;
		speed = 1;
		break;
	case spr_master_spark:
		direction = 90;
		image_angle = direction
		x = obj_player.x;
		y = obj_player.y;
		break;
}