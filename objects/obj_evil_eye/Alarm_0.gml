/// @description Insert description here
// You can write your code in this editor
if oneattack = 0 {
	for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
		scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_normal,2,0,0,false,snd_enemyfire);
	}
	oneattack = 1
}