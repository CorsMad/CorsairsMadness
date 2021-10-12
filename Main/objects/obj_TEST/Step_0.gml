/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("F"))
{
    fullscreen = !fullscreen;
    window_set_fullscreen(fullscreen);
}

if fullscreen = false
{
    if keyboard_check_pressed(ord("G"))
    {
        a++; 
        monitorWidth = display_get_width();
        monitorHeight = display_get_height();
        windowWidth = window_get_width();
        windowHeight = window_get_height();
        window_set_position(monitorWidth/2-windowWidth/2,monitorHeight/2-windowHeight/2);
    }
    switch(a)
    {   
        case 0: window_set_size(1600,900);break;
        case 1: window_set_size(1280,720);break;
    }
    
    if a > 1
    {
        a = 0;   
    }
} else a = -1;

