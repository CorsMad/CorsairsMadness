/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_options_main_controller)
{
    if  obj_options_main_controller.page = 3
    {
        image_alpha = 1;
    }   else image_alpha = 0;
}

switch(global.controlScheme)
{
    case 0: image_index = 0;break;
    case 1: image_index = 1;break;
}