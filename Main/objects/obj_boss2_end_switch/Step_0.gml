/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    y-=0.5;
    if place_meeting(x,y,obj_chest_je_1)
    {
        instance_destroy(obj_chest_je_1)   ;
        instance_create_depth(48,240,0,obj_sfx_dust_expl_big);
    }
    
    if y <= 248 
    {
        y = 248;
        state = 2;
        instance_create_depth(x,y-16,100,obj_bomb_creator);
        image_index = 1;
    }
}


