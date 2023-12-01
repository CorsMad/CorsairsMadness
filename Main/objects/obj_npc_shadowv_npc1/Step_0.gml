/// @description Insert description here
// You can write your code in this editor

x+=spd;

/* 
states 
0 - влево
1 - на месте
2 - вправо
*/


if instance_exists(obj_Player){
    if obj_Player.x > x image_xscale = -1 else image_xscale = 1;   
}


#region Talk start

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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

if talk_cr_t!= 0 
{
    talk_cr_t++;
    if talk_cr_t = 10
    {
        talk_cr_t = 0;
        switch(global.dia_shadowChief){
            case 0: instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_1); break;                         
            default:  
                switch(global.secrets_g1_s2){
                    case 0: // если еще не взял секрет
                                    switch(global.dia_gnpc){ // не говорил/говорил 1 раз
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_2); break;                                                           
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_3); break;                                                                                 
                                    }                       
                        break;
                    case 1: // если взял секрет
                                    switch(global.dia_gnpc){
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_5); break;
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_4); break;
                                        case 2: if global.completed_PG2 = 0 instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_6);  
                                                else{                       instance_create_depth(x,y,-100000,obj_txt_shadowv_npc1_7);} 
                                        
                                        break;
                                    } 
                        break;
                }           
                break;       
        } 
    }
}
#endregion

#region Знак доп.квеста
if (global.dia_shadowChief) != 0 {   
    switch(global.secrets_g1_s2){
        case 0:
            if global.dia_gnpc = 0  qm.image_index = 1;
            if global.dia_gnpc = 1  qm.image_index = 2;
            break;
        case 1:
            if global.dia_gnpc = 2 qm.image_index = 0; else qm.image_index = 3;
            break;
    }                        
}
#endregion

#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion

