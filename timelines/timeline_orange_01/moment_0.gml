x = 96;
for(var i = 0; i < global.difficulty + 1; i += 1) {
	for(var j = 0; j < 32; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),j * 11.25,spr_bullet_small,0,0,0,false,snd_enemyfire_1);
	}
}