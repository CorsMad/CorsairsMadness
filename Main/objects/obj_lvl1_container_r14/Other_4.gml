/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(112,160,100,obj_pad_blue);

var o1 = instance_create_depth(288,144,100,obj_enemy_creator_behind);
o1.x_cr = 288;
o1.y_cr = 143;
o1.obj_cr = obj_skeleton_l;

var o2 = instance_create_depth(320,144,100,obj_enemy_creator_behind);
o2.x_cr = 320;
o2.y_cr = 143;
o2.obj_cr = obj_skeleton_l;


var o4 = instance_create_depth(16,48,0,obj_blob_creator);
o4.t = 80;

instance_create_depth(352,240,100,obj_trapspikes);
instance_create_depth(384,240,100,obj_trapspikes);

