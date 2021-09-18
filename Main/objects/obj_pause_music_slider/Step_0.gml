/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause)
{
    x = camera_get_view_x(view_camera[0])+global.MSCvolume*160+47;
}

if instance_exists(obj_pause)
{
    if obj_pause.a = 0
    {
        image_blend = c_red;
    }   else image_blend = c_white;
}   