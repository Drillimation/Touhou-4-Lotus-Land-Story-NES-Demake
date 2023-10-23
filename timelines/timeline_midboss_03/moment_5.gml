if ammo >= 1 {
	for(var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,10 + (i * 20),spr_bullet_small,0,0,0,true,snd_enemyfire_1);
		scr_shoot_bullet_enemy(1.5,-10 - (i * 20),spr_bullet_small,0,0,0,true,snd_enemyfire_1);
	}
	ammo -= 1;
}
if ammo == 8 {
	for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
		scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 8) + 8)) * i),spr_bullet_normal,0,0,0,false,snd_enemyfire);
	}
}