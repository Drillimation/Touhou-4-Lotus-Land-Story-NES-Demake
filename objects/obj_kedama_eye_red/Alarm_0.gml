/// @description Insert description here
// You can write your code in this editor
if oneattack = 0 {
	oneattack = 1;
	if global.stage == 6 {
		timeline_index = timeline_kedama_eye_red_3;
	}
	else {
		if pathed == false {
			if global.stage == 7 {
				for(var i = 0; i < global.difficulty + 1; i += 1) {
					for (var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
						scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_small,1,0,0,false,snd_enemyfire);
					}
				}
			}
			else {
				timeline_index = timeline_kedama_eye_red;
			}
		}
		else {
			timeline_index = timeline_kedama_eye_red_2;
		}
	}
	timeline_position = 0;
	timeline_running = true;
}