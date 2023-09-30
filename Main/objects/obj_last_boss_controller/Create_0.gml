/// @description Insert description here
// You can write your code in this editor


state = 0;
t = 0;

instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_di_lastboss = 1 
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
		obj_Player.image_xscale = -1;
    }   
    fnc_msc_stop_play()
    instance_create_depth(36,688,0,obj_bossmerch_cutscene);
} else
{
	var b = instance_create_depth(32,688,0,obj_bossmerch_phase1);
	b.state = 5; 
}