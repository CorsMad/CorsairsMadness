/// @description Insert description here
// You can write your code in this editor
fnc_lng_merch1();
/*
#region eng

eng1 = choose("[fnt_pixel]Maybe talk to a chief first?","[fnt_pixel]I advise you to go to the chief.");

#endregion
*/
scr_text_starter(0,0.5);

/*

text[0,0] = choose("Maybe talk to a chief first?","I advise you to go to the chief.");


text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);