/// @description Insert description here
// You can write your code in this editor
instance_create_depth(24,0,-1,obj_options_main_selector);
instance_create_depth(0,0,-1,obj_options_main_selected);
instance_create_depth(0,0,-1,obj_options_main_selector_music);
instance_create_depth(0,0,-1,obj_options_main_selector_sfx);
instance_create_depth(0,0,-1,obj_options_main_control_scheme);
//instance_create_depth(0,0,-1,obj_options_main_selector_selected);
page = 0; //  страницы
select = 0; // значение стрелки
delay = 0;

monitorWidth = display_get_width();
monitorHeight = display_get_height();