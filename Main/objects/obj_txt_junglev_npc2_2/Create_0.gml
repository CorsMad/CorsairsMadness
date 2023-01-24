/// @description Insert description here
// You can write your code in this editor
fnc_lng_jnpc2_2();
/*
#region eng1 

eng1 = choose("[fnt_pixel]Spring boots are great stuff! Try jumping on enemies to deliver a crushing blow!","[fnt_pixel]Once you get the keys you can visit our arena and test your skills. There are rewards for winning");

#endregion
*/
scr_text_starter(0,0.5);
/*
text[0,0] = choose("Spring boots are great stuff! Try jumping on enemies to deliver a crushing blow!","Once you get the keys you can visit our arena and test your skills. There are rewards for winning");

text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);