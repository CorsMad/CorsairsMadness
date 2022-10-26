/// @description Insert description here
// You can write your code in this editor
menu_input();
/*
key_up_press = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(4,gp_padu)  || gamepad_button_check_pressed(0,gp_padu);
key_down_pressed = keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(4,gp_padd)  || gamepad_button_check_pressed(0,gp_padd);
key_jump_pressed = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
*/

#region choose
    if key_up_press 
    {
        fnc_snd_play_over(snd_menu_select);
        a--;   
    }

    if key_down_pressed
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
    if key_jump_pressed
    {
        fnc_snd_play_over(snd_menu_accept);     
    }
    if a = 0 && key_jump_pressed 
    {
        room_goto(FirstRoomHum);   
    }
    if a = 1 && key_jump_pressed
    {
        // room_goto(FirstRoomMask);   
        room_goto(RoomTIP);   
    }
    if a = 2 && key_jump_pressed
    {
        room_goto(Options_room);  
    }
    if a = 3 && key_jump_pressed
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