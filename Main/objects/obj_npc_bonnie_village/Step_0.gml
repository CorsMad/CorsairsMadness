/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player){
	if obj_Player.x > x image_xscale = 1 else image_xscale = -1;	
}


#region Talk start

if instance_exists(obj_Player)
{
	if talk = 0 && place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1 && global.dia_hpmana_bonnie = 0
    //if place_meeting(x,y,obj_Player) && global.dia_hpmana_bonnie = 0 && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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
        if obj_Player.x < x player_pos = -1 else player_pos = 1
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
        instance_create_depth(x,y,-100000,obj_txt_bonnie_village);
        global.dia_hpmana_bonnie = 1;
        if instance_exists(questmark) instance_destroy(questmark);

    }
}
#endregion


#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2 && global.dia_hpmana_bonnie = 0
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion


