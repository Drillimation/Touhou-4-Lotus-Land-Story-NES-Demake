for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 4) + 4)) * i) + dir,spr_bullet_small,0,0,0,false,snd_enemyfire);
}
for(var i = 0; i < 4; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / 4) * i) - dir,spr_bullet_twin,1,0,0,false,snd_enemyfire);
}
dir += 15;