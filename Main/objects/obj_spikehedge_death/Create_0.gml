/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.x < x
    {
        hspd = 1;
    } else hspd = -1;
}
image_alpha = 0.75;
vspd = -5;
image_yscale = -1;
t = 0;
image_blend = c_red;