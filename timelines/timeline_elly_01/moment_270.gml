for (var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(1.5 - (i * 0.125),0,spr_bullet_small,0,-4,24,true,snd_enemyfire)
	scr_shoot_bullet_enemy(1.5 - (i * 0.125),0,spr_bullet_small,0,4,24,true,snd_enemyfire)
}