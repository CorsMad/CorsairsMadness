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
        sprite_index = spr_desert_npc1_walk;
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
        sprite_index = spr_desert_npc1_idle;
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
        sprite_index = spr_desert_npc1_walk;
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
    sprite_index = spr_desert_npc1_idle;
}

#region Talk start

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.canTalk = 1
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
        
        switch(global.dia_desertChief){
            case 0: instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_1); break;                         
            default:  
                switch(global.secrets_d1_s2){
                    case 0: // если еще не взял секрет
                                    switch(global.dia_dnpc){ // не говорил/говорил 1 раз
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_2); break;                                                           
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_3); break;                                                                                 
                                    }                       
                        break;
                    case 1: // если взял секрет
                                    switch(global.dia_dnpc){
                                        case 0: instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_5); break;
                                        case 1: instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_4); break;
                                        case 2: if global.completed_PD2 = 0 instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_6);
                                                else{                       instance_create_depth(x,y,-100000,obj_txt_desertv_npc1_7)}
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
if (global.dia_desertChief) != 0 {   
    switch(global.secrets_d1_s2){
        case 0:
            if global.dia_dnpc = 0  qm.image_index = 1;
            if global.dia_dnpc = 1  qm.image_index = 2;
            break;
        case 1:
            if global.dia_dnpc = 2 qm.image_index = 0; else qm.image_index = 3;
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

#region Поворот к игроку
if talk = 1 {
if instance_exists(obj_Player) {
	if obj_Player.x < x image_xscale = 1 else image_xscale = -1;	
}
}
#endregion