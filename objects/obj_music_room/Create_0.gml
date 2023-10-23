/// @description Insert description here
// You can write your code in this editor
region = 0;
button_h = 8;

//Option Array
button[0][0] = "Gensokyo ~ Lotus Land Story";
button[0][1] = "げんそうきょう　～　Ｌｏｔｕｓ　Ｌａｎｄ　Ｓｔｏｒｙ";
button[1][0] = "Witching Dream";
button[1][1] = "Ｗｉｔｃｈｉｎｇ　Ｄｒｅａｍ";
button[2][0] = "Selene's Light"
button[2][1] = "Ｓｉｌｅｎｅ’ｓ　Ｌｉｇｈｔ"
button[3][0] = "Decoration Battle";
button[3][1] = "そうしょくせん　～　Ｄｅｃｏｒａｔｉｖｅ　Ｇａｍｅ";
button[4][0] = "Break the Sabbath";
button[4][1] = "Ｂｒｅａｋ　ｔｈｅ　Ｓａｂｂａｔｈ";
button[5][0] = "Scarlet Symphony";
button[5][1] = "こうきょうきょく　～　Ｓｃａｒｌｅｔ　Ｐｈｏｎｅｍｅ";
button[6][0] = "Bad Apple!!";
button[6][1] = "Ｂａｄ　Ａｐｐｌｅ！！";
button[7][0] = "Spirit Battle ~ Perdition Crisis";
button[7][1] = "れいせん　～　Ｐｅｒｄｉｔｉｏｎ　Ｃｒｉｓｉｓ";
button[8][0] = "Alice Maestra";
button[8][1] = "アリスマエステラ";
button[9][0] = "Maiden's Capriccio ~ Capriccio";
button[9][1] = "しょうじょきそうきょく　～　Ｃａｐｒｉｃｃｉｏ";
button[10][0] = "Vessel of Stars ~ Casket of Star";
button[10][1] = "ほしのうつわ　～　Ｃａｓｋｅｔ　ｏｆ　Ｓｔａｒ";
button[11][0] = "Lotus Love";
button[11][1] = "Ｌｏｔｕｓ　Ｌｏｖｅ";
button[12][0] = "Sleeping Terror";
button[12][1] = "ねむれるきょうふ　～　Ｓｌｅｅｐｉｎｇ　Ｔｅｒｒｏｒ";
button[13][0] = "Dream Land";
button[13][1] = "Ｄｒｅａｍ　Ｌａｎｄ";
button[14][0] = "Faint Dream ~ Inanimate Dream";
button[14][1] = "ゆうむ　～　Ｉｎａｎｉｍａｔｅ　Ｄｒｅａｍ";
button[15][0] = "The Inevitably Forbidden Game";
button[15][1] = "きんじざるを　えない　ゆうぎ";
button[16][0] = "Illusion of a Maid";
button[16][1] = "メイドげんそう　～　Ｉｃｅｍｉｌｋ　Ｍａｇｉｃ";
button[17][0] = "Cute Devil ~ Innocence";
button[17][1] = "かわいいあくま　～　Ｉｎｎｏｃｅｎｃｅ";
button[18][0] = "Days";
button[18][1] = "Ｄａｙｓ";
button[19][0] = "Peaceful";
button[19][1] = "Ｐｅａｃｅｆｕｌ";
button[20][0] = "Arcadian Dream";
button[20][1] = "Ａｒｃａｄｉａｎ　Ｄｒｅａｍ";
button[21][0] = "Those Who Live in Illusions";
button[21][1] = "げんそうの　じゅうにん";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;

text[0] = @"Push A to play song
Push B to return to main menu"
text[1] = @"うたをえんそうするにＡボタンをおして
メインメニューにもどるにＢボタンをおして"