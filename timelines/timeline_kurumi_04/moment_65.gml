if ammo >= 1 {
	randomize();
	scr_shoot_bullet_enemy(0.5,choose(210,330),spr_bullet_large,1,0,0,false,snd_enemyfire);
	ammo -= 1;
}