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
            if global.secrets >=7 && global.saved_shadow = 0 
            {
                global.saved_shadow = 1;
                global.secrets -=7; 
                var cutsc = instance_create_depth(0,0,0,obj_coin_cutscene);
				cutsc.target = obj_shadow_coin_exchanger;
                instance_destroy();
            }       
            break;
        case 1:
            instance_destroy();
            obj_npc_shadowv_merch.talk = 0;
            obj_Player.isDead = 0;
            break;
    }
}