/// @description Insert description here
// You can write your code in this editor
#region eng

eng1 = choose("[fnt_pixel]We created a special cannon! Check it after getting one of the keys.","[fnt_pixel]Check the walls carefully, some of them are fragile. There may be something hiding behind them.");

#endregion

scr_text_starter(0,0.5);

/*

text[0,0] = choose("We created a special cannon! Check it after getting one of the keys.","Check the walls carefully, some of them are fragile. There may be something hiding behind them.");


text_current = 0;
text_last = 0;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);