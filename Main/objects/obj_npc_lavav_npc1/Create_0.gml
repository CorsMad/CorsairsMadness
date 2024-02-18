/// @description Insert description here
// You can write your code in this editor

state = 1;
t = 0;
prest = 0;
spd = 0;
talk = 0;

talk_cr_t = 0;

pointer = instance_create_depth(x,y-64,depth-1,obj_icon_talk_npc_walking);
pointer.own = id;

image_speed = 0.5;

qm = instance_create_depth(x,y-92,-200,obj_npc_npc_questmark);
qm.fol = id;

player_pos = 0;