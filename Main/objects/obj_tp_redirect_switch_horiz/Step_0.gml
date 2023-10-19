/// @description Insert description here
// You can write your code in this editor

switch(on)
{ 
    case 0:
        image_speed = 0;
        sprite_index = spr_tp_redirect_switch_click 
        t++;
        switch(t)        
        {   
            case 3:image_index = 1;break;
            case 6:image_index = 2;break;
            case 20:image_index = 3;break;
            case 25:image_index = 4;break;
            case 30:
                on = 1;
                t = 0;
                image_index = 0;
                break;
        }
        break;
    case 1:
        sprite_index = spr_tp_redirect_switch_idle;
        image_speed = 1;
        if place_meeting(x,y,obj_hitbox_mask)
        {
            fnc_snd_play_onetime(snd_bomb_selektor);
            if instance_exists(obj_tp_redirect_horiz)   
            {
                instance_create_depth(obj_tp_redirect_horiz.x,obj_tp_redirect_horiz.y,obj_tp_redirect_horiz.depth-1,obj_sfx_player_dead_big);
                if obj_tp_redirect_horiz.dir = 0 obj_tp_redirect_horiz.dir = 1   
                else obj_tp_redirect_horiz.dir = 0;
                on = 0;
                t = 0;
                image_index = 0; 
            }  
        }
        break;
}

#region anim
t_anim++;
if t_anim = 10
{
    instance_create_depth(x+random_range(-12,12),y+random_range(-2,12),depth+1,obj_follower_grounded_blob_bf)
    t_anim = 0;  
}
#endregion



