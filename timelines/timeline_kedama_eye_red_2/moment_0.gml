randomize();
for (var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
	scr_shoot_bullet_enemy(0.5,irandom_range(0,360),spr_bullet_small,0,0,0,false,snd_enemyfire);
}