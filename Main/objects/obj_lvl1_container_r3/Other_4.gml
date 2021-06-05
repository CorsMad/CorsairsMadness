/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(272,240,100,obj_snake);
instance_create_depth(400,240,100,obj_snake);

instance_create_depth(320,144,100,obj_skeleton_thrower);

instance_create_depth(480,128,100,obj_plant);
var e1 = instance_create_depth(496,224,100,obj_plant);
e1.image_xscale = -1;
e1.timer = 50;

instance_create_depth(408,160,100,obj_pad_blue);
instance_create_depth(864,160,100,obj_pad_blue);

instance_create_depth(760,208,100,obj_dove);
