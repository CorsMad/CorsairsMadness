/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_j2_s1 = 0
{
    instance_create_depth(208,112,0,obj_secret_j2_s1);   
}




instance_create_depth(144,128,0,obj_pad_blue);
instance_create_depth(192,224,0,obj_bomb_creator);
instance_create_depth(256,160,0,obj_bomb_emitter);
instance_create_depth(400,240,0,obj_platform_2_v);
var o1 = instance_create_depth(560,184,0,obj_trapfire);
o1.t_max = 60;
instance_create_depth(672,240,0,obj_trapspikes);
instance_create_depth(704,240,0,obj_trapspikes);
instance_create_depth(736,240,0,obj_trapspikes);
var o2 = instance_create_depth(856,144,0,obj_trapfire);
o2.t_max = 120;
var o3 = instance_create_depth(792,80,0,obj_trapfire);
o3.t_max = 120;
var o4 = instance_create_depth(440,80,0,obj_trapfire);
o4.t_max = 200;