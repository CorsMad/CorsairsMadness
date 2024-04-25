/// @description Insert description here
// You can write your code in this editor
kb_gp_input_check();

#region Название островов
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



player_input();

// возможность управления
if t < 10 t++;

if t > 5 && !instance_exists(obj_global_map_confirm)
{
    
#region управление

switch(island)
{
    case 0:
        if key_up_press         {island = 4;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_right_press      {island = 2;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_down_pressed     {island = 1;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        break;
    case 1:
        if key_left_press        {island = 0;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_right_press       {island = 2;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_up_press          {island = 3;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        break;
    case 2:
        if key_up_press        {island = 3;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_left_press      {island = 0;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_down_pressed    {island = 1;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        break;
    case 3:
        if key_left_press      {island = 4;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_right_press     {island = 2;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_down_pressed    {island = 1;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        break;
    case 4:
        if key_left_press      {island = 0;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_right_press     {island = 3;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        if key_down_pressed    {island = 1;OutlinerAlpha_t=0;fnc_snd_play_over(snd_menu_select);}
        break;
}

#endregion

#region Выбор острова
if key_jump || key_attack 
{
    switch(island)
    {
        case 0:        
            break;
        case 1:
            if global.completed_PD2 = 0 {instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);fnc_snd_play_over(snd_menu_accept);}           
            break;
        case 2:
            if global.completed_PS2 = 0 {instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);fnc_snd_play_over(snd_menu_accept);}             
            break;
        case 3:
            if global.completed_PG2 = 0 {instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);fnc_snd_play_over(snd_menu_accept);}             
            break;
        case 4:
            if global.completed_PL2 = 0 {instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);fnc_snd_play_over(snd_menu_accept);}             
            break;
    }
}
#endregion

}


#region  аутлайнер
OutlinerAlpha_t +=1 
if OutlinerAlpha_t = 50 OutlinerAlpha_t = 0;
if OutlinerAlpha_t < 25 OutlinerAlpha = 1 else OutlinerAlpha = 0.5;
#endregion

#region Ножи
if knives = 0 knives_t++;
if knives_t = 30 {
	knives = 1;
	knives_t = 0;
}
if knives = 1 {
	if knives_alpha <1 knives_alpha+=0.05;	
}
#endregion
