/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(4,gp_padu)  || gamepad_button_check_pressed(0,gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(4,gp_padd)  || gamepad_button_check_pressed(0,gp_padd);
key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);

#region choose
    if key_up 
    {
        fnc_snd_play_over(snd_menu_select);
        a--;   
    }

    if key_down
    {
        fnc_snd_play_over(snd_menu_select);
        a++;    
    }

    if a > 3
    {
        a = 0;    
    }
    if a < 0
    {
        a = 3;   
    }
#endregion

#region select
{
    if key_action
    {
        fnc_snd_play_over(snd_menu_accept);     
    }
    if a = 0 && key_action 
    {
        room_goto(FirstRoomHum);   
    }
    if a = 1 && key_action
    {
        room_goto(FirstRoomMask);   
    }
    if a = 2 && key_action
    {
        room_goto(Options_room);  
    }
    if a = 3 && key_action
    {
        game_end();   
    }
}
#endregion

#region visual

if instance_exists(obj_mainmenu_small_selector)
{

if a = 0
{
    obj_mainmenu_small_selector.y = 200;
}

if a = 1
{
    obj_mainmenu_small_selector.y = 211;
}

if a = 2
{
    obj_mainmenu_small_selector.y = 222;
}   

if a = 3
{
    obj_mainmenu_small_selector.y = 233;   
}

}
#endregion