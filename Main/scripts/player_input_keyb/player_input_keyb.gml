// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_input_keyb(kpr,str_val)
{
    switch(kpr)
    {
        case vk_up: str_val = "up key";break;
        case vk_down: str_val = "down key";break;
        case vk_left: str_val = "left key";break;
        case vk_right: str_val = "right key";break;
        case vk_lcontrol: str_val = "l ctrl";break;
        case vk_shift: str_val = "shift"; break;
        case vk_lalt: str_val = "l alt";break;
        case vk_tab: str_val = "tab";break;
        case 20: str_val = "caps lock";break;
        case 192: str_val = "`";break;
        case 8: str_val = "backspace";break;
        case 189: str_val = "-";break;
        case 187: str_val = "=";break;
        case 219: str_val = "[";break;
        case 221: str_val = "]";break;
        case 220: str_val = "|";break;
        case 165: str_val = "r alt";break;
        case 163: str_val = "r ctrl";break;
        case 96: str_val = "num 0";break;
        case 110: str_val = "num .";break;
        case 97: str_val = "num 1";break;
        case 98: str_val = "num 2";break;
        case 99: str_val = "num 3";break;
        case 100: str_val = "num 4";break;
        case 101: str_val = "num 5";break;
        case 102: str_val = "num 6";break;
        case 103: str_val = "num 7";break;
        case 104: str_val = "num 8";break;
        case 105: str_val = "num 9";break;
        case 107: str_val = "num +";break;
        case 144: str_val = "num lock";break;
        case 111: str_val = "num /";break;
        case 106: str_val = "num *";break;
        case 109: str_val = "num -";break;
        case 145: str_val = "scroll lock";break;
        case 186: str_val = ";";break;
        case 222: str_val = "'";break;
        case 188: str_val = ",";break;
        case 190: str_val = ".";break;
        case 191: str_val = "/";break;
        default: str_val = chr(kpr);break;
    }
    draw_text_color(270,55,str_val,col,col,col,col,1);
}
