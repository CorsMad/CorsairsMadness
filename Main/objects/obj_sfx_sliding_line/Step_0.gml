/// @description Insert description here
// You can write your code in this editor
if hspeed > 0
{
    switch(vspeed)
    {
        case -0.5:  image_angle = 10;
            break;
        case -1:    image_angle = 20;
            break;
        case -1.5:  image_angle = 30;
            break;
        case -2:    image_angle = 40;
            break;
    }
}

if hspeed < 0
{
    switch(vspeed)
    {
        case -0.5:  image_angle = -10;
            break;
        case -1:    image_angle = -20;
            break;
        case -1.5:  image_angle = -30;
            break;
        case -2:    image_angle = -40;
            break;
    }
}

t++;
if t = 1 image_alpha = 1;
if t > 5 image_alpha -=0.1; 
if image_alpha <= 0 instance_destroy();


