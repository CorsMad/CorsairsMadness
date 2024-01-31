/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(272,208,100,obj_skeleton_thrower);

var c1 = instance_create_depth(384,48,0,obj_enemy_creator);
c1.image_yscale = 6;
c1.x_cr = -16;
c1.y_cr = 96;
c1.obj_cr = obj_bird_horizontal_waving_r;

var c2 = instance_create_depth(192,48,0,obj_enemy_creator);
c2.image_yscale = 6;
c2.x_cr = -16;
c2.y_cr = 96;
c2.obj_cr = obj_bird_horizontal_waving_r;

var c3 = instance_create_depth(128,176,0,obj_enemy_creator);
c3.image_yscale = 6;
c3.x_cr = 496;
c3.y_cr = 224;
c3.obj_cr = obj_bird_horizontal_waving_l;

