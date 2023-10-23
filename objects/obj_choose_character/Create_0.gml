/// @description Insert description here
// You can write your code in this editor
region = 0;
button_h = 8;

button[0][0] = "Reimu"; button[0][1] = "はくれい　レイム"; button_desc[0][0] = @"Shrine maiden who
protects dreams and
tradition"; button_desc[0][1] = "ゆめと　でんとうを　ほしゅする　みこ";
button[1][0] = "Marisa"; button[1][1] = "きりさめ　マリサ"; button_desc[1][0] = @"Magician of magic and
red dreams"; button_desc[1][1] = "まほうと　べにゆめからなる　そんざい";
buttons_x = array_length(button);

menu_index_x = 0;
last_selected_x = 0;
next = false;
prev = false;
next_row = false;
prev_row = false;