/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < global.difficulty + 1; i += 1) {
	for(var j = -1; j < 2; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * i),j * 15,spr_bullet_small,0,0,0,true,snd_enemyfire);
	}
}
instance_destroy();