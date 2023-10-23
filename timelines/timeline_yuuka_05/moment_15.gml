for (var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_normal,3,0,0,false,snd_enemyfire);
}