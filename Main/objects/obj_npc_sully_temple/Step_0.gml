/// @description Insert description here
// You can write your code in this editor


if y < 256
{
    y+=vspd;
    vspd+=0.2;   
} else {y = 256;vspd = 0;isGrounded = 1;sprite_index = spr_npc_sully_sit; }


if instance_exists(obj_Player)
{
	if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1
    //if place_meeting(x,y,obj_Player) && obj_Player.isHooking = 0 && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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
		if image_xscale = 1 player_pos = 1 else player_pos = -1;
        //if obj_Player.x < x player_pos = -1 else player_pos = 1
		//if obj_Player.x < x player_pos = -1 else player_pos = 1
        talk_cr_t = 1;  		
    } 
}

if talk_cr_t = 1 {
	if player_pos = -1 fnc_player_mov_left(self)
	if player_pos = 1  fnc_player_mov_right(self);			
}

if talk_cr_t > 1
{
    talk_cr_t++;
    if talk_cr_t = 20
    {
        talk_cr_t = 0;
        global.finished_island_snow = 1;
        instance_create_depth(x,y,-999999,obj_npc_sully_temple_txt);        
    }
}
#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2 && isGrounded = 1
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion
