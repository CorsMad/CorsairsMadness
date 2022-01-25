/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(448,224,0,obj_grounded_molded);
instance_create_depth(592,224,0,obj_grounded_molded);
instance_create_depth(1296,176,0,obj_flying_molded);
instance_create_depth(1440,224,0,obj_grounded_molded);

var i = instance_create_depth(1280,64,0,obj_follower_grounded_creator);
i.x_cr = 1200;
i.image_yscale = 14;

instance_create_depth(0,0,0,obj_dc_onl_f1r40);