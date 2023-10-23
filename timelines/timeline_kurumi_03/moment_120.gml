randomize();
vspeed = choose(-0.25,0,0.25);
hspeed = choose(-1,0,1);
for (var i = 0; i < global.difficulty + 1; i += 1) {
	for(var j = 0; j < 24; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * i),((360 / 24) * j),spr_bullet_normal,1,0,0,false,snd_enemyfire);
	}
}
with(obj_bullet_enemy) {
	if image_index == 1 {
		image_index = 6;
		can_curve = true;
		curve_direction = -360;
		curve_speed = 1;
	}
}