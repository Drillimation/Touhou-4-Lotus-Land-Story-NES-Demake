for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,8,8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,-8,8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,8,-8,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_small,0,-8,-8,false,snd_enemyfire);
}