/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

var o1 = instance_create_depth(104,144,200,obj_trapfire);
o1.t = 80;

var o2 = instance_create_depth(136,216,200,obj_trapfire);
o2.t = 80;

instance_create_depth(96,160,200,obj_trapspikes);
instance_create_depth(192,240,200,obj_platform_3_v_e);
instance_create_depth(352,240,200,obj_platform_3_h_e);
instance_create_depth(496,136,200,obj_trapfire);
instance_create_depth(712,208,200,obj_platform_2_v_e);

instance_create_depth(640,96,200,obj_trapspikes);
var o4 = instance_create_depth(464,112,200,obj_enemy_creator_behind)
o4.obj_cr = obj_skeleton_r;
o4.x_cr = 464;
o4.y_cr = 112;

instance_create_depth(432,96,200,obj_silver_key_creator);
instance_create_depth(784,192,200,obj_silver_key_door3);
instance_create_depth(768,144,200,obj_plant);