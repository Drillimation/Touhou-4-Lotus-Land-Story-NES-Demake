/// @description Insert description here
// You can write your code in this editor
button_h = 8;

switch(global.character) {
	case "REIMU":
		button[0] = "Type A - Autoaim";
		button[1] = "Type B - Wide shot"
		break;
	case "MARISA":
		button[0] = "Type A - Rapid shot";
		button[1] = "Type B - Laser"
		break;
}
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;