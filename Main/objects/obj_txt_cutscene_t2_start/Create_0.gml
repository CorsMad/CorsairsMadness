/// @description Insert description here
// You can write your code in this editor

text[0,0] = "wh..where am i ?";
text[0,1] = "what is happening with me?"
text[0,2] = "i feel strange power in my body..."
text[0,3] = "I guess i need to get out of here. "

text_current = 0;
text_last = 3;
text_width = 400;
text_x = 40;
text_y = 8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);