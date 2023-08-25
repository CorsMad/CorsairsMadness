/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox_mask) && isOn = 0
{
    instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
    isOn = 1;
    if instance_exists(obj_Player)
    {
        instance_create_depth(obj_Player.x,obj_Player.y,obj_Player.depth,obj_block_series_timer);   
    }
    if instance_exists(obj_ps2_r7_platform_enable_ow)
    {
        obj_ps2_r7_platform_enable_ow.turn = 1;   
    }
}

if isOn = 1
{
    t++;
    if t = 180
    {
        t = 0;
        isOn = 0;
        if instance_exists(obj_ps2_r7_platform_enable_ow)
        {
            obj_ps2_r7_platform_enable_ow.turn = 2;   
        }   
    }
}


