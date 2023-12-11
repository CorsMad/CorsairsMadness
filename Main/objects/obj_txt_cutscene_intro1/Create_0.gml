/// @description Insert description here
// You can write your code in this editor


#region eng

eng1 = "[fnt_pixel]No no no no! My ship!"
eng2 = "[fnt_pixel]What happened? I don't remember anything. I must have taken too much rum on board."
eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
eng4 = "[fnt_pixel]Hmm, no one's answering. God damn it, I hope they're still alive."
eng5 = "[fnt_pixel]Time to take a look around."
       
       
#endregion

text = "";
scr_t = 0;

typist = scribble_typist();
typist.in(0.5, 0);
typist.sound(snd_vo_npc_sam_h,1,1,1);


text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;


iconspd = 0;
iconspdt= 0;





/*

text[0,0] = "No no no no! My ship!";
text[0,1] = "What happened? I don't remember anything. I must have taken too much rum on board."
text[0,2] = "PEW !!! JOHNNY !!!!"
text[0,3] = "Hmm, no one's answering. God damn it, I hope they're still alive."
text[0,4] = "Time to take a look around."

text_current = 0;
text_last = 4;
text_width = 400;
text_x = 40;
text_y = 8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);