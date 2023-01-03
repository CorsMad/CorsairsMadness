/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    
    global.Cutscene_f1_r33 = 0;
    instance_create_depth(0,0,0,obj_cutscene_f1_r33_1);
    if instance_exists(obj_wall_trigger_close1_f1_r33)
    {
        obj_wall_trigger_close1_f1_r33.state = 1;
        obj_wall_trigger_close1_f1_r33.imspd = 1;   
    }
    if instance_exists(obj_Player)
    {
        obj_Player.isDead = 2;   
        obj_Player.fspd = 0;
        obj_Player.hspd = 0;
        obj_Player.carryspd = 0;
        obj_Player.afterhookspd = 0;
        obj_Player.attackspd = 0;
        obj_Player.isAttacking = 0;
        obj_Player.isAirattacking = 0;
        obj_Player.isAirattacking_timer = 0;
        obj_Player.spd = 0;
        obj_Player.key_left = 0;
        obj_Player.key_right = 0;
        obj_Player.isDashing = 0;
        obj_Player.isHooking = 0;
        obj_Player.isRecoil = 0;
    }
    instance_destroy();
}