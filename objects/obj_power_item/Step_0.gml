/// @description Insert description here
// You can write your code in this editor
var vy = camera_get_view_y(view_camera[0]);
if y >= vy+240 {
	instance_destroy();
}
if collision_circle(x,y,16,obj_player,false,false) {
	speed = 5;
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}
if instance_exists(obj_player) {
	if obj_player.y <= 64 and global.pow >= 100 {
		if collision_circle(x,y,288,obj_player,false,false) {
			speed = 5;
			direction = point_direction(x, y, obj_player.x, obj_player.y);
		}
	}
}