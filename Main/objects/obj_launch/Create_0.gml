/// @description Insert description here
// You can write your code in this editor
instance_create_depth(0,0,0,obj_music_controller);
t = 0;

if file_exists("CMsettings.save")
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
                    break;
                case 2: 
                    window_set_fullscreen(false);
                    window_set_size(1600, 900);     
                    break;
                case 3:
                    window_set_fullscreen(false);
                    window_set_size(1366, 768);  
                    break;
                case 4: 
                    window_set_fullscreen(false);
                    window_set_size(1280, 720);
                    break;
                case 5: 
                    window_set_fullscreen(false);
                    window_set_size(800, 600);
                    break;
    }
} else
{
    fnc_settings_load();
    scr_save_settings();
}

