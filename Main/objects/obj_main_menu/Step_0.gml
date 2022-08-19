/// @description Insert description here
// You can write your code in this editor

var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_press = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);

var move = key_down - key_up;

if move!= 0
{
    index+=move;
    
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if key_press // accept
{
    switch(submenu)
    {
        case 0: // main menu
            switch(index)
            {
                case 0: 
                    break;
                case 1: 
                    break;
                case 2: 
                    submenu = 1;
                    index = 0;
                    break;
                case 3:
                    game_restart();
                    break;
        
            }
            break;
        case 1: // options
            switch(index)
            {
                case 0: 
                    submenu = 2;
                    index = 0;
                    break;
                case 1: 
                    break;
                case 2: 
                    submenu = 4;
                    index = 0;
                    break;
                case 3:
                    submenu = 0;
                    index = 2;
                    break;   
            }
            break;
        case 2: // graphics
            switch(index)
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
                case 6:
                    submenu = 1;
                    index = 0;
                    break;
            break;
            }
        case 3: // controls
            
            break;
        case 4: // sound
            switch(index)
            {
                case 0:
                    break;
                case 1:
                    break;
                case 2:
                    submenu = 1;
                    index = 2;
                    break;
            }
            break;
    }
}