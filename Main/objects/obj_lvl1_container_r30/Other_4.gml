/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

var o1 = instance_create_depth(96,112,100,obj_enemy_creator_behind);
o1.obj_cr = obj_skeleton_r;
o1.x_cr = 96;
o1.y_cr = 112;

var o2 = instance_create_depth(144,112,100,obj_enemy_creator_behind);
o2.obj_cr = obj_skeleton_r;
o2.x_cr = 144;
o2.y_cr = 112;

var o3 = instance_create_depth(224,112,100,obj_enemy_creator_behind);
o3.obj_cr = obj_skeleton_r;
o3.x_cr = 224;
o3.y_cr = 112;