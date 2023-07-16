/// @description Insert description here
// You can write your code in this editor

player_input();

if key_left_press {fnc_snd_play_over(snd_menu_select);select -= 1;}
if key_right_press {fnc_snd_play_over(snd_menu_select);select += 1;}
if select < 0 select = 1;
if select > 1 select = 0;

if key_jump || key_attack
{
    fnc_snd_play_over(snd_menu_accept);
    switch(select)
    {
        case 0: // 
            instance_destroy();
            instance_create_depth(x,y,-100000,obj_txt_shadowv_merch_tomap)
            
            break;
        case 1:
            obj_npc_shadowv_merch.talk = 0;
            obj_Player.isDead = 2.1;  
            instance_destroy();            
            break;
    }
}