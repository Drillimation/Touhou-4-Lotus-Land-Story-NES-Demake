/// @description Insert description here
// You can write your code in this editor
if oneattack = 0 {
	if global.stage == 6 {
		timeline_index = timeline_kedama_razor_red;
		timeline_position = 0;
		timeline_running = true;
	}
	else if global.stage == 7 and nrm == false {
		timeline_index = timeline_kedama_razor_red_2;
		timeline_position = 0;
		timeline_running = true;
	}
	else {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			for(var j = -1; j < 2; j += 1) {
				scr_shoot_bullet_enemy(1 - (0.1 * i),j * 15,spr_bullet_normal,1,0,0,true,snd_enemyfire);
			}
		}	
		speed = -1;
	}
	oneattack = 1
}