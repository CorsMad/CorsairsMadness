/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(1008,224,0,obj_crawling_molded);
instance_create_depth(1168,224,0,obj_crawling_molded);

var i = instance_create_depth(480,0,0,obj_enemy_creator);
i.image_yscale = 18;
i.x_cr = 752;
i.y_cr = 176;
i.obj_cr = obj_crawling_molded_l;

var i = instance_create_depth(560,0,0,obj_enemy_creator);
i.image_yscale = 18;
i.x_cr = 832;
i.y_cr = 128;
i.obj_cr = obj_crawling_molded_l;