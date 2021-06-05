/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(160,128,0,obj_blob_creator);
instance_create_depth(272,224,0,obj_platform_3_h_e);
instance_create_depth(704,240,0,obj_platform_3_v_e);

var o1 = instance_create_depth(872,216,0,obj_trapfire);
o1.t_max = 80;

instance_create_depth(928,240,0,obj_platform_3_h_e);

instance_create_depth(336,128,0,obj_bird_horizontal_shooting);
instance_create_depth(752,176,0,obj_bird_vertical);
instance_create_depth(832,160,0,obj_skeleton_thrower);
instance_create_depth(1376,160,0,obj_bird_vertical);
instance_create_depth(1504,256,0,obj_bird_vertical);