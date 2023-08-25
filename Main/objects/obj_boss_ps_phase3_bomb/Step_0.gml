/// @description Insert description here
// You can write your code in this editor
/*
x += sign(image_xscale)*spd;
*/
if state = 0
{
    if place_meeting(x,y,obj_hitbox_mask)
    {
        if instance_exists(obj_Player)   
        {
            if obj_Player.x > x spd = abs(spd) else spd = -abs(spd);   
        }
    }

    x += -spd;
    y += vspd;
    vspd += 0.2;
    if place_meeting(x+1,y,obj_block) || place_meeting(x,y+1,obj_block) ||
    place_meeting(x-1,y,obj_block) || place_meeting(x,y-1,obj_block)
    {
        state = 1;
        hspd = 0;
        vspd = 0;
    }   
}
if state = 1
{
    t++;
    if t = 100
    {
        instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x,y,depth,obj_boss_ps_ph1_bomb_aoe)
        instance_destroy();
    }   
}