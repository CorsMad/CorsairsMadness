/// @description Insert description here
// You can write your code in this editor
menu_input();
kb_gp_input_check();

// возможность управления
if t < 10 t++;

if t > 5 && !instance_exists(obj_global_map_confirm)
{
    
#region управление

switch(island)
{
    case 0:
        if key_up_press             {island = 4;OutlinerAlpha_t=0}
        if key_right_press          {island = 2;OutlinerAlpha_t=0}
        if key_down_pressed         {island = 1;OutlinerAlpha_t=0}
        break;
    case 1:
        if key_left_press           {island = 0;OutlinerAlpha_t=0}
        if key_right_press          {island = 2;OutlinerAlpha_t=0}
        if key_up_press             {island = 3;OutlinerAlpha_t=0}
        break;
    case 2:
        if key_up_press             {island = 3;OutlinerAlpha_t=0}
        if key_left_press           {island = 0;OutlinerAlpha_t=0}
        if key_down_pressed         {island = 1;OutlinerAlpha_t=0}
        break;
    case 3:
        if key_left_press           {island = 4;OutlinerAlpha_t=0}
        if key_right_press          {island = 2;OutlinerAlpha_t=0}
        if key_down_pressed         {island = 1;OutlinerAlpha_t=0}
        break;
    case 4:
        if key_left_press           {island = 0;OutlinerAlpha_t=0}
        if key_right_press          {island = 3;OutlinerAlpha_t=0}
        if key_down_pressed         {island = 1;OutlinerAlpha_t=0}
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
            if global.completed_PD2 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);           
            break;
        case 2:
            if global.completed_PS2 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
            break;
        case 3:
            if global.completed_PG2 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
            break;
        case 4:
            if global.completed_PL2 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
            break;
    }
}
#endregion

}

#region Переход
/*
if Transition = 1
{
    Scale_spd+=0.00001;
    Scale+=Scale_spd;
    var bgr1 = layer_background_get_id("GlobalMap");
    layer_background_xscale(bgr1,Scale)
    layer_background_yscale(bgr1,Scale)
}
*/
#endregion

#region  аутлайнер
OutlinerAlpha_t +=1 
if OutlinerAlpha_t = 50 OutlinerAlpha_t = 0;
if OutlinerAlpha_t < 25 OutlinerAlpha = 1 else OutlinerAlpha = 0.5;
#endregion
