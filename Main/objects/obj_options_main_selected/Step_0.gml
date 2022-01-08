/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_options_main_controller)
{
    if obj_options_main_controller.page = 3
    {
        image_alpha = 1
        switch(global.controlScheme)
        {
            case 0:y = 80;break;
            case 1:y = 96;break;
        }

    } else if obj_options_main_controller.page = 1
    {
        image_alpha = 1;  
        switch(global.resolution)
        {
            case 0:y = 64;break;
            case 1:y = 96;break;
            case 2:y = 112;break;
            case 3:y = 128;break;
            case 4:y = 144;break;
            case 5:y = 160;break;
        }
    } else image_alpha = 0;
    
}

