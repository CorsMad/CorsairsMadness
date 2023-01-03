/// @description Insert description here
// You can write your code in this editor

#region eng

eng1 =  "[fnt_pixel]Greetings, stranger! I am the chief of this settlement of natives. I know you're tired and hungry, but there's no time to rest. You want to save your crew, don't you?";
eng2 =  "[fnt_pixel]It won't be easy, but if you put aside fear and greed, you can do it. Your team members are locked in cursed temples, but it's not easy to get in.";
eng3 =  "[fnt_pixel]You will need keys to unlock the doors to these temples. Our local inventor has a gift for you to help you find the keys.";
eng4 =  "[fnt_pixel]He's waiting for you outside. Be sure to talk to him.";
eng5 =  "[fnt_pixel]I hope you find your team in good health. Be sure to check out the trinket store, maybe you'll find something for yourself there.";

#endregion

scr_text_starter(4,0.5);


/*

text[0,0] = "Greetings, stranger! I am the chief of this settlement of natives. I know you're tired and hungry, but there's no time to rest. You want to save your crew, don't you?";
text[0,1] = "It won't be easy, but if you put aside fear and greed, you can do it. Your team members are locked in cursed temples, but it's not easy to get in.";
text[0,2] = "You will need keys to unlock the doors to these temples. Our local inventor has a gift for you to help you find the keys.";
text[0,3] = "He's waiting for you outside. Be sure to talk to him.";
text[0,4] = "I hope you find your team in good health. Be sure to check out the trinket store, maybe you'll find something for yourself there.";

text_current = 0;
text_last = 4;
text_width = 400;

text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);