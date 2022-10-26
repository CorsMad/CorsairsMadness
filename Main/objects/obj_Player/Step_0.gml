/// @description Insert description here
// You can write your code in this editor

#region Человек
if state = 0
{
   //fnc_player_state0(); 
   fnc_player_state01()
}
#endregion

#region Маска
if state = 1
{
    fnc_player_state1();
}
#endregion

#region Появление после тп
if tp_timer!=0
{
    tp_timer++;   
}
if tp_timer = 2
{
    tp_timer = 0;
    instance_create_depth(x,y-24,depth-1,obj_sfx_teleport_cretor);
}
#endregion



