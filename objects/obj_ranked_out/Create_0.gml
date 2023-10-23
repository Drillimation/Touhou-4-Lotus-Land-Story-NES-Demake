/// @description Insert description here
// You can write your code in this editor
ini_open("highscores.ini");
for (var i = 0; i <= 9; i += 1) {
	global.rank[i][0] = ini_read_string(string(i),"name","MISSINGNO")
	global.rank[i][1] = ini_read_real(string(i),"score",76500);
	global.rank[i][2] = ini_read_real(string(i),"stage",1);
}
ini_close();