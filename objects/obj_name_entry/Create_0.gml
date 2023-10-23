/// @description Insert description here
// You can write your code in this editor
button_h = 8;
p1_name = "";

//Option Array
button[0][0] = "A";
button[0][1] = "B";
button[0][2] = "C";
button[0][3] = "D";
button[0][4] = "E";
button[0][5] = "F";
button[0][6] = "G";
button[0][7] = "H";
button[0][8] = "I";
button[0][9] = "J";
button[0][10] = "K";
button[0][11] = "L";
button[0][12] = "M";
button[1][0] = "N";
button[1][1] = "O";
button[1][2] = "P";
button[1][3] = "Q";
button[1][4] = "R";
button[1][5] = "S";
button[1][6] = "T";
button[1][7] = "U";
button[1][8] = "V";
button[1][9] = "W";
button[1][10] = "X";
button[1][11] = "Y";
button[1][12] = "Z";
button[2][0] = "1";
button[2][1] = "2";
button[2][2] = "3";
button[2][3] = "4";
button[2][4] = "5";
button[2][5] = "6";
button[2][6] = "7";
button[2][7] = "8";
button[2][8] = "9";
button[2][9] = "0";
button[2][10] = ".";
button[2][11] = "!";
button[2][12] = " ";
buttons_y = array_length(button);
buttons_x = array_length(button[0]);

menu_index_x = 0;
menu_index_y = 0;
last_selected_x = 0;
last_selected_y = 0;
next = false;
prev = false;
next_row = false;
prev_row = false;

ini_open("highscores.ini");
for (var i = 0; i <= 9; i += 1) {
	global.rank[i][0] = ini_read_string(string(i),"name","MISSINGNO")
	global.rank[i][1] = ini_read_real(string(i),"score",76500);
	global.rank[i][2] = ini_read_real(string(i),"stage",1);
}
ini_close();