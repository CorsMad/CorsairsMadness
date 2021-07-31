/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(160,96,0,obj_crawling_molded);
instance_create_depth(656,144,0,obj_crawling_molded);

var i = instance_create_depth(384,0,0,obj_enemy_creator);
i.image_yscale = 17;
i.x_cr = 560;
i.y_cr = 112;
i.obj_cr = obj_molded_small_crawling_left;
