/// @description Insert description here
// You can write your code in this editor
if image_alpha < 1
{
    image_alpha += 0.5;   
}
b++;
if b = 85 
{
    instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx3);
    b = 0;
}


t++;

if t > 60 
{
    image_speed = 1;   
} else image_speed = 0;

if t = 180 
{
    t = 0;
}