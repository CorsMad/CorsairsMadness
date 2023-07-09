/// @description Insert description here
// You can write your code in this editor
if start = 0
{
    if image_alpha > 0.4 image_alpha -=0.01;
    switch(mov)
    {
        case 0:
            x = lerp(x,-192,0.03);
            break;
        case 1: 
            x = lerp(x,480+192+32,0.03);
            break;
    }
}

if start = 1 
{
    spd +=0.0005;
    if image_alpha < 1 image_alpha +=0.01;
    switch(mov)
    {
        case 0:
            x = lerp(x,0,spd);
            break;
        case 1: 
            x = lerp(x,480,spd);
            break;
    }       
}