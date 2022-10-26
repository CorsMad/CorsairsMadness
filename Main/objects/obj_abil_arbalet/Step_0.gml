/// @description Insert description here
// You can write your code in this editor
t++;
if t = 5
{
    var i = instance_create_depth(x+sign(image_xscale)*16,y,depth-1,obj_abil_arbalet_proj);   
    if image_xscale = 1
    {
        i.spd = 5;
        i.image_xscale = 1;
    } else 
    {
        i.spd = -5;
        i.image_xscale = -1;
    }
}

image_alpha -=0.025;