/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{   
    fnc_msc_stop_play_slow()
    if instance_exists(obj_Player)
    {
        with(obj_Player)
        {
            if !place_meeting(x,y,obj_block)
            {
                isDead = 2; 
                obj_Player.sprite_index = spr_player_masked_idle;
                fspd = 0;
                hspd = 0;
                carryspd = 0;
                afterhookspd = 0;
                attackspd = 0;
                isAttacking = 0;
                isAirattacking = 0;
                isAirattacking_timer = 0;
                attackbuffer = 0;
                spd = 0;
                key_left = 0;
                key_right = 0;
                isDashing = 0;
                isHooking= 0;
                isRecoil = 0;   
                superdash_power = 0;
                superdash_timer = 0;
                instance_destroy(obj_teleport_cloud);
                instance_destroy(obj_trigger_cutscene_pl1_r15);
                instance_create_depth(0,0,0,obj_cutscene_pl1_r15);    
            }
        }
    }     
}