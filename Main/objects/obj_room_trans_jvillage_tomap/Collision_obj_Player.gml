/// @description Insert description here
// You can write your code in this editor

switch(teleport)
{
    case 0:
        if global.dia_jungleChief = 1 
        {
            fnc_msc_stop_play();
            room_goto(GlobalMapPrologueJungle);
            instance_destroy(obj_Player);
        }
        break;
    case 1:
        if global.dia_desertChief = 1 
        {
            fnc_msc_stop_play();
            room_goto(GlobalMapPrologueDesert);
            instance_destroy(obj_Player);
        }
        break;
    case 2:
        if global.dia_snowChief = 1 
        {
            fnc_msc_stop_play();
            room_goto(GlobalMapSnow);
            instance_destroy(obj_Player);
        }
        break;
    case 3:
        if global.dia_shadowChief = 1 
        {
            fnc_msc_stop_play();
            room_goto(GlobalMapShadow);
            instance_destroy(obj_Player);
        }
        break;
    case 4:
        if global.dia_lavaChief = 1 
        {
            fnc_msc_stop_play();
            room_goto(GlobalMapLava);
            instance_destroy(obj_Player);
        }
        break;
}
