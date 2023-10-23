// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	rKey = max(keyboard_check(vk_right),keyboard_check(ord("D")),0)
	lKey = max(keyboard_check(vk_left),keyboard_check(ord("A")),0)
	dKey = max(keyboard_check(vk_down),keyboard_check(ord("S")),0)
	uKey = max(keyboard_check(vk_up),keyboard_check(ord("W")),0)

	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);

	//Gamepad Input
	if (gamepad_is_connected(0)) {
		rKey = gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0);
		lKey = gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0,gp_axislh) < 0);
		dKey = gamepad_button_check(0, gp_padd) || (gamepad_axis_value(0,gp_axislv) > 0);
		uKey = gamepad_button_check(0, gp_padu) || (gamepad_axis_value(0,gp_axislv) < 0);
	
		xaxis = (rKey - lKey);
		yaxis = (dKey - uKey);
		
		gamepad_set_axis_deadzone(0,0.5)
	}
}