/// @description Insert description here
// You can write your code in this editor

state = 0;

talkNumber = 0

/*
0 - первый разговор
1 - второй разговор
2 - разговор после решения головоломки
*/

talk = 0;

talk_cr_t = 0;

pointer = instance_create_depth(x,y-64,depth-1,obj_icon_talk_npc_walking);
pointer.own = id;

image_speed = 0.5;
