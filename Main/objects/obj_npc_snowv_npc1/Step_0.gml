/// @description Insert description here
// You can write your code in this editor

x+=spd;

/* 
states 
0 - влево
1 - на месте
2 - вправо
*/

if talk = 0
{
    if state = 0
    {
        image_xscale = 1;
        sprite_index = spr_snowv_npc1_walk;
        prest = 0;
        spd = -0.5;
        t++;
        if t = 120
        {
            state = 1;
            t = 0;
            image_index = 0;
        }
    }

    if state = 1
    {
        sprite_index = spr_snowv_npc1_idle;
        spd = 0;
        t++;
        if t = 200
        {
            t = 0;
            if prest = 0 {state = 2;image_index = 0;} else {state = 0;image_index = 0;}
        }
    }

    if state = 2
    {
        image_xscale = -1;
        sprite_index = spr_snowv_npc1_walk;
        prest = 2;
        spd = 0.5;
        t++;
        if t = 120
        {
            state = 1;
            t = 0;
        }
    }
}

if talk = 1
{
    spd = 0; 
    sprite_index = spr_snowv_npc1_idle;
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
        
        switch(global.dia_snowChief){
            case 0: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_1); break;                         
            default:  
                switch(global.secrets_s2p_s){
                    case 0: // если еще не взял секрет
                                    switch(global.dia_snpc){ // не говорил/говорил 1 раз
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_2); break;                                                           
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_3); break;                                                                                 
                                    }                       
                        break;
                    case 1: // если взял секрет
                                    switch(global.dia_snpc){
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_5); break;
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_4); break;
                                        case 2: instance_create_depth(x,y,-100000,obj_txt_snowv_npc1_6); break;                                           
                                    } 
                        break;
                }           
                break;       
        } 
    }
}
#endregion

#region Знак доп.квеста
if (global.dia_snowChief) != 0 {   
    switch(global.secrets_s2p_s){
        case 0:
            if global.dia_snpc = 0  qm.image_index = 1;
            if global.dia_snpc = 1  qm.image_index = 2;
            break;
        case 1:
            if global.dia_snpc = 2 qm.image_index = 0; else qm.image_index = 3;
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

