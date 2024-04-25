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

#region Ножи
knives_t = 0;
knives = 0;
knives_alpha = 0;
#endregion

#region text
switch(global.language)
{
        case 0: //English    
            i0 = "-jungle island-";
            i1 = "-desert island-";
            i2 = "-snow island-";
            i3 = "-shadow island-";
            i4 = "-vulcano island-";
            break;
        case 1: //russian
			i0 = "-Остров Джунглей-";
			i1 = "-Остров Пустыни-";
			i2 = "-Остров Снега-";
			i3 = "-Остров Теней-";
			i4 = "-Остров Вулкана-";
            break;
        case 2: //spanish
			i0 = "-Isla de la Jungla-";
			i1 = "-Isla del Desierto-";
			i2 = "-Isla de Nieve-";
			i3 = "-Isla de la Sombra-";
			i4 = "-Isla del Volcán-";
            break;
        case 3: //chinese
			i0 = "-林岛-";
			i1 = "-漠岛-";
			i2 = "-岛-";
			i3 = "-子岛-";
			i4 = "-山岛-";
            break;
        case 4: //portug
			i0 = "-Ilha da Selva-";
			i1 = "-Ilha do Deserto-";
			i2 = "-Ilha da Neve-";
			i3 = "-Ilha Sombria-";
			i4 = "-Ilha do Vulcão-";
            break;
        case 5: //brazil
			i0 = "-Ilha da Selva-";
			i1 = "-Ilha do Deserto-";
			i2 = "-Ilha da Neve-";
			i3 = "-Ilha Sombria-";
			i4 = "-Ilha do Vulcão-";
            break;
        case 6: //polish
			i0 = "-Wyspa Jungli-";
			i1 = "-Wyspa Pustynna-";
			i2 = "-Wyspa Śnieżna-";
			i3 = "-Wyspa Cieni-";
			i4 = "-Wyspa Wulkaniczna-";
            break;
        case 7: //japanese
			i0 = "-ジャングル島-";
			i1 = "-砂漠の島-";
			i2 = "-雪の島-";
			i3 = "-シャドウアイランド-";
			i4 = "-火山の島-";
            break;
        case 8: //deutch
			i0 = "-Dschungelinsel-";
			i1 = "-Wüsteninsel-";
			i2 = "-Schneeinsel-";
			i3 = "-Schatteninsel-";
			i4 = "-Vulkaninsel-";
            break;
        case 9: //french
			i0 = "-Île de la Jungle-";
			i1 = "-Île du Désert-";
			i2 = "-Île de Neige-";
			i3 = "-Île de l'Ombre-";
			i4 = "-Île du Volcan-";
            break;
        case 10: //Italian
			i0 = "-Isole della Giungla-";
			i1 = "-Isole del Deserto-";
			i2 = "-Isole della Neve-";
			i3 = "-Isole dell'Ombra-";
			i4 = "-Isole del Vulcano-";
            break; 
}

#endregion