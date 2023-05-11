/// @description Insert description here
// You can write your code in this editor

if state = 1 // разворот
{
    t++;
    switch(t)
    {
        case 5:     image_index = 1;instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);break;   
        case 10:    image_index = 2;break;   
        case 15:    image_index = 3;break;   
        case 20:    image_index = 4;state = 2;t=0;break;   
    }
}

if state = 3 // сворот
{
    t++;
    switch(t)
    {
        case 5:     image_index = 3;instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);break;   
        case 10:    image_index = 2;break;   
        case 15:    image_index = 1;break;   
        case 20:    image_index = 0;state = 4;t=0;break;    
    }
}