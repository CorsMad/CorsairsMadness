/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.chest_j1_r14 = 1
{
    instance_create_depth(352,128,0,obj_chest_j1_r14);
}

if global.maze_trigger1_j1_r13 = 0 
{
    var sw1 = instance_create_depth(48,192,0,obj_j1_r14_switch);   
    sw1.isOn = 0;
} else 
{
    var sw1 = instance_create_depth(48,192,0,obj_j1_r14_switch);   
    sw1.isOn = 1;
}