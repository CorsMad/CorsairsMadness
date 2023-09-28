/// @description Insert description here
// You can write your code in this editor

switch(isOn)
{
    case 0:
        if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang)
        {
            instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
            isOn = 1;
            if instance_exists(obj_l1_r1_platform_enable_ow_di)
            {
                obj_l1_r1_platform_enable_ow_di.t = 0;
                obj_l1_r1_platform_enable_ow_di.turn = 1;   
            }
        }
        break;
    case 1:
        t++; 
        if t = 5
        {
            t = 0;
            isOn = 2;
        }
        break;
    case 2:
        t++
        if t = 5
        {
            t = 0;
            isOn = 0;
        }
        break;
}

/*

if place_meeting(x,y,obj_hitbox) && isOn = 0
{
    instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
    isOn = 1;
    if instance_exists(obj_l1_r1_platform_enable_ow)
    {
        obj_l1_r1_platform_enable_ow = 0;
        obj_l1_r1_platform_enable_ow.turn = 1;   
    }
}



