/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if obj_Player.isDead = 12
    {
        //obj_Player.doublejumpspd = obj_Player.image_xscale*spd;        
        obj_Player.isDead = 0;
        obj_Player.superdash_power = 0;
        obj_Player.isRecoil = 1;
        obj_Player.superdash_timer_count = 0;
        obj_Player.vspd = -5;
        instance_destroy();
        
    }
}