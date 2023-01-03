/// @description Insert description here
// You can write your code in this editor
t = 0;

text[0,0] = "Captain.... Captain is that you?";
text[0,1] = "What happened to me? Where's our team? "
text[0,2] = "Did I... attack you? I screwed up again, Cap."
text[0,3] = "I lost control because of that damn mask. "
text[0,4] = "It won't let me go, Captain. I can't control it."
text[0,5] = "Help me..... please."
text[0,6] = "Please.... make it stop."


text_current = 0;
text_last = 6;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);