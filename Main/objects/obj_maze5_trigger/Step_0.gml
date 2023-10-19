/// @description Insert description here
// You can write your code in this editor

if _enabled = 0
{
    image_index = 0;   
}

if _enabled = 1
{
    if (isActive = 0) {
        image_index = 0;
    }

    if place_meeting(x,y,obj_hitbox) && isActive = 0
    {
        fnc_snd_play_onetime(snd_bomb_selektor)
        image_index = 2;
        isActive = 1;
        
    }

    if isActive = 1
    {
        t++;
        if t = 10
        {
            isActive = 2;
            t=0;            
            instance_create_depth(0,0,0,obj_maze5_starter);
        }   
    }

    if isActive = 2
    {
        image_index = 1;    
    }
}