/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
vspd = 0;
hspd = 0;

instance_create_depth(x,144,depth,obj_boss_dp_graph_ghost_creator);

pointer = instance_create_depth(x,y-64,depth-1,obj_icon_talk_npc_walking);
pointer.own = id;


isGrounded = 0;
talk_cr_t = 0;

player_pos= 0;