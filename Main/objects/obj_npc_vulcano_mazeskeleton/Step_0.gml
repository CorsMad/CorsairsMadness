/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_Player)
{
	if obj_Player.x > x image_xscale = -1 else image_xscale = 1;	
}


/* 
states 
0 - влево
1 - на месте
2 - вправо
*/

if talk = 0
{
    
}

if talk = 1
{
    spd = 0; 
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
        switch(talkNumber)
        {
            case 0: instance_create_depth(x,y,-100000,obj_txt_vulcano_mazeskeleton1);break;   
            case 1: instance_create_depth(x,y,-100000,obj_txt_vulcano_mazeskeleton2);break;   
            case 2: instance_create_depth(x,y,-100000,obj_txt_vulcano_mazeskeleton3);break;   
            case 3: instance_create_depth(x,y,-100000,obj_txt_vulcano_mazeskeleton4);break;   
        }        
       
    }
}
#endregion

#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion

#region Anim

#endregion