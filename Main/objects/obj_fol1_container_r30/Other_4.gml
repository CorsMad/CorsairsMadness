/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(256,208,0,obj_grounded_molded);
instance_create_depth(336,112,0,obj_flying_molded);
instance_create_depth(656,240,0,obj_grounded_molded);
instance_create_depth(736,240,0,obj_grounded_molded);
instance_create_depth(1488,96,0,obj_flying_molded);
instance_create_depth(1568,176,0,obj_grounded_molded);

var i = instance_create_depth(608,0,0,obj_enemy_creator);
i.image_yscale = 17;
i.x_cr = 496;
i.y_cr = 224;
i.obj_cr = obj_molded_small_fastfly;

