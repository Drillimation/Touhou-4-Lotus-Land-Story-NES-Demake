randomize();
vspeed = random_range(-1,1);
hspeed = random_range(-1,1);
if ammo >= 1 {
	for(var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,15 + (i * 10),spr_bullet_normal,6,0,0,true,snd_enemyfire_1)
		scr_shoot_bullet_enemy(1.5,-15 - (i * 10),spr_bullet_normal,6,0,0,true,snd_enemyfire_1)
	}
	ammo -= 1;
}