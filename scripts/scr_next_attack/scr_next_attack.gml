// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_next_attack(){
	timeline_running = false;
	if alarm[0] < 0 {
		alarm[0] = 60;
	}
}