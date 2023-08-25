/// @description Insert description here
// You can write your code in this editor

if isOn = 0
{
    instance_create_depth(x+random_range(4,12),y+random_range(4,12),depth-1,obj_sfx_desert_boss1_stars)
    image_alpha-=0.1   
    if image_alpha <=0 instance_destroy();
}





