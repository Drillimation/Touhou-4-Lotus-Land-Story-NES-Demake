if ammo >= 1 {
	timeline_position = 145;
}
else {
	for(var i = -2 - global.difficulty; i < global.difficulty + 3; i += 1) {
		scr_shoot_bullet_enemy(1,90 + (i * 10),spr_bullet_shard,3,0,0,false,snd_enemyfire);
	}
	randomize();
	speed = 0.25;
	direction = irandom_range(0,360);
}