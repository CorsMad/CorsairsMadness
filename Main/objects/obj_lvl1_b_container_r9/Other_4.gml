/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(288,256,-1,obj_dove);
instance_create_depth(320,96,0,obj_pad_red);
var o1 = instance_create_depth(72,160,0,obj_enemy_creator_behind);
o1.obj_cr = obj_skeleton_thrower;
o1.x_cr = 72;
o1.y_cr = 160;