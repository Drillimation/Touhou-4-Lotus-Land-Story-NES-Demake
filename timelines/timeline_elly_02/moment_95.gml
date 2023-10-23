randomize();
vspeed = random_range(-1,1);
hspeed = random_range(-1,1);
if ammo >= 1 {
	for(var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_enemy(1.5,(i * 20) - (ammo * 15),spr_bullet_kunai,3,0,0,false,snd_enemyfire)
	}
	ammo -= 1;
}