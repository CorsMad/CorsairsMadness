/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox_mask)
{
    if instance_exists(obj_tp_redirect_horiz)   
    {
        if obj_tp_redirect_horiz.dir = 0 obj_tp_redirect_horiz.dir = 1   
        else obj_tp_redirect_horiz.dir = 0;
    }
    
}