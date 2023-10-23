scr_soundtrack(22)

ini_open("highscores.ini");
for (var i = 0; i < 10; i += 1) {
	global.rank[i][0] = ini_read_string(string(i),"name","MISSINGNO")
	global.rank[i][1] = ini_read_real(string(i),"score",76500);
	global.rank[i][2] = ini_read_real(string(i),"stage",1);
}
ini_close();
if score > global.rank[9][1] {
	instance_create_depth(8,192,0,obj_name_entry);
}
else {
	instance_create_depth(8,192,0,obj_ranked_out);
}