/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


instance_create_depth(384,128,200,obj_trapspikes);

var o2 = instance_create_depth(544,256,200,obj_enemy_creator_behind);
o2.obj_cr = obj_plant; 
o2.x_cr = 544;
o2.y_cr = 256;

instance_create_depth(664,144,200,obj_trapfire);
instance_create_depth(712,176,200,obj_pad_blue);
instance_create_depth(712,80,200,obj_pad_blue);

instance_create_depth(528,96,200,obj_skeleton_archer);
instance_create_depth(496,192,200,obj_skeleton_archer);
instance_create_depth(640,256,200,obj_skeleton_r);
instance_create_depth(688,256,200,obj_skeleton_l);