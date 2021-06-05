/// @description Insert description here
// You can write your code in this editor
player_input();

#region Человек
if state = 0
{
   fnc_player_state0(); 
}
#endregion

#region Маска
if state = 1
{
    fnc_player_state1();
}
#endregion

/*
#region ТЕСТ
if keyboard_check_pressed(ord("P"))
{
    if state = 0 
    {
       state = 1
    } else state = 0;
}
#endregion