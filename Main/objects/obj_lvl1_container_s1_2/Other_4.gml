/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(400,160,0,obj_pad_blue);
instance_create_depth(464,160,0,obj_pad_blue);
instance_create_depth(496,72,0,obj_trapfire);

var o1 = instance_create_depth(544,64,0,obj_enemy_creator);
o1.obj_cr = obj_bird_horizontal_waving_l;
o1.x_cr = 800;
o1.y_cr = 192;
o1.image_yscale = 8;


var o3 = instance_create_depth(592,64,0,obj_enemy_creator);
o3.obj_cr = obj_bird_horizontal_waving_l;
o3.x_cr = 848;
o3.y_cr = 192;
o3.image_yscale = 11;

instance_create_depth(576,208,0,obj_trapspikes);
instance_create_depth(608,208,0,obj_trapspikes);
instance_create_depth(640,208,0,obj_trapspikes);
instance_create_depth(672,208,0,obj_trapspikes);
instance_create_depth(704,208,0,obj_trapspikes);
instance_create_depth(736,208,0,obj_trapspikes);

instance_create_depth(176,224,0,obj_snake);
instance_create_depth(368,128,0,obj_bird_vertical);