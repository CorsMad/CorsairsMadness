/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{   
    if obj_Player.clone_timer = 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
    {
        with(obj_Player)
        {
            if !place_meeting(x,y,obj_block)
            {
                isDead = 2;   
                fspd = 0;
                hspd = 0;
                carryspd = 0;
                afterhookspd = 0;
                attackspd = 0;
                isAttacking = 0;
                isAirattacking = 0;
                isAirattacking_timer = 0;
                spd = 0;
                key_left = 0;
                key_right = 0;
                isDashing = 0;
                isHooking = 0;
                isRecoil = 0;                   
                instance_create_depth(0,0,0,obj_cutscene_sp1_r14);   
                instance_destroy(obj_trigger_cutscene_sp1_r14);
            }
        }
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 1;
            obj_wall_trigger.imspd = 1;
        }
    }
    
}