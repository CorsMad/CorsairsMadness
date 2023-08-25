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
        case 0:
            if global.secrets >=7
            {
                global.secrets -=7; 
                global.saved_snow = 1;
                // заставка
                instance_destroy();
            }       
            break;
        case 1:
            instance_destroy();
            obj_npc_snowv_merch.talk = 0;
            obj_Player.isDead = 0;
            break;
    }
}