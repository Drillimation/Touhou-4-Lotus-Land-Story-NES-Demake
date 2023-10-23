// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_state(){
	//Direction
	dir = point_direction(0,0,xaxis,yaxis);
	
	//Length
	if (xaxis == 0) and (yaxis == 0) {
		len = 0;
	}
	else {
		len = spd;
		scr_get_face();
	}
	
	//Get the speed variables
	hspd = lengthdir_x(len,dir);
	vspd = lengthdir_y(len,dir);
	
	//Horizontal Collisions
	if (place_meeting(x+hspd,y,obj_wall)) {
		while(!place_meeting(x+sign(hspd),y,obj_wall)) {
			x += sign(hspd)
		}
		hspd = 0;
	}
	x += hspd;
	
	//Vertical Collisions
	if (place_meeting(x,y+vspd,obj_wall)) {
		while(!place_meeting(x,y+sign(vspd),obj_wall)) {
			y += sign(vspd)
		}
		vspd = 0;
	}
	y += vspd;
	
	//Sprites
	if (len == 0) {
		sprite_index = idle;
	}
	else {
		//Get Direction
		switch(face) {
			case 0:
				sprite_index = right;
				break;
			case 1:
				sprite_index = northeast;
				break;
			case 2:
				sprite_index = up;
				break;
			case 3:
				sprite_index = northwest;
				break;
			case 4:
				sprite_index = left;
				break;
			case 5:
				sprite_index = southwest;
				break;
			case 6:
				sprite_index = down;
				break;
			case 7:
				sprite_index = southeast;
				break;
		}
	}
}