for(var i = -1 - global.difficulty; i < global.difficulty + 2; i += 1) {
	scr_shoot_bullet_enemy(1.25,((i * 15) + 0) + dir,spr_bullet_small,0,0,0,false,snd_enemyfire);
	scr_shoot_bullet_enemy(1.25,((i * 15) + 180) + dir,spr_bullet_small,0,0,0,false,snd_enemyfire);
}
dir += 15;
if ammo >= 1 {
	randomize();
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(1,irandom_range(0,360),spr_bullet_normal,1,ammo * 12,0,false,snd_enemyfire);
		scr_shoot_bullet_enemy(1,irandom_range(0,360),spr_bullet_normal,1,ammo * -12,0,false,snd_enemyfire);
	}
	ammo -= 1;
}