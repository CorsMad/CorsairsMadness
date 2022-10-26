/// @description Insert description here
// You can write your code in this editor


var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_press = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);

var move = key_down - key_up;
var movelr = key_right - key_left;


if move!= 0 
{
    index+=move;
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr!= 0 && (submenu = 1 || submenu = 3)
    {
        dindex += movelr;
        if dindex < 0 dindex = 2;
        else if dindex >= 3 dindex = 0;
    }

if key_press // accept
{
    switch(submenu)
    {
        case 0: // main menu
            switch(index)
            {
                case 0: 
                    submenu = 1;
                    index = 0;
                    break;
                case 1: 
                    submenu = 2;
                    index = 0;
                    break;
                case 2: 
                    submenu = 3;
                    index = 0;
                    break;
                case 3: 
                    submenu = 4;
                    index = 0;
                    break;
            }
            break;
        case 1: // Человек
            
            switch(index)
            {
                case 4:
                    submenu = 0;
                    index = 0;
                    dindex = 0;
                    break;
            }
            break;
        case 2: // Одержимый
            switch(index)
            {
                case 4:
                    submenu = 0;
                    index = 1;
                    dindex = 0;
                    break;
            }
            break;
        case 3: // Лодка
            switch(index)
            {
                case 4:
                    submenu = 0;
                    index = 2;
                    dindex = 0;
                    break;
            }
            break;
        case 4: // jade
            switch(index)
            {
                case 2:
                    submenu = 0;
                    index = 3;
                    dindex = 0;
                    break;
            }
            break;
    }
}



