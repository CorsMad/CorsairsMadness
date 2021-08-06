/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(320,144,0,obj_fastfly_molded);
instance_create_depth(688,64,0,obj_fastfly_molded);
instance_create_depth(816,112,0,obj_fastfly_molded);

var i = instance_create_depth(736,0,0,obj_enemy_creator);
i.image_yscale = 17;
i.x_cr = 624;
i.y_cr = 224;
i.obj_cr = obj_molded_small_fastfly;

var i2 = instance_create_depth(400,0,0,obj_enemy_creator);
i2.image_yscale = 17;
i2.x_cr = 352;
i2.y_cr = 224;
i2.obj_cr = obj_molded_small_fastfly;

var i3 = instance_create_depth(528,0,0,obj_enemy_creator);
i3.image_yscale = 17;
i3.x_cr = 496;
i3.y_cr = 176;
i3.obj_cr = obj_molded_small_fastfly;