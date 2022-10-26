/// @description Insert description here
// You can write your code in this editor

text[0,0] = "No no no no! My ship!";
text[0,1] = "What a terrible storm."
text[0,2] = "PEW !!! JOHNNY !!!!"
text[0,3] = "Where did everybody go?"
text[0,4] = "I guess I should go look for them."

text_current = 0;
text_last = 4;
text_width = 400;
text_x = 40;
text_y = 8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);