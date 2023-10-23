/// @description Insert description here
// You can write your code in this editor
scr_region();
score = 0;
ini_open("highscores.ini")
global.highscore = ini_read_real("0","score",76500);
ini_close();
lives = 3;
health = 30;
global.bombs = 3;
global.stage = 1;
global.graze = 0;
global.pow = 0;
global.pnt_item = 0;
global.dream = 0;
global.character = "REIMU";
global.weapontype = 0;
global.chuhoujoutaimode = false;
global.stage_speed = 0.5;
//global.gamemode = 0;

global.difficulty = 0;
global.continuesused = 0;
global.scoreforlife = 100000;
global.received = 1;
global.victoryachieved = false;
global.revivesused = 0;
global.revivecost = 20;