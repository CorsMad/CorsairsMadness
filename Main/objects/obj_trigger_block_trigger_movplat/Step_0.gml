/// @description Insert description here
// You can write your code in this editor
if state = 0
{

    if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang)
    {
        
        state = 1;
        instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
        
        if instance_exists(obj_platform_3_v_e_stop)
        {
            obj_platform_3_v_e_stop.isEnabled = 1;
        }
    }
    
}

if state = 1
{
    if t < 90 t++;
}

#region анимация

if t = 0
{
    image_index = 0;       
}

if t > 0 && t < 95
{
    image_index = 2;   
}

if t >= 95
{
    image_index = 1;   
}


#endregion