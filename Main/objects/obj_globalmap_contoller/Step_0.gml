/// @description Insert description here
// You can write your code in this editor
kb_gp_input_check();
var sl = keyboard_check_pressed(vk_left)
var sr = keyboard_check_pressed(vk_right)
var su = keyboard_check_pressed(vk_up)
var sd = keyboard_check_pressed(vk_down)
var saccept = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
player_input();

// возможность управления
if t < 10 t++;

if t > 5 && !instance_exists(obj_global_map_confirm)
{
    
#region управление

switch(island)
{
    case 0:
        if key_up_press      || su      {island = 4;OutlinerAlpha_t=0}
        if key_right_press   || sr      {island = 2;OutlinerAlpha_t=0}
        if key_down_pressed  || sd      {island = 1;OutlinerAlpha_t=0}
        break;
    case 1:
        if key_left_press    || sl       {island = 0;OutlinerAlpha_t=0}
        if key_right_press   || sr       {island = 2;OutlinerAlpha_t=0}
        if key_up_press      || su       {island = 3;OutlinerAlpha_t=0}
        break;
    case 2:
        if key_up_press      || su     {island = 3;OutlinerAlpha_t=0}
        if key_left_press    || sl     {island = 0;OutlinerAlpha_t=0}
        if key_down_pressed  || sd     {island = 1;OutlinerAlpha_t=0}
        break;
    case 3:
        if key_left_press    || sl     {island = 4;OutlinerAlpha_t=0}
        if key_right_press   || sr     {island = 2;OutlinerAlpha_t=0}
        if key_down_pressed  || sd     {island = 1;OutlinerAlpha_t=0}
        break;
    case 4:
        if key_left_press    || sl     {island = 0;OutlinerAlpha_t=0}
        if key_right_press   || sr     {island = 3;OutlinerAlpha_t=0}
        if key_down_pressed  || sd     {island = 1;OutlinerAlpha_t=0}
        break;
}

#endregion

#region Выбор острова
if key_jump || key_attack || saccept
{
    switch(island)
    {
        case 0:        
            break;
        case 1:
            if global.completed_PD2 = 0 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);           
            break;
        case 2:
            if global.completed_PS2 = 0 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
            break;
        case 3:
            if global.completed_PG2 = 0 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
            break;
        case 4:
            if global.completed_PL2 = 0 instance_create_depth(room_width/2,room_height/2,depth-1,obj_global_map_confirm);            
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
