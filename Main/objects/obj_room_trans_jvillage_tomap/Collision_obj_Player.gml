/// @description Insert description here
// You can write your code in this editor

if global.dia_jungleChief = 1 
{
    fnc_msc_stop_play();
    room_goto(GlobalMapPrologueJungle);
    instance_destroy(obj_Player);
}