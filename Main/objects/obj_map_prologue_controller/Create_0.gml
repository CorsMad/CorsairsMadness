/// @description 
// You can write your code in this editor

/*
///////////////////////////////////////////////////////////////////////
Добавить переменные ключей в draw
Добавить переменные злодея в draw
*/
WherePlayer = global.PlayerOnIsland;
/*
0 - нигде
1 - джунгли
*/

island = 0;
/*
0 - Глобальная карта
1 - джунгли
2 - пустыня
3 - зима
4 - лава
5 - кладбище
*/           
globalMapCounter = 1;
islandMapCounter = 0;
canPress = 1;
islandName = 0;
anim = 0; // анимация
t = 0;
t_o = 0; // таймер аутлайнера
t_p = 0; // таймер указателя
#region 
/*
0 на главный
1 джунгли
2 пустыня
3 зима
4 лава
5 кладбище
*/
turn = 0;
turn_t = 0;
#endregion

#region Альфа,скейл островов. Альфа, позиция облаков

//GlobalMap
GlobalMapAlpha = 1;
GlobalMapxScale = 1;
GlobalMapyScale = 1;
GlobalMapxPos = 240;
GlobalMapyPos = 135;

//IslandJungle
island1JungleAlpha = 0;
island1JunglexScale = 1;
island1JungleyScale = 1;

//IslandDesert
island1DesertAlpha = 0;
island1DesertxScale = 1;
island1DesertyScale = 1;

//IslandSnow
island1SnowAlpha = 0;
island1SnowxScale = 1;
island1SnowyScale = 1;

//IslandGraveyard
island1GraveyardAlpha = 0;
island1GraveyardxScale = 1;
island1GraveyardyScale = 1;

//IslandLava
island1LavaAlpha = 0;
island1LavaxScale = 1;
island1LavayScale = 1;

//Clouds
CloudLAlpha = 0;
CloudFarAlpha = 0;

CloudLBackX = room_width/2;
CloudLFrontX = room_width/2;

CloudRBackX = room_width/2;
CloudRFrontX = room_width/2;


CloudChange = 0;

CloudGlobalAlpha = 0.5;
CloudGlobalXscale = 1;
CloudGlobalYscale = 1;

// Аутлайнер
OutlinerAlpha = 0;

// Указатель
PointerFrame = 0;

#endregion