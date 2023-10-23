for (var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
	scr_shoot_bullet_enemy(0.5,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_normal,1,0,0,false,snd_enemyfire);
}