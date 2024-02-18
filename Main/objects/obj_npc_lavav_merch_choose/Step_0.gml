/// @description Insert description here
// You can write your code in this editor

player_input();

if key_left_press {fnc_snd_play_over(snd_menu_select);select -= 1;}
if key_right_press {fnc_snd_play_over(snd_menu_select);select += 1;}
if select < 0 select = 2;
if select > 2 select = 0;

if key_jump || key_attack
{
    fnc_snd_play_over(snd_menu_accept);
    switch(select)
    {
        case 0:
            instance_destroy();
            switch(global.dia_vulcanoMerch_f_talk)
            {
                case 0:
                    instance_create_depth(x,y,-100000,obj_txt_lavav_merch3)
                    break;
                case 1:
                     instance_create_depth(x,y,-100000,obj_txt_lavav_merch_f2)                 
            }   
            break;
        case 1:
            instance_destroy();
            instance_create_depth(x,y,-100000,obj_store_prologue);
            break;
        case 2:
            instance_destroy();
            obj_npc_lavav_merch.talk = 0;
            obj_Player.isDead = 2.1;
            break;
    }
}