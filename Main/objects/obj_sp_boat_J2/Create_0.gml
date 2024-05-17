/// @description Insert description here
// You can write your code in this editor
t = 0; // глобальный таймер

if instance_exists(obj_Player_boat)
{
    obj_Player_boat.obj_sp_boat_level = obj_sp_boat_J2; 
}


switch(global.boatCheckpoint)  // Чекпоинт
{
    case 0: state = 1;break;
    case 1: state = 4;break;
    case 2: state = 10;break;
}

// Музыка
//instance_create_depth(0,0,0,obj_music_controller_boat);
// Золото
global.money_saved = global.gold;
money_saved = global.money_saved;

#region Описание События
// События
/*
1 Скелеты по прямой 5 - 6 штук
2 Скелеты закругляющиеся (Быстрая стрельба)
3 Мины + много скелетов в игрока
4 Скелет по прямой + Скелет стреляющий издалека 
5 Камни 
6 Скелет стреляющий издалека вверхвниз 
7 Камни + Скелет стреляющий издалека + Скелеты закругляющиеся 
8 Водоросль (Быстрая стрельба)
9 Скелеты направляющиеся в игрока
10 Камни + водоросли
11 Скелеты волной + скелеты по прямой (быстрая стрельба)
12 Скелеты стреляющие издалека вверхвниз + скелеты в игрока (Пушка-пулемет)
13 Скелет по прямой + Скелет в игрока + Скелет издалека + мина
14 Препятствие полное
15 Препятсвтие половина + водоросли
16 Водоросль + мина + Скелет в игрока + Скелет Стреляющий вверх вниз ( Пушка-пулемет)
17 Водоросль + мина + Препятствие половина + Скелет в игрока + Скелет по прямой + 
   Скелет издалека
*/
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
