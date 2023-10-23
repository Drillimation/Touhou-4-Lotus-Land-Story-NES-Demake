for(var i = 0 - global.difficulty; i < 1 + global.difficulty; i += 1) {
	scr_shoot_bullet_enemy(1,(180 - dir) + (i * 5),spr_bullet_normal,1,-16,0,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,0 + dir + (i * 5),spr_bullet_normal,1,16,0,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,0 - dir + (i * 5),spr_bullet_small,1,-16,0,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1,(180 + dir) + (i * 5),spr_bullet_small,1,16,0,false,snd_enemyfire);
}
dir += 15;