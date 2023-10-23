for(var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(1 - (0.1 * i),270 + dir,spr_bullet_twin,1,-8,-8,false,snd_enemyfire_1);
	scr_shoot_bullet_enemy(1 - (0.1 * i),270 - dir,spr_bullet_twin,1,8,-8,false,snd_enemyfire_1);
}