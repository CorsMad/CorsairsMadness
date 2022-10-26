/// @description Insert description here
// You can write your code in this editor

text[0,0] = "What is that?  What a strange mask.";
text[0,1] = "Nothing bad will happen if I steal it, right?"


text_current = 0;
text_last = 1;
text_width = 400;
text_x = 40;
text_y = 8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);