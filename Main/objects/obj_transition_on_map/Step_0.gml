/// @description Insert description here
// You can write your code in this editor

switch(on)
{
    case 0:
        if image_alpha > 0 image_alpha -= 0.015;
        break;
    case 1:
        image_index = 1;
        if image_alpha < 1 image_alpha += 0.015;
        break;
}