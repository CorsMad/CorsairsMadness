/// @description Insert description here
// You can write your code in this editor
fnc_lng_t1_end();
/*
#region eng

eng1 = "[fnt_pixel]I wonder where I ended up. It's damp in here.";
eng2 = "[fnt_pixel]Hmm, what's that? Doesn't look suspicious at all."
eng3 = "[fnt_pixel]This thing must be worth a lot of [c_yellow]gold[/c_yellow]."
eng4 = "[fnt_pixel]Wait a minute, what's happening?"

#endregion
*/
scr_text_starter(3,0.5,snd_vo_npc_sam_h);

/*
text = "";
scr_t = 0;
scr_t_max = 3;

typist = scribble_typist();
typist.in(0.5, 0);

text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

iconspd = 0;
iconspdt= 0;

/*

text[0,0] = "I wonder where I ended up. It's damp in here.";
text[0,1] = "Hmm, what's that? Doesn't look suspicious at all."
text[0,2] = "This thing must be worth a lot of money."
text[0,3] = "Wait a minute, what's happening?"


text_current = 0;
text_last = 3;
text_width = 400;
text_x = 40;
text_y = 8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);