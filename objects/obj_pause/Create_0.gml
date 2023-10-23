/// @description Insert description here
// You can write your code in this editor
//GME_Pause(true);
audio_pause_sound(obj_gme.snd_queue);
region = 0;
button_h = 8;
//Option Array
button[0] = "Continue";
button[1] = "Quit";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;