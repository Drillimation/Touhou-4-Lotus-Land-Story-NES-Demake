randomize();
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.5,1.5),irandom_range(0,360),spr_bullet_small,0,choose(-16,16),0,false,snd_enemyfire_1);
	scr_shoot_bullet_enemy(random_range(0.5,1.5),irandom_range(0,360),spr_bullet_normal,6,choose(-16,16),0,false,snd_enemyfire_1);
}