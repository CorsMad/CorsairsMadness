/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if global.maze_trigger4_j1_r13 = 0 
{
    var sw1 = instance_create_depth(432,256,0,obj_j1_r17_switch);   
    sw1.isOn = 0;
} else 
{
    var sw1 = instance_create_depth(432,256,0,obj_j1_r17_switch);   
    sw1.isOn = 1;
}