/// @description Insert description here
// You can write your code in this editor
instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0]),depth-1,obj_pause_main_selector);
instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-1,obj_pause_main_selected);
instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-1,obj_pause_main_selector_music);
instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-1,obj_pause_main_selector_sfx);
//instance_create_depth(0,0,-1,obj_options_main_selector_selected);
page = 0; //  страницы
select = 0; // значение стрелки
delay = 0;

input_change = 0 // вход в настройки клав 
confirm_input_change = 0; // подтверждение ввода

monitorWidth = display_get_width();
monitorHeight = display_get_height();