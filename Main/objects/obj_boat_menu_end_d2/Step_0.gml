/// @description Insert description here
// You can write your code in this editor
player_input();

fnc_lng_boat_choose();


if key_right_press {fnc_snd_play_over(snd_menu_select);state = 1}
if key_left_press {fnc_snd_play_over(snd_menu_select);state = 0;}

if key_attack || key_jump
{
    fnc_snd_play_over(snd_menu_accept);
    if state = 0
    {
        obj_Player_boat.state = 11.1;
        obj_Player_boat.TargetRoom = D2b_r1;
        instance_destroy();
    }
    if state = 1
    {
        obj_Player_boat.state = 12.1;
        obj_Player_boat.TargetRoom = D2p_r1;
        instance_destroy();
    }
}
