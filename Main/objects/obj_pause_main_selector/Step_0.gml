/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause_main_controller)
{
    //Главная страница
    if obj_pause_main_controller.page = 0   
    {
        switch(obj_pause_main_controller.select)
        {
            case 0: y = camera_get_view_y(view_camera[0])+64;break; 
            case 1: y = camera_get_view_y(view_camera[0])+80;break;
            case 2: y = camera_get_view_y(view_camera[0])+96;break;
            case 3: y = camera_get_view_y(view_camera[0])+144;break;
            case 4: y = camera_get_view_y(view_camera[0])+160;break;
        }
    }
    
    //Страница с графикой
    if obj_pause_main_controller.page = 1   
    {
        switch(obj_pause_main_controller.select)
        {
            case 0: y = camera_get_view_y(view_camera[0])+64;break; 
            case 1: y = camera_get_view_y(view_camera[0])+96;break;
            case 2: y = camera_get_view_y(view_camera[0])+112;break;
            case 3: y = camera_get_view_y(view_camera[0])+128;break;
            case 4: y = camera_get_view_y(view_camera[0])+144;break; 
            case 5: y = camera_get_view_y(view_camera[0])+160;break;
            case 6: y = camera_get_view_y(view_camera[0])+208;break;
        }
    }
    
    // Cтраница с музыкой
    if obj_pause_main_controller.page = 2   
    {
        switch(obj_pause_main_controller.select)
        {
            case 0: y = camera_get_view_y(view_camera[0])+83;break; 
            case 1: y = camera_get_view_y(view_camera[0])+131;break;
            case 2: y = camera_get_view_y(view_camera[0])+176;break;
        }
    }
    
    //Cтраница с управлением
    if obj_pause_main_controller.page = 3   
    {
        switch(obj_pause_main_controller.select)
        {
            case 0: y = camera_get_view_y(view_camera[0])+80;break; 
            case 1: y = camera_get_view_y(view_camera[0])+96;break;
            case 2: y = camera_get_view_y(view_camera[0])+128;break;
        }
    }
    
}