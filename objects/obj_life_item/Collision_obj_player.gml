/// @description Insert description here
// You can write your code in this editor
if global.chuhoujoutaimode == true {
	health = 30;
}
else {
	lives += 1;
}
scr_one_channel_sound(snd_get_life);
instance_destroy();