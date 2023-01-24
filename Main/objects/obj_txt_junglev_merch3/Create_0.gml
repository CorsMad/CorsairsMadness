/// @description Insert description here
// You can write your code in this editor
fnc_lng_merch3();
/*
#region eng

eng1 = choose("[fnt_pixel]Well, what are you waiting for? Just go. I said good luck on your journey!","[fnt_pixel]Tick-tock, the clock is ticking. Go save the team. Good luck!");

#endregion
*/
scr_text_starter(0,0.5);

/*

text[0,0] = choose("Well, what are you waiting for? Just go. I said good luck on your journey!","Tick-tock, the clock is ticking. Go save the team. Good luck!");

text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);