/// @description Insert description here
// You can write your code in this editor

#region eng

eng1 = "[fnt_pixel]Absolutely useless.";
eng2 = "[fnt_pixel]But please, do not despair!"
eng3 = "[fnt_pixel]It's not over for you ... yet."
eng4 = "[fnt_pixel]I will give you the opportunity to escape."
eng5 = "[fnt_pixel]Don't disappoint me Cap, let's have some fun!"

#endregion

scr_text_starter(4,0.5);
/*
t = 0;

text[0,0] = "Absolutely useless.";
text[0,1] = "But please, do not despair!"
text[0,2] = "It's not over for you ... yet."
text[0,3] = "I will give you the opportunity to escape."
text[0,4] = "Don't disappoint me Cap, let's have some fun!"


text_current = 0;
text_last = 4;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);