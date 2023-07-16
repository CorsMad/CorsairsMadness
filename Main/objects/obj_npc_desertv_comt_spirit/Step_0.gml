/// @description Insert description here
// You can write your code in this editor
y-=vspd;
switch(state)
{
    case 0:
        t++;
        if image_alpha < 1 image_alpha +=0.1;
        if t = 50{
            t = 0;
            state = 1;
        }
        break;
    case 1:
        t++;
        if t > 50 image_alpha -=0.05;
        if image_alpha <= 0 instance_destroy();
        break;
}