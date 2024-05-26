/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 21;
state = 1;
if instance_exists(obj_mainmenu_controller)
{
    obj_mainmenu_controller.state = 2;
    obj_mainmenu_controller.t = 0;
}

