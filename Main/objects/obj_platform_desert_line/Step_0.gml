/// @description Insert description here
// You can write your code in this editor

//position
if place_meeting(x,y+1,obj_platform_desert_line) && place_meeting(x,y-1,obj_platform_desert_line)
{
    pos = 0;   
}

if !place_meeting(x,y-1,obj_platform_desert_line)
{
    pos = -1;   
}

if !place_meeting(x,y+1,obj_platform_desert_line)
{
    pos = 1;   
}

// anim

switch(pos)
{
    // Верхняя
    case -1:
        switch(mov)
        {
            case -1:
                sprite_index = spr_moving_platform_desert_up_top;
                break;
            case 0:
                sprite_index = spr_moving_platform_desert_top;
                break;
            case 1:
                sprite_index = spr_moving_platform_desert_down_top;
                break;
        }
        break;
    // Средняя
    case 0:
        switch(mov)
        {
            case -1:
                sprite_index = spr_moving_platform_desert_up_middle;
                break;
            case 0:
                sprite_index = spr_moving_platform_desert_middle;
                break;
            case 1:
                sprite_index = spr_moving_platform_desert_down_middle;
                break;
        }
        break;
    // Нижняя
    case 1:
        switch(mov)
        {
            case -1:
                sprite_index = spr_moving_platform_desert_up_down;
                break;
            case 0:
                sprite_index = spr_moving_platform_desert_down;
                break;
            case 1:
                sprite_index = spr_moving_platform_desert_down_down;
                break;
        }
        break;       
}

// Взаимодействие с кнопками

if instance_exists(obj_platform_3_v_button_down) && instance_exists(obj_platform_3_v_button_down) && instance_exists(obj_Player)
{
    with(obj_Player)
    {
        if place_meeting(x,y,obj_platform_3_v_button_down)
        {
            obj_platform_desert_line.mov = 1;   
        }
        if place_meeting(x,y,obj_platform_3_v_button_up)
        {
            obj_platform_desert_line.mov = -1;   
        }
        if !place_meeting(x,y,obj_platform_3_v_button_down) && !place_meeting(x,y,obj_platform_3_v_button_up)
        {
            obj_platform_desert_line.mov = 0;      
        }
    }
}
