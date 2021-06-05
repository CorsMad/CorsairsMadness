/// @description Insert description here
// You can write your code in this editor
if global.Chests_array[MyID,0] == 1 
{
    instance_destroy(); 
} else 
    {
        instance_create_depth(x,y,depth,obj_chest);
        global.Chests_array[MyID,0] = 1;
    }