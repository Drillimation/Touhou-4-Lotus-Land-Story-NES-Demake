// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_region(){
	ini_open("options.sav")
	region = ini_read_string("main","region","EN");
	if region != "JP" {
		global.language = font_main_en
		global.reg_no = 0;
		global.suf = "_en";
	}
	else {
		global.language = font_main_jap
		global.reg_no = 1;
		global.suf = "_jp";
	}
	ini_close();
}