/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(288,208,200,obj_plant);
instance_create_depth(608,144,200,obj_skeleton_thrower);
instance_create_depth(720,96,200,obj_skeleton_thrower);

instance_create_depth(320,144,200,obj_pad_blue);
instance_create_depth(464,192,200,obj_trapspikes);
instance_create_depth(496,192,200,obj_trapspikes);
instance_create_depth(840,160,200,obj_pad_red);


var o2 = instance_create_depth(1104,-96,200,obj_enemy_creator);
o2.obj_cr = obj_skeleton_l;
o2.x_cr = 1376;
o2.y_cr = 112;
o2.image_yscale = 25;

var o3 = instance_create_depth(1168,-96,200,obj_enemy_creator);
o3.obj_cr = obj_skeleton_l;
o3.x_cr = 1472;
o3.y_cr = 112;
o3.image_yscale = 25;

instance_create_depth(1360,192,200,obj_pad_red);
instance_create_depth(1224,232,200,obj_silver_key_creator);
instance_create_depth(1568,208,200,obj_silver_key_door3);