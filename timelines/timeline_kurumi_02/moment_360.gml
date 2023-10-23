with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for (var i = 0; i < global.difficulty + 1; i += 1) {
			for(var j = 0; j < 24; j += 1) {
				scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_normal,6,0,0,false,snd_enemyfire);
			}
		}
		instance_destroy();
	}
}
randomize();
vspeed = -0.25;
if x > 96 {
	hspeed = -1
}
else {
	hspeed = -1
}