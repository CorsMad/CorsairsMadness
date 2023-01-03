/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    t++;
    switch(t)
    {
        case 20:
            image_index++;
            instance_create_depth(x-18,y-46,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x-2,y-20,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+34,y-24,depth-1,obj_sfx_dust_expl_small);
            break;
        case 50:
            image_index++;
            instance_create_depth(x-18,y-46,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x-2,y-20,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x-46,y-24,depth-1,obj_sfx_dust_expl_small);
            break;
        case 80:
            instance_create_depth(x-32,y-32,depth-1,obj_sfx_dust_expl_big);
            instance_create_depth(x+32,y-32,depth-1,obj_sfx_dust_expl_big);        
            image_index++;
            instance_create_depth(x-16,y-48,100,obj_bomb_creator);
            break;
    }
    if t = 100 state = 2;
}
