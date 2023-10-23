/// @description Insert description here
// You can write your code in this editor
if oneattack = 0 {
	scr_shoot_bullet_enemy(1,0,spr_bullet_normal,2,0,0,true,snd_enemyfire)
	if global.difficulty >= 1 {
		for(var i = 1; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1,15 * i,spr_bullet_normal,2,0,0,true,snd_enemyfire)
			scr_shoot_bullet_enemy(1,-15 * i,spr_bullet_normal,2,0,0,true,snd_enemyfire)
		}
	}
	oneattack = 1
}