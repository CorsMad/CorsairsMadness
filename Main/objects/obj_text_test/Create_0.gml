/// @description Insert description here
// You can write your code in this editor

text[0,0] = "Greetings!";
text[0,1] = "Woah Howaeop efaieaipf eaf; iafe ipjfeaijnp efaijnpe fajinfae jnipaef pijnaef pni"

text_current = 0;
text_last = 1;
text_width = 100;
text_x = 32;
text_y = 32;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);