/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_options_controller)
{
    if obj_options_controller.a = 2
    {
        image_blend = c_red;
    }   else image_blend = c_white; 
}

if instance_exists(obj_pause)
{
    if obj_pause.a = 2
    {
        image_blend = c_red;
    }   else image_blend = c_white;    
}

if global.controlScheme = 0 
{
    
    x = camera_get_view_x(view_camera[0])+85;
}
if global.controlScheme = 1
{
    x = camera_get_view_x(view_camera[0])+144;
}   
