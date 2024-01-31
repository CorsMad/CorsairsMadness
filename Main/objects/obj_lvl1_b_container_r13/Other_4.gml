/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

var ec1 = instance_create_depth(96,90,0,obj_enemy_creator);
ec1.image_yscale = 5;
ec1.x_cr = 496;
ec1.y_cr = 128;
ec1.obj_cr = obj_bird_horizontal_waving_l;


var ec2 = instance_create_depth(368,176,0,obj_enemy_creator);
ec2.image_xscale = 6;
ec2.x_cr = -16;
ec2.y_cr = 208;
ec2.obj_cr = obj_bird_horizontal_fast_r;

var e = instance_create_depth(336,240,0,obj_plant);
e.image_xscale = -1;

