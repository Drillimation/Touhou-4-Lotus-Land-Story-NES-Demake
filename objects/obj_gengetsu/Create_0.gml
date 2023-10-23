/// @description Insert description here
// You can write your code in this editor
randomize();
canattack = false;
//depth = 0;
oneattack = 0;
exitatbottom = true;
scr_boss_stats(6,2500,90)
attack[1] = timeline_gengetsu_06;
attack[2] = timeline_gengetsu_05;
attack[3] = timeline_gengetsu_04;
attack[4] = timeline_gengetsu_03;
attack[5] = timeline_gengetsu_02;
attack[6] = timeline_gengetsu_01;
display_stats = false;
timed_out = false;
defeat_bonus = 250000
bar = 3;
global.spell_card_time = 0;

boss = true;