// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro player obj_player
#macro enemy obj_enemy

function scr_shoot_bullet_player(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound) {
	scr_one_channel_sound(_sound)
	if _aimed == true {
		if instance_exists(enemy) {
			var inst = instance_create_layer(x + _x, y + _y, "Danmaku", obj_bullet_player);
			inst.speed = _speed;
			inst.direction = point_direction(inst.x, inst.y, enemy.x, enemy.y) + 0;
			inst.sprite_index = _sprite
			inst.image_index = _color
		}
		else {
			var inst = instance_create_layer(x + _x, y + _y, "Danmaku", obj_bullet_player);
			inst.speed = _speed;
			inst.direction = _direction;
			inst.sprite_index = _sprite
			inst.image_index = _color
		}
	}
	else {
		var inst = instance_create_layer(x + _x, y + _y, "Danmaku", obj_bullet_player);
		inst.speed = _speed;
		inst.direction = _direction;
		inst.sprite_index = _sprite
		inst.image_index = _color
	}
}


function scr_shoot_bullet_enemy(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound) {
	scr_one_channel_sound(_sound)
	if _aimed == true {
		if instance_exists(player) {
			var inst = instance_create_layer(x + _x, y + _y, "Danmaku", obj_bullet_enemy);
			inst.speed = _speed;
			inst.direction = point_direction(inst.x, inst.y, player.x, player.y) + _direction;
			inst.sprite_index = _sprite
			inst.image_index = _color
		}
	}
	else {
		var inst = instance_create_layer(x + _x, y + _y, "Danmaku", obj_bullet_enemy);
		inst.speed = _speed;
		inst.direction = _direction;
		inst.sprite_index = _sprite
		inst.image_index = _color
	}
}