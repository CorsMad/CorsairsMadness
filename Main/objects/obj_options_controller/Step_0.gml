/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("L"));
key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K"));

#region назад

if key_back
{
    room_goto(MainScreen);   
}

#endregion

#region выбор

if key_down
{
    a++;   
}
if key_up
{
    a--;   
}
if a > 1
{
    a = 0;
}   
if a < 0 
{
    a = 1;   
}


#endregion

#region визуал

#endregion