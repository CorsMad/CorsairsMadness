/// @description Insert description here
// You can write your code in this editor


#region Talk start

if instance_exists(obj_Player)
{
	if talk = 0 && place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1
    //if talk = 0 && obj_Player.isUsingabil = 0 && !instance_exists(obj_item_boomerang) && !instance_exists(obj_item_boomerang_dot)&& place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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
	
	fnc_player_mov_left(self);	
	
}

if talk_cr_t > 1 
{
    talk_cr_t++;
    if talk_cr_t = 20
    {
        talk_cr_t = 0;
        
        switch(global.completed_PD2)
        {
            case 0:
                instance_create_depth(x,y,-100000,obj_npc_desertv_merch_choose); // Последующие разговоры
                break;
            case 1:
                switch(global.dia_desertMerch_f_talk)
                {
                    case 0:
                        instance_create_depth(x,y,-100000,obj_txt_desertv_merch_f1);
                        break;
                    case 1:
                        instance_create_depth(x,y,-100000,obj_npc_desertv_merch_choose);
                        break;
                }
                break;
        }                      
    }
}
#endregion


#region анимация

t_anim++;
switch(t_anim)
{
    case 0:  image_index = 0;break; 
    case 20: image_index = 1;break; 
    case 40: image_index = 0;break; 
    case 60: image_index = 1;break; 
    case 80: image_index = 0;break; 
    case 100: image_index = 1;break; 
    case 305: image_index = 3;break; 
    case 310: image_index = 4;break; 
    case 315: image_index = 5;break; 
    case 320: image_index = 6;break; 
    case 500: image_index = 7;break; 
    case 520: image_index = 6;break; 
    case 540: image_index = 7;break; 
    case 560: image_index = 6;break; 
    case 700: image_index = 5;break; 
    case 705: image_index = 4;break; 
    case 900: image_index = 3;break; 
    case 905: image_index = 2;break; 
    case 1100: image_index = 1;t_anim = 0;break; 
}

#endregion

#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion