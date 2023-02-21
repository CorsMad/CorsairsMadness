/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    image_index = 1;
    if instance_exists(obj_platform_3_v_activate_d2pr6)
    {
        with(obj_platform_3_v_activate_d2pr6)
        {
            if y > 168
            {
                y-=1;
            }
        }        
    }
} else image_index = 0;
