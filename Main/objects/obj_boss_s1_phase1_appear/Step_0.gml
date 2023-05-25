/// @description Insert description here
// You can write your code in this editor
if state = 1
{
    t++;
    switch(t)
    {
        case 50:  image_index = 1;break;   
        case 60 : image_index = 2;break;   
        case 70: image_index = 3;break;   
        case 80: image_index = 4;break;   
        case 100: 
            instance_create_depth(240,144,0,obj_boss_s1_phase1);
            instance_destroy();
            break;   
    }
}