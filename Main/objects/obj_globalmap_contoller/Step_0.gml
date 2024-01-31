/// @description Insert description here
// You can write your code in this editor
kb_gp_input_check();

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
