// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_declare_spell_card(_boss,_sprite,_id){
	var inst = instance_create_layer(0,0,"Spell",obj_spell_card)
	with (inst) {
		boss = _boss
		sprite_index = _sprite;
		id_no = _id;
		ini_open("game_files/spell_cards" + global.suf + ".ini");
		text = ini_read_string(boss,id_no,"No text found!");
		ini_close();
	}
}