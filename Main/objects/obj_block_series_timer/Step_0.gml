/// @description Insert description here
// You can write your code in this editor


switch(state)
{
    case 0:
        image_alpha +=0.1;
        if image_alpha >=1
        {
            state = 1;  
            image_alpha = 1;
        }
        break;
    case 1:
        t++;
        image_alpha = 1;
        if t = 50
        {
            state = 2;
        }
        break;
    case 2:
        image_alpha-=0.1;
        if image_alpha<=0 instance_destroy();
        break;
}

