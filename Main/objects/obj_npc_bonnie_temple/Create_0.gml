/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
vspd = 0;
hspd = 0;


pointer = instance_create_depth(x,y-32,depth-1,obj_icon_talk_npc_walking);
pointer.own = id;


isGrounded = 0;
talk_cr_t = 0;