/// @description Insert description here
// You can write your code in this editor

#region Talk start

if instance_exists(obj_Player)
{
	if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1 && global.dia_shadowComt != 0
    //if place_meeting(x,y,obj_Player) && global.dia_shadowComt != 0 && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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
    if talk_cr_t = 10
    {
        talk_cr_t = 0;
        switch(global.dia_shadowComt)
        {
            case 0.5: 
                var point = instance_nearest(x,y,obj_npc_village_pointer);
                if point!=noone instance_destroy(point);
                
                instance_create_depth(x,y,-100000,obj_txt_shadowv_comt3); //3 разговор
                break;
            case 1: instance_create_depth(x,y,-100000,obj_npc_shadowv_comt_choose);  ; //2 разговор
                break;
            case 2: instance_create_depth(x,y,-100000,obj_txt_shadowv_comt1); //1 разговор
                break;
        }
        

    }
}
#endregion


#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2 && global.dia_shadowComt != 0
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion