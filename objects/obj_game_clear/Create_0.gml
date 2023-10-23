/// @description Insert description here
// You can write your code in this editor
GME_Stop()
alarm[0] = 30;

clear_rank = global.difficulty * 10000;
clear_bombs = global.bombs * 5000;
clear_lives = lives * 10000;
clear_health = health * 1000;
clear_pow = global.pow * 100;
clear_pnt = global.pnt_item * 1000;
clear_dream = global.dream * 100;
clear_graze = global.graze * 100;

if global.chuhoujoutaimode == true {
	clear_total = clear_rank + clear_bombs + clear_health + clear_pow + clear_pnt + clear_dream + clear_graze;
	score += clear_total;
}
else {
	clear_total = clear_rank + clear_bombs + clear_lives + clear_pow + clear_pnt + clear_dream + clear_graze;
	score += clear_total;
}