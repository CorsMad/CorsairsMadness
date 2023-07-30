/// @description 
// You can write your code in this editor
fnc_lng_jmap();


scr_save_progress();
if !instance_exists(obj_text_save) instance_create_depth(0,0,depth-1,obj_text_save);


if (global.key_green1 = 1 && global.key_green2 = 1) Opened = 1 else Opened = 0;



island = 0;         
globalMapCounter = 0;
islandMapCounter = 0;
canPress = 1;
islandName = 0;
anim = 0; // анимация
t = 0;
t_o = 0; // таймер аутлайнера
t_p = 0; // таймер указателя
#region 

turn = 0;
turn_t = 0;
#endregion
delay = 0;
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