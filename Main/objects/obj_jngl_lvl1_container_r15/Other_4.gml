/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.maze_trigger2_j1_r13 = 0 
{
    var sw1 = instance_create_depth(48,96,101,obj_j1_r15_switch);   
    sw1.isOn = 0;
} else 
{
    var sw1 = instance_create_depth(48,96,101,obj_j1_r15_switch);   
    sw1.isOn = 1;
}