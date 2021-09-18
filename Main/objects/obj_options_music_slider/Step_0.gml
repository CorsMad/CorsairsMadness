/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_options_controller)
{
    x = global.MSCvolume*160+47;
}

if instance_exists(obj_options_controller)
{
    if obj_options_controller.a = 0
    {
        image_blend = c_red;
    }   else image_blend = c_white;
}   