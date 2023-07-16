/// @description Insert description here
// You can write your code in this editor
fnc_lng_jchief1();

scr_text_starter(4,0.5);




text[0,0] = choose("Good luck with finding your team!","Don't forget to visit the merchant more often.");


text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);