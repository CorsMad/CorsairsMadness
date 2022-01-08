/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause_main_controller)
{
    if obj_pause_main_controller.page = 3
    {
        image_alpha = 1
        switch(global.controlScheme)
        {
            case 0:y = camera_get_view_y(view_camera[0])+80;break;
            case 1:y = camera_get_view_y(view_camera[0])+96;break;
        }

    } else if obj_pause_main_controller.page = 1
    {
        image_alpha = 1;  
        switch(global.resolution)
        {
            case 0:y = camera_get_view_y(view_camera[0])+64;break;
            case 1:y = camera_get_view_y(view_camera[0])+96;break;
            case 2:y = camera_get_view_y(view_camera[0])+112;break;
            case 3:y = camera_get_view_y(view_camera[0])+128;break;
            case 4:y = camera_get_view_y(view_camera[0])+144;break;
            case 5:y = camera_get_view_y(view_camera[0])+160;break;
        }
    } else image_alpha = 0;
    
}

