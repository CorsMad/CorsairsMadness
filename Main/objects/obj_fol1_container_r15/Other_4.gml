/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(1584,144,0,obj_flying_molded);

var i = instance_create_depth(240,0,0,obj_enemy_creator);
i.image_yscale = 12;
i.x_cr = 512;
i.y_cr = 80;
i.obj_cr = obj_crawling_molded;

var k = instance_create_depth(336,0,0,obj_enemy_creator);
k.image_yscale = 12;
k.x_cr = 608;
k.y_cr = 80;
k.obj_cr = obj_crawling_molded_l;

instance_create_depth(0,0,0,obj_dc_onl_f1r14);


