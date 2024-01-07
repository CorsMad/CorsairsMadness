/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player) 
{
    
    if obj_Player.isDashing = 0
    {
        fnc_snd_play_onetime(snd_skate_human);
        instance_create_depth(x,y,depth,obj_sfx_sliding_big)
        obj_Player.isSkatingonrail = 1;
        obj_Player.isSkating = 1;
        obj_Player.isAirattacking = 0;
        obj_Player.isAttacking = 0;
        obj_Player.vspd = 0;
        obj_Player.dash_counts = 1;
        obj_Player.fspd = 0;
        obj_Player.hspd = 0;
        obj_Player.hspd = 0;
        obj_Player.y = other.y;
		
		
        //obj_Player.x = other.x+8;
        instance_destroy();
    }
}