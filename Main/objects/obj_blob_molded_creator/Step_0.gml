/// @description Insert description here
// You can write your code in this editor
t++;
if t > t_max 
{
    image_speed = 0.75;   
}
if (image_index > image_number - 1) 
{
    image_index = 0;
    image_speed = 0;
    t = 0;
    instance_create_depth(x+32,y+32,depth,obj_blob_molded);
}

if t > t_max 
{
    state = 2;   
} else state = 1;