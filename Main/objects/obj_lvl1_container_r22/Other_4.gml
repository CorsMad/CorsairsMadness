/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(96,176,0,obj_pad_blue);
instance_create_depth(320,176,0,obj_pad_red);
var o1 = instance_create_depth(480,96,0,obj_enemy_creator);
o1.obj_cr = obj_bird_horizontal_fast_l;
o1.x_cr = 860;
o1.y_cr = 144;
o1.image_yscale = 15;

var o2 = instance_create_depth(608,96,0,obj_enemy_creator);
o2.obj_cr = obj_bird_horizontal_fast_l;
o2.x_cr = 948;
o2.y_cr = 176;
o2.image_yscale = 15;

instance_create_depth(176,224,0,obj_trapspikes);
instance_create_depth(560,192,0,obj_trapspikes);
instance_create_depth(592,192,0,obj_trapspikes);
instance_create_depth(688,224,0,obj_trapspikes);
instance_create_depth(720,224,0,obj_trapspikes);
instance_create_depth(944,144,0,obj_bird_vertical);
instance_create_depth(1064,224,0,obj_bird_vertical);

