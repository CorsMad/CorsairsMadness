/// @description Insert description here
// You can write your code in this editor
t = 0;

text[0,0] = "Just look at the big fish caught in my nets.";
text[0,1] = "Well, hello Captain, I've been waiting for you."
text[0,2] = "And you have changed a little."
text[0,3] = "What, has the temple blessed you with power?"
text[0,4] = "Fabulous!"
text[0,5] = "Well, Cap, don't hold yourself back."
text[0,6] = "Let's have some fun"
text[0,7] = "Show me what you are capable of."


text_current = 0;
text_last = 7;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);