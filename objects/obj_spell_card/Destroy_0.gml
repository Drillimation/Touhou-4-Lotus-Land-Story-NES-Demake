/// @description Insert description here
// You can write your code in this editor
var inst = instance_create_depth(0,0,0,obj_spell_bonus);
inst.bonus = time_bonus + (global.stage * 1000)

if failed = false {
	score += time_bonus + (global.stage * 1000)
}
else {
	inst.cleared = false;
}