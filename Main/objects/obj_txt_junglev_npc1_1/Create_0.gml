/// @description Insert description here
// You can write your code in this editor

text[0,0] = "Wow newcomer";
text[0,1] = "You should talk to our chief"


text_current = 0;
text_last = 1;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);