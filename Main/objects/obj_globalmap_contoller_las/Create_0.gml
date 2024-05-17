/// @description Insert description here
// You can write your code in this editor

/*
0 - джунгли
1 - пустыня
2 - снег
3 - шадов
4 - лава
*/

start = 0;
t = 0;

island = 0;
OutlinerAlpha = 1;
OutlinerAlpha_t = 0;


Transition = 0;
Scale = 1;
Scale_spd = 0;

#region text
switch(global.language)
{
        case 0: //English    
            i0 = "-death island-";
            break;
        case 1: //russian
            i0 = "-остров смерти-";
            break;
        case 2: //spanish
            i0 = "-isla de la muerte-";
            break;
        case 3: //chinese
            i0 = "-死亡岛-";
            break;
        case 4: //portug
            i0 = "-ilha da morte-";
            break;
        case 5: //brazil
            i0 = "-ilha da morte-";
            break;
        case 6: //polish
            i0 = "-wyspa śmierci-";
            break;
        case 7: //japanese
            i0 = "-死の島-";
            break;
        case 8: //deutch
            i0 = "-Todesinsel-";
            break;
        case 9: //french
            i0 = "-île de la mort-";
            break;
        case 10: //Italian
            i0 = "-isola della morte-";
            break; 
}

#endregion