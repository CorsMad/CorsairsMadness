/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(280,128,0,obj_plant);
instance_create_depth(448,56,0,obj_trapfire);
instance_create_depth(640,56,0,obj_trapfire);
instance_create_depth(720,56,0,obj_trapfire);


var o1 = instance_create_depth(160,112,0,obj_platform_3_v);
o1.spd = 1;
var o2 = instance_create_depth(368,192,0,obj_platform_3_h_e);
o2.spd = 1;
var o3 = instance_create_depth(560,192,0,obj_platform_2_h_e);
o3.spd = 1;

var o5 = instance_create_depth(848,80,0,obj_enemy_creator);
o5.x_cr = 1104;
o5.y_cr = 192;
o5.obj_cr = obj_skeleton_l;
o5.image_yscale = 9;
var o6 = instance_create_depth(928,80,0,obj_enemy_creator);
o6.x_cr = 1168;
o6.y_cr = 160;
o6.obj_cr = obj_skeleton_l;
o6.image_yscale = 9;
var o7 = instance_create_depth(976,80,0,obj_enemy_creator);
o7.x_cr = 1232;
o7.y_cr = 160;
o7.obj_cr = obj_skeleton_l;
o7.image_yscale = 11;

