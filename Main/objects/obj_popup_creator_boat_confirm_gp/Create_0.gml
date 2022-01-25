/// @description Insert description here
// You can write your code in this editor
myTextbox = noone;
exst = 0;
var string_val_dk;
var string_val_jk;
switch(global.dash_key)
    {
        case vk_up: string_val_dk = "up key";break;
        case vk_down: string_val_dk = "down key";break;
        case vk_left: string_val_dk = "left key";break;
        case vk_right: string_val_dk = "right key";break;
        case vk_lcontrol: string_val_dk = "l ctrl";break;
        case vk_shift: string_val_dk = "shift"; break;
        case vk_lalt: string_val_dk = "l alt";break;
        case vk_tab: string_val_dk = "tab";break;
        case 20: string_val_dk = "caps lock";break;
        case 192: string_val_dk = "`";break;
        case 8:   string_val_dk = "backspace";break;
        case 189: string_val_dk = "-";break;
        case 187: string_val_dk = "=";break;
        case 219: string_val_dk = "[";break;
        case 221: string_val_dk = "]";break;
        case 220: string_val_dk = "|";break;
        case 165: string_val_dk = "r alt";break;
        case 163: string_val_dk = "r ctrl";break;
        case 96:  string_val_dk = "num 0";break;
        case 110: string_val_dk = "num .";break;
        case 97:  string_val_dk = "num 1";break;
        case 98:  string_val_dk = "num 2";break;
        case 99:  string_val_dk = "num 3";break;
        case 100: string_val_dk = "num 4";break;
        case 101: string_val_dk = "num 5";break;
        case 102: string_val_dk = "num 6";break;
        case 103: string_val_dk = "num 7";break;
        case 104: string_val_dk = "num 8";break;
        case 105: string_val_dk = "num 9";break;
        case 107: string_val_dk = "num +";break;
        case 144: string_val_dk = "num lock";break;
        case 111: string_val_dk = "num /";break;
        case 106: string_val_dk = "num *";break;
        case 109: string_val_dk = "num -";break;
        case 145: string_val_dk = "scroll lock";break;
        case 186: string_val_dk = ";";break;
        case 222: string_val_dk = "'";break;
        case 188: string_val_dk = ",";break;
        case 190: string_val_dk = ".";break;
        case 191: string_val_dk = "/";break;
        case 32:  string_val_dk = "space";break;
        default:  string_val_dk = chr(global.dash_key);break;
    }
switch(global.jump_key)
    {
        case vk_up: string_val_jk = "up key";break;
        case vk_down: string_val_jk = "down key";break;
        case vk_left: string_val_jk = "left key";break;
        case vk_right: string_val_jk = "right key";break;
        case vk_lcontrol: string_val_jk = "l ctrl";break;
        case vk_shift: string_val_jk = "shift"; break;
        case vk_lalt: string_val_jk = "l alt";break;
        case vk_tab: string_val_jk = "tab";break;
        case 20: string_val_jk = "caps lock";break;
        case 192: string_val_jk = "`";break;
        case 8:   string_val_jk = "backspace";break;
        case 189: string_val_jk = "-";break;
        case 187: string_val_jk = "=";break;
        case 219: string_val_jk = "[";break;
        case 221: string_val_jk = "]";break;
        case 220: string_val_jk = "|";break;
        case 165: string_val_jk = "r alt";break;
        case 163: string_val_jk = "r ctrl";break;
        case 96:  string_val_jk = "num 0";break;
        case 110: string_val_jk = "num .";break;
        case 97:  string_val_jk = "num 1";break;
        case 98:  string_val_jk = "num 2";break;
        case 99:  string_val_jk = "num 3";break;
        case 100: string_val_jk = "num 4";break;
        case 101: string_val_jk = "num 5";break;
        case 102: string_val_jk = "num 6";break;
        case 103: string_val_jk = "num 7";break;
        case 104: string_val_jk = "num 8";break;
        case 105: string_val_jk = "num 9";break;
        case 107: string_val_jk = "num +";break;
        case 144: string_val_jk = "num lock";break;
        case 111: string_val_jk = "num /";break;
        case 106: string_val_jk = "num *";break;
        case 109: string_val_jk = "num -";break;
        case 145: string_val_jk = "scroll lock";break;
        case 186: string_val_jk = ";";break;
        case 222: string_val_jk = "'";break;
        case 188: string_val_jk = ",";break;
        case 190: string_val_jk = ".";break;
        case 191: string_val_jk = "/";break;
        case 32:  string_val_jk = "space";break;
        default:  string_val_jk = chr(global.jump_key);break;
    }

myText[0] = "<        >  - Confirm\n <        >  - back";
sprImage = spr_gamepadicons;

