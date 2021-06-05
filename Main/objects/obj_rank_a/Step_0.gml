/// @description Insert description here
// You can write your code in this editor
t++;

if t > 60 
{
    image_speed = 1;   
} else image_speed = 0;

if t = 120 
{
    t = 0;
}
if t = 119 
{
    instance_create_depth(x,y-9,depth-1,obj_sfx3);
    instance_create_depth(x,y-9,depth-1,obj_sfx_checkpoint_cretor_big);   
}

if image_alpha < 1 
{
    image_alpha+=0.05;   
}