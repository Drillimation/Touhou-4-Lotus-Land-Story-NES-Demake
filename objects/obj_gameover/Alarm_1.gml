/// @description Insert description here
// You can write your code in this editor
if global.stage == 7 {
	room_goto(room_results);
}
else {
	instance_create_depth(128,120,0,obj_continue);
}
instance_destroy();