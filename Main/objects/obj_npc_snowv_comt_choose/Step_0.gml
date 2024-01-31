/// @description Insert description here
// You can write your code in this editor

player_input();

if key_left_press {fnc_snd_play_over(snd_menu_select);select = 0;}
if key_right_press {fnc_snd_play_over(snd_menu_select);select = 1;}

if key_jump || key_attack 
{
    fnc_snd_play_over(snd_menu_accept);
    switch(select)
    {
        case 0:
            fnc_msc_stop_play_slow();            
            global.TargetX = 32;
            global.TargetY = 176;
            global.TargetRoom = S_itemtutor;            
            room_goto(S_item_FirstLoading);            
            instance_destroy();            
            instance_destroy(obj_Player);
            break;
        case 1:
            obj_npc_snowv_comt.talk = 0;
            obj_Player.isDead = 2.1;
			instance_destroy();
            break;
    }
}