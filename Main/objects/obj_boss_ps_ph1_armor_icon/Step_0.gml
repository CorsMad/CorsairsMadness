/// @description Insert description here
// You can write your code in this editor


switch(state)
{
    case 0:
        image_alpha+=0.1;
        if image_alpha >=1
        {
            image_alpha = 1;
            state = 1;
            t = 0;
        }
        break;
    case 1:
        break;
    case 2:
        t++;
        image_index = 1;
        if t mod 10 = 0 {
            if image_alpha = 1 image_alpha = 0.7 else image_alpha = 1;   
        }
        if t = 90
        {
            image_alpha = 1;
            t = 0;
            state = 3;
        }
        break;
    case 3:
        break;
    case 4:
        image_index = 2;
        t++;
        if t mod 10 = 0 {
            if image_alpha = 1 image_alpha = 0.7 else image_alpha = 1;   
        }
        if t = 90
        {
            t = 0;
            state = 5;
        }
        break;
    case 5:
        image_alpha-=0.1;
        if image_alpha <= 0 instance_destroy();
}



