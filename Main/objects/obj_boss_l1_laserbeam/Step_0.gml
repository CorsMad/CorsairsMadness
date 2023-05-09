/// @description Insert description here
// You can write your code in this editor


if state = 0
{
    t++;
    switch(t)
    {
        case 5: image_index = 1;break;   
        case 10: image_index = 2;break;   
        case 15: image_index = 3;break;   
        case 20: image_index = 4;break;     
        case 25: 
            state = 1;
            t = 0;
            sprite_index = spr_boss_l1_beam_full_run;
            image_index = 0;
            image_speed = 1;
            break;     
    }
}
if state = 1
{
       
}