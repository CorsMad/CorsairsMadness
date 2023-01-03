/// @description Insert description here
// You can write your code in this editor

#region eng

eng1 = choose("[fnt_pixel]A stranger, talk to the Chief.","[fnt_pixel]It is our tradition that you must first be introduced to the Chief.");

#endregion

scr_text_starter(0,0.5);
/*
t = 0;

text[0,0] = choose("A stranger, talk to the Chief.","It is our tradition that you must first be introduced to the Chief.");

text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);