/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox_mask) && isOn = 0
{
    instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
    isOn = 1;
    if instance_exists(obj_ps1_platform_enable)
    {
        obj_ps1_platform_enable.turn = 1;   
    }
}

image_index = isOn;

