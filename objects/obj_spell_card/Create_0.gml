/// @description Insert description here
// You can write your code in this editor
boss = "ORANGE"
id_no = 0;
opac = 0;
audio_play_sound(snd_spell_card,10,false);
ini_open("game_files/spell_cards" + global.suf + ".ini");
text = ini_read_string(boss,id_no,"No text found!");
ini_close();
alarm[0] = 5;
failed = false;
time_bonus = 0;