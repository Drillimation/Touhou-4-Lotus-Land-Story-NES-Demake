/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(0,0,0));
draw_set_font(global.font);
switch(global.gamemode) {
	case 0:
		draw_text(96+1,112+1,"STAGE " + string(global.stage));
		break;
	case 1:
		draw_text(96+1,112+1,"EXTRA STAGE");
		break;
}
draw_set_font(global.language);
draw_text(96+1,120+1,stage_name[global.reg_no]);

draw_set_font(global.font);
draw_set_color(make_color_rgb(248,184,0));
switch(global.gamemode) {
	case 0:
		draw_text(96,112,"STAGE " + string(global.stage));
		break;
	case 1:
		draw_text(96,112,"EXTRA STAGE");
		break;
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_font(global.language);
draw_text(96,120,stage_name[global.reg_no]);