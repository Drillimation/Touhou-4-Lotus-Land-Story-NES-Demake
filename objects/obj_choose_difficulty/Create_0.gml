/// @description Insert description here
// You can write your code in this editor
button_h = 8;
//Option Array
button[0][0] = "Easy"; button_desc[0][0][0] = "Recommended for beginners"; button_desc[0][0][1] = "しょしんしゃおすすめです。";
button[0][1] = "Normal"; button_desc[0][1][0] = "Recommended for most players"; button_desc[0][1][1] = "ほとんどのプレーヤーおすすめです。";
button[1][0] = "Difficult"; button_desc[1][0][0] = "Recommended for experienced players"; button_desc[1][0][1] = "けいけんほうふなプレーヤーおすすめです。";
button[1][1] = "Lunatic"; button_desc[1][1][0] = "Recommended for experts"; button_desc[1][1][1] = "せんもんかのプレーヤーおすすめです。";
buttons_x = array_length(button);
buttons_y = array_length(button[0]);

menu_index_x = 0;
menu_index_y = 0;
last_selected_x = 0;
last_selected_y = 0;
next = false;
prev = false;
next_row = false;
prev_row = false;