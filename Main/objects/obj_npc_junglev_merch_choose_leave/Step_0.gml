/// @description Insert description here
// You can write your code in this editor

if canControl = 0 {
    t_control ++;
    if appear_alpha < 1 appear_alpha += 0.025
    if t_control = 75 canControl = 1;
}

if canControl = 1
{

fnc_lng_jmerch_c();
player_input();

if key_up_press {fnc_snd_play_over(snd_menu_select);select  =0;}
if key_down_pressed {fnc_snd_play_over(snd_menu_select);select = 1;}

if key_jump || key_attack
{
    fnc_snd_play_over(snd_menu_accept);
    switch(select)
    {
        case 1:
            if instance_exists(obj_npc_junglev_merch)   obj_npc_junglev_merch.talk = 0;
            if instance_exists(obj_npc_desertv_merch)   obj_npc_desertv_merch.talk = 0;
            if instance_exists(obj_npc_snowv_merch)     obj_npc_snowv_merch.talk = 0;
            if instance_exists(obj_npc_shadowv_merch)   obj_npc_shadowv_merch.talk = 0;
            if instance_exists(obj_npc_lavav_merch)     obj_npc_lavav_merch.talk = 0;
            
            obj_Player.isDead = 2.1;  
            obj_Player.t_dia = -15;
            instance_destroy();            
            break;
    }
}

#region skip
    if select = 0 && (key_jump_press || key_attack_press) {
        if skip_t < skip_t_max skip_t+=1;
    	skip = 1; 
    } else {
    	skip_t=0;
    	skip = 0;
    }

    switch(skip) {
    	case 0: if alpha_skip >0 alpha_skip-=0.2;
    		break;
    	case 1: if alpha_skip <1 alpha_skip+=0.2;
    		break;
    }

    if skip_t >= skip_t_max {
    	instance_destroy();
        if instance_exists(obj_npc_junglev_merch) instance_create_depth(x,y,-100000,obj_txt_junglev_merch_tomap) 	 
        if instance_exists(obj_npc_desertv_merch) instance_create_depth(x,y,-100000,obj_txt_desertv_merch_tomap) 	 
        if instance_exists(obj_npc_snowv_merch)   instance_create_depth(x,y,-100000,obj_txt_snowv_merch_tomap) 	 
        if instance_exists(obj_npc_shadowv_merch) instance_create_depth(x,y,-100000,obj_txt_shadowv_merch_tomap) 	 
        if instance_exists(obj_npc_lavav_merch)   instance_create_depth(x,y,-100000,obj_txt_lavav_merch_tomap) 	       
    }
#endregion
}