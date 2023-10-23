// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_stats(_segments, _hp, _time){
	segments = _segments;
	life = _segments;
	maxhp = _hp * segments;
	starthp = _hp;
	hp = starthp;
	start_time = _time;
	timer = _time;
}