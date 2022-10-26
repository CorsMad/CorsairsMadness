// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_keyboard_key_change(argument0)
{
    var key_string;
    switch(argument0)
    {
        case vk_up: key_string = "up key";break;
        case vk_down: key_string = "down key";break;
        case vk_left: key_string = "left key";break;
        case vk_right: key_string = "right key";break;
        case vk_lcontrol: key_string = "l ctrl";break;
        case vk_shift: key_string = "shift"; break;
        case vk_lalt: key_string = "l alt";break;
        case vk_tab: key_string = "tab";break;
        case 20: key_string = "caps lock";break;
        case 192: key_string = "`";break;
        case 8:   key_string = "backspace";break;
        case 189: key_string = "-";break;
        case 187: key_string = "=";break;
        case 219: key_string = "[";break;
        case 221: key_string = "]";break;
        case 220: key_string = "|";break;
        case 165: key_string = "r alt";break;
        case 163: key_string = "r ctrl";break;
        case 96:  key_string = "num 0";break;
        case 110: key_string = "num .";break;
        case 97:  key_string = "num 1";break;
        case 98:  key_string = "num 2";break;
        case 99:  key_string = "num 3";break;
        case 100: key_string = "num 4";break;
        case 101: key_string = "num 5";break;
        case 102: key_string = "num 6";break;
        case 103: key_string = "num 7";break;
        case 104: key_string = "num 8";break;
        case 105: key_string = "num 9";break;
        case 107: key_string = "num +";break;
        case 144: key_string = "num lock";break;
        case 111: key_string = "num /";break;
        case 106: key_string = "num *";break;
        case 109: key_string = "num -";break;
        case 145: key_string = "scroll lock";break;
        case 186: key_string = ";";break;
        case 222: key_string = "'";break;
        case 188: key_string = ",";break;
        case 190: key_string = ".";break;
        case 191: key_string = "/";break;
        case 32:  key_string = "space";break;
        default:  key_string = chr(argument0);break;
           
    }
    return(key_string);
}