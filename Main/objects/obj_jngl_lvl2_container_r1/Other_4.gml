/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.chest_j2_r1 = 1
{
    instance_create_depth(368,128,100,obj_chest_j2_r1);
}


var can = instance_create_depth(272,240,0,obj_cannon_level_j2);
can.isOn = global.cannon_j2_r1;



