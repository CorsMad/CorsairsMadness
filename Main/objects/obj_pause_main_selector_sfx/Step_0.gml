/// @description Insert description here
// You can write your code in this editor
menu_input()
if instance_exists(obj_pause_main_controller)
{
    if obj_pause_main_controller.page = 2
    {
        image_alpha = 1;   
    } else image_alpha = 0;
     if obj_pause_main_controller.select = 1
        {
            image_index = 1;   
            if key_right_press && global.SFXvolume < 1
            {
                fnc_snd_play_over(snd_menu_select);
                global.SFXvolume+=0.1;   
            }
            if key_left_press && global.SFXvolume > 0
            {
                fnc_snd_play_over(snd_menu_select);
                global.SFXvolume-=0.1;   
            }
        } else image_index = 0;
}

x = camera_get_view_x(view_camera[0])+global.SFXvolume*60+49;

