/// @description Insert description here
// You can write your code in this editor
instance_create_depth(0,0,0,obj_music_controller);
instance_create_depth(0,0,0,obj_steam_ach);
t = 0;

if file_exists("CMsettingsN1.save")
{
    scr_load_settings();
    switch(global.resolution)
    {
        case 0: 
            window_set_fullscreen(true); 
            break;
        case 1: 
            window_set_fullscreen(false);  
            window_set_size(1920, 1080);    
            window_set_position(display_get_width()/2 - 1920/2, display_get_height()/2 - 1080/2);
            break;
        case 2: 
            window_set_fullscreen(false);
            window_set_size(1600, 900); 
            window_set_position(display_get_width()/2 - 1600/2, display_get_height()/2 - 900/2);
            break;
        case 3:
            window_set_fullscreen(false);
            window_set_size(1366, 768);  
            window_set_position(display_get_width()/2 - 1366/2, display_get_height()/2 - 768/2);
            break;
        case 4: 
            window_set_fullscreen(false);
            window_set_size(1280, 720);
            window_set_position(display_get_width()/2 - 1280/2, display_get_height()/2 - 720/2);
            break;
        case 5: 
            window_set_fullscreen(false);
            window_set_size(800, 600);
            window_set_position(display_get_width()/2 - 800/2, display_get_height()/2 - 600/2);
            break;
    }
} else
{
    window_set_fullscreen(true); 
    fnc_settings_load();
    scr_save_settings();
}

