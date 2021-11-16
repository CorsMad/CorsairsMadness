/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    x+=hspd;
    t++;
    if t > 250
    {
        if hspd < 0 
        {
            hspd += 0.05;
        }
    }
    if hspd = 0
    {
        t = 0;
        state = 1;
    }
}

if state = 1
{
    t++;
    if hspd = 0
    {
        switch(t)
        {
            case 1:     image_index = 1;break;   
            case 60:    image_index = 2;break;
            case 65:    image_index = 3;break;
            case 70:    image_index = 2;break;
            case 75:    image_index = 3;break;
            case 80:    image_index = 2;break;
            case 85:    image_index = 3;break;
            case 90:    image_index = 2;break;
            case 95:    image_index = 4;break;
        }
    }
}