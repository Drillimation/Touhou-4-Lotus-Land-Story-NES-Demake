/// @description Insert description here
// You can write your code in this editor
alarm[0] = room_speed * 5;
ini_open("game_files/spell_cards" + global.suf + ".ini");
text = ini_read_string(global.character,global.weapontype,"No text found!");
ini_close();
switch(global.character) {
	case "REIMU":
		switch(global.weapontype) {
			case 0:
				sprite_index = spr_fantasy_seal;
				break;
			case 1:
				sprite_index = spr_evil_sealing_circle;
				break;
		}
		break;
	case "MARISA":
		switch(global.weapontype) {
			case 0:
				sprite_index = spr_stardust_reverie;
				break;
			case 1:
				sprite_index = spr_master_spark;
				break;
		}
		break;
}
scr_one_channel_sound(snd_spell_card);