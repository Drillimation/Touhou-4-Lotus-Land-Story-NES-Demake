/// @description Insert description here
// You can write your code in this editor
if sprite_index == spr_mugetsu_move {
	randomize();
	x = irandom_range(48,144)
	y = irandom_range(32,96)
	sprite_index = spr_mugetsu_reappear
}
if sprite_index == spr_mugetsu_reappear {
	sprite_index = spr_mugetsu
}