/*for (var i = 0; i < global.difficulty + 1; i += 1) {
	for(var j = 0; j < 24; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_small,0,8,8,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_small,0,-8,8,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_small,0,8,-8,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_small,0,-8,-8,false,snd_enemyfire);
	}
}*/
sprite_index = spr_elly_attack;
for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,8,8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,-8,8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,8,-8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,-8,-8,false,snd_enemyfire);
}