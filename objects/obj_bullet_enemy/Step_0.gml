/// @description Insert description here
// You can write your code in this editor
depth = -y;
if grazable == true {
	if collision_circle(x,y,12,obj_player,false,false){
		score += 50;
		global.graze += 1;
		scr_one_channel_sound(snd_graze);
		grazable = false;
	}
}
if sprite_index == spr_bullet_normal or sprite_index == spr_bullet_small or sprite_index == spr_bullet_large {
	image_angle = 0;
}
else {
	image_angle = direction;
}
if can_curve == true {
	if alarm[0] < 0 {
		alarm[0] = curve_speed;
	}
}
if can_slide == true {
	if speed > 0 or speed < 0{
		friction = slide_speed;
	}
	else {
		friction = 0;
	}
}
if x > 192 {
	instance_destroy();
}