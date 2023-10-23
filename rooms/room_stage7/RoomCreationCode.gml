scr_soundtrack(16);
global.stage = 7;
global.pow = 100;
global.stage_speed = 0.25;

randomize();
with(obj_kedama_razor_red) {
	x = irandom_range(8,184);
}
with(obj_kedama_yellow) {
	hp = 100;
}