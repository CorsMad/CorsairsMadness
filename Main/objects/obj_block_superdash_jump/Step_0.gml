/// @description Insert description here
// You can write your code in this editor

switch(on)
{
    case 1:
    sprite_index = spr_destructable_block_big;
    mask_index = spr_destructable_block_big;
    if place_meeting(x,y,obj_Player)
    {
        if obj_Player.isDead = 12
        {
            //obj_Player.doublejumpspd = obj_Player.image_xscale*spd;        
            obj_Player.isDead = 0;
            obj_Player.superdash_power = 0;
            //obj_Player.isRecoil = 1;
            obj_Player.superdash_timer_count = 0;
            obj_Player.vspd = boost;
            obj_Player.y = y+24
            on = 0;
        }
    }
        break;
    case 0:
        sprite_index = spr_blank;
        mask_index = noone;
        if t < 1100 t++;
        if t >=100 && !place_meeting(x,y,obj_Player)
        {
            t = 0;
            on = 1;
        }  
        break;
}

