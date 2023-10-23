for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
	scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_normal,1,0,0,true,snd_enemyfire);
}
randomize();
hspeed = choose(-1.5,1.5);