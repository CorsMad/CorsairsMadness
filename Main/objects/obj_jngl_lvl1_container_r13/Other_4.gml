/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.maze_trigger1_j1_r13 = 1
{
    instance_create_depth(128,144,0,obj_maze1_trigger1);   
}
if global.maze_trigger2_j1_r13 = 1
{
    instance_create_depth(128,224,0,obj_maze1_trigger2);   
}
if global.maze_trigger3_j1_r13 = 1
{
    instance_create_depth(352,144,0,obj_maze1_trigger3);   
}
if global.maze_trigger4_j1_r13 = 1
{
    instance_create_depth(352,224,0,obj_maze1_trigger4);   
}