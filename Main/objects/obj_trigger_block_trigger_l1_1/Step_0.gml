/// @description Insert description here
// You can write your code in this editor
if state = 0
{

    if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang)
    {
        if instance_exists(obj_platform_3_h_e_l1_1)
        {       
            obj_platform_3_h_e_l1_1.isEnabled = 1;     
        }
        state = 1;
        instance_create_depth(x+8,y+11,depth-1,obj_sfx3);
        fnc_snd_play_over(snd_player_landing);
    }
    
}

if state = 1
{
    if t < 90 t++;   
}

#region анимация

if t = 0
{
    image_index = 0;       
}

if t > 0 && t < 95
{
    image_index = 2;   
}

if t >= 95
{
    image_index = 1;   
}


#endregion