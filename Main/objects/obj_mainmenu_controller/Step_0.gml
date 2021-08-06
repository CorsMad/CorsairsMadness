/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K"));

#region choose
    if key_up 
    {
        a--;   
    }

    if key_down
    {
        a++;    
    }

    if a > 2
    {
        a = 0;    
    }
    if a < 0
    {
        a = 2;   
    }
#endregion

#region select
{
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
}
#endregion

#region visual

if instance_exists(obj_mainmenu_selector)
{

if a = 0
{
    obj_mainmenu_selector.y = 196;
}

if a = 1
{
    obj_mainmenu_selector.y = 220;
}

if a = 2
{
    obj_mainmenu_selector.y = 244;
}   


}
#endregion