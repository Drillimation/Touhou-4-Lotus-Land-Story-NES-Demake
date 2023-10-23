/// @description Insert description here
// You can write your code in this editor
button_h = 8;

//Option Array
button[0] = "Normal"; button_desc[0][0] = "Same like the original. One hit results in a KO."; button_desc[0][1] = "オリジナルように　おなじです。１つの　ヒットは　\nミス　に　いたる。";
button[1] = "Chuhou Joutai"; button_desc[1][0] = "Puts up a health system. Get KO'd and you must pay point items to continue playing."; button_desc[1][1] = "ＨＰシステムを　たてる。ミスばあいは、あそびつづ\nけるに　てんアイテムを　しはらわなければなりませ\nん。";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;