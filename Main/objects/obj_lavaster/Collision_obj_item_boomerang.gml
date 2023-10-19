/// @description Insert description here
// You can write your code in this editor



if boomer = 0
{
    fnc_snd_play_onetime(snd_get_boomerang);
    boomer = 1;
    if t > 100 vspeed = -5 
    else 
    {
        sprite_index = spr_lavaster_takedmg;
        image_speed = 3;
        state = 3;
        vspeed = 0;
        hspeed = 0;
        vspd = -4;
        
        if obj_Player.x < x
        {
            hspd = 3;       
        } else hspd = -3;    
    }
}