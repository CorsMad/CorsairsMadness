/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);



instance_create_depth(384,96,200,obj_trapspikes);
var o4 = instance_create_depth(192,112,200,obj_enemy_creator_behind)
o4.obj_cr = obj_skeleton_r;
o4.x_cr = 192;
o4.y_cr = 112;

instance_create_depth(176,96,200,obj_silver_key_creator);
instance_create_depth(528,192,200,obj_silver_key_door3);
instance_create_depth(528,144,200,obj_plant);

instance_create_depth(0,0,0,obj_dc_onl_l1br9);