/// @description Insert description here
// You can write your code in this editor
switch(other.sprite_index) {
	case spr_bullet_reimu:
		hp -= 5;
		break;
	case spr_bullet_marisa:
		hp -= 5;
		break;
	case spr_bullet_aux1:
		hp -= 1;
		break;
	case spr_bullet_aux2:
		hp -= 5;
		break;
	case spr_bullet_aux3:
		hp -= 5;
		break;
	case spr_bullet_aux4:
		hp -= 10;
		break;
}
instance_destroy(other);
scr_one_channel_sound(snd_enemy_hit);
score += 10;