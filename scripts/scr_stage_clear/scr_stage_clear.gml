// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stage_clear(){
	if global.stage == 7 {
		instance_create_depth(0,0,-1000,obj_game_clear);
	}
	else {
		instance_create_depth(0,0,-1000,obj_stage_clear);
	}
}