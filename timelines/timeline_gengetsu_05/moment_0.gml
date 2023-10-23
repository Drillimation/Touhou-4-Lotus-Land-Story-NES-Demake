x = 96;
randomize();
ex = irandom_range(-24,24);
ey = irandom_range(-24,24);

for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 4) + 4)) * i),spr_bullet_twin,1,ex,ey,false,snd_enemyfire);
}