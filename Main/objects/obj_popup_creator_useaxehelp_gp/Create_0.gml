/// @description Insert description here
// You can write your code in this editor
myTextbox = noone;
exst = 0;
var string_val_ik;
switch(global.item_key)
    {
        case vk_up: string_val_ik = "up key";break;
        case vk_down: string_val_ik = "down key";break;
        case vk_left: string_val_ik = "left key";break;
        case vk_right: string_val_ik = "right key";break;
        case vk_lcontrol: string_val_ik = "l ctrl";break;
        case vk_shift: string_val_ik = "shift"; break;
        case vk_lalt: string_val_ik = "l alt";break;
        case vk_tab: string_val_ik = "tab";break;
        case 20: string_val_ik = "caps lock";break;
        case 192: string_val_ik = "`";break;
        case 8:   string_val_ik = "backspace";break;
        case 189: string_val_ik = "-";break;
        case 187: string_val_ik = "=";break;
        case 219: string_val_ik = "[";break;
        case 221: string_val_ik = "]";break;
        case 220: string_val_ik = "|";break;
        case 165: string_val_ik = "r alt";break;
        case 163: string_val_ik = "r ctrl";break;
        case 96:  string_val_ik = "num 0";break;
        case 110: string_val_ik = "num .";break;
        case 97:  string_val_ik = "num 1";break;
        case 98:  string_val_ik = "num 2";break;
        case 99:  string_val_ik = "num 3";break;
        case 100: string_val_ik = "num 4";break;
        case 101: string_val_ik = "num 5";break;
        case 102: string_val_ik = "num 6";break;
        case 103: string_val_ik = "num 7";break;
        case 104: string_val_ik = "num 8";break;
        case 105: string_val_ik = "num 9";break;
        case 107: string_val_ik = "num +";break;
        case 144: string_val_ik = "num lock";break;
        case 111: string_val_ik = "num /";break;
        case 106: string_val_ik = "num *";break;
        case 109: string_val_ik = "num -";break;
        case 145: string_val_ik = "scroll lock";break;
        case 186: string_val_ik = ";";break;
        case 222: string_val_ik = "'";break;
        case 188: string_val_ik = ",";break;
        case 190: string_val_ik = ".";break;
        case 191: string_val_ik = "/";break;
        case 32:  string_val_ik = "space";break;
        default:  string_val_ik = chr(global.item_key);break;
    }

    myText[0] = "press <        /      >\nto throw an axe";
    sprImage = spr_gamepadicons;