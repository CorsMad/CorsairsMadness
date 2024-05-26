/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

var i = instance_create_depth(224,32,0,obj_follower_grounded_creator);
i.x_cr = 160;
i.image_xscale = 2;
i.image_yscale = 13;

var i1 = instance_create_depth(384,0,0,obj_enemy_creator);
i1.image_yscale = 17;
i1.x_cr = 528;
i1.y_cr = 96;
i1.obj_cr = obj_molded_small_crawling_left;

var i2 = instance_create_depth(464,0,0,obj_enemy_creator);
i2.image_yscale = 17;
i2.x_cr = 528;
i2.y_cr = 96;
i2.obj_cr = obj_molded_small_crawling_right;


instance_create_depth(864,113,0,obj_fastfly_molded);
instance_create_depth(1104,64,0,obj_fastfly_molded);
instance_create_depth(1712,192,0,obj_fastfly_molded);