/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_pd2_r15 = 1
{
    if instance_exists(obj_Player)
    {
        obj_Player.isDead = 2;
        obj_Player.attackbuffer = 0;
        obj_Player.airattackbuffer = 0;
        obj_Player.dashingbuffer = 0;
        obj_Player.hookingbuffer = 0; 
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
    fnc_msc_stop_play()
    instance_create_depth(240,160,0,obj_boss_dp_npc);
} else
{
    var i = instance_create_depth(400,176,0,obj_boss_dp_phase1);
    i.image_xscale = -1;
 
}