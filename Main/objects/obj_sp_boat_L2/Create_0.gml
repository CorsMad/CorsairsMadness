/// @description Insert description here
// You can write your code in this editor
t = 0; // глобальный таймер

if instance_exists(obj_Player_boat)
{
    obj_Player_boat.obj_sp_boat_level = obj_sp_boat_L2; 
}


switch(global.boatCheckpoint)  // Чекпоинт
{
    case 0: state = 0;break;
    case 1: state = 2;break;
    case 2: state = 4;break;
}


// Музыка
//instance_create_depth(0,0,0,obj_music_controller_boat);
// Золото
global.money_saved = global.gold;
money_saved = global.money_saved;

#region Описание События

#endregion

/*
    Скорость ЗАДНИКОВ
*/

sp_wat = -2;
sp_farwat = -1;
sp_toofarwat = -0.4;
sp_skies = -0.1;

l_water = layer_get_id("water");
l_farwater = layer_get_id("farwater");
l_toofarwater = layer_get_id("toofarwater");
l_Skies = layer_get_id("Skies");


layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
//layer_hspeed(l_Skies,sp_skies);
