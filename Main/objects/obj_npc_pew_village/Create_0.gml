/// @description Insert description here
// You can write your code in this editor

state = 1;
t = 0;
prest = 0;
spd = 0;
talk = 0;

talk_cr_t = 0;
image_speed = 1;

pointer = instance_create_depth(x,y-64,depth-1,obj_icon_talk_npc);

if global.dia_hpmana_pew = 0 {
    questmark = instance_create_depth(x,y-96,depth-1,obj_crew_questmark);   
}

player_pos = 0;