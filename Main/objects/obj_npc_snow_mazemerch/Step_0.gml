/// @description Insert description here
// You can write your code in this editor


if state = 0
{
	if instance_exists(obj_Player)
	{
		if obj_Player.x > x image_xscale = -1 else image_xscale = 1;	
	}


	#region Talk start

	if instance_exists(obj_Player)
	{
		if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1
	    //if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
	    {
	        talk = 1;
	        obj_Player.isDead = 2;
	        obj_Player.key_right = 0;
	        obj_Player.key_left = 0;
	        obj_Player.key_attack = 0;
	        obj_Player.key_dashing = 0; 
	        obj_Player.key_up = 0;
	        obj_Player.key_up_press = 0;
	        obj_Player.key_item = 0;
	        talk_cr_t = 1;
	    }
	}
	if talk_cr_t = 1 {
		fnc_player_mov_right(self);	
	}

	if talk_cr_t > 1
	{
	    talk_cr_t++;
	    if talk_cr_t = 20
	    {
	        talk_cr_t = 0;
	        instance_create_depth(x,y,-100000,obj_txt_snow_mazemerch);         
	    }
	}
	#endregion

	#region Иконка

	if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
	{
	    pointer.on = 1;   
	} else pointer.on = 0;

	#endregion

}

if state = 1 {
	var l = instance_create_depth(x,y,depth,obj_npc_snow_mazemerch_leave);
	l.image_xscale = image_xscale;
	instance_destroy();	
}