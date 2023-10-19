/// @description Insert description here
// You can write your code in this editor

t++;
if t = 2
{
    t = 0;   
    if hspd > 0 image_angle-=45;
    if hspd < 0 image_angle+=45;
}


if y > 270+64 instance_destroy();

if state = 0
{
    x+=hspd;
    y+=vspd;
    if place_meeting(x,y,obj_hitbox)
    {
        instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
        instance_destroy();   
    }
    
    if instance_exists(obj_item_boomerang)
    {
        if place_meeting(x,y,obj_item_boomerang)
        {
            fnc_snd_play_onetime(snd_get_boomerang);
            instance_create_depth(x,y,depth-1,obj_sfx2);
            if obj_item_boomerang.x > x hspd = -4 else hspd = 4;  
            vspd = -1;
            state = 1;
        }
    }   
}

if state = 1
{
    instance_destroy(icon);
    x+=hspd;
    y+=vspd;
    if (hspd < 0 && x <= 16) || (hspd > 0 && x >= 480-16)  
    {
        state = 2;   
    }    
}

if state = 2
{
    if instance_exists(obj_boss_l1_3)
    {
        if point_distance(x,y,obj_boss_l1_3.x, obj_boss_l1_3.y) > 12
        {
            move_towards_point(obj_boss_l1_3.x, obj_boss_l1_3.y, 8);
        }
        else 
        {
            instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);           
            obj_boss_l1_3.item_hit += 1;
            fnc_snd_play_onetime(snd_get_boomerang);
            instance_destroy();   
        }
   
    } else if instance_exists(obj_boss_le1_3) 
	{
		if point_distance(x,y,obj_boss_le1_3.x, obj_boss_le1_3.y) > 12
        {
            move_towards_point(obj_boss_le1_3.x, obj_boss_le1_3.y, 8);
        }
        else 
        {
            // Нанести урон
            fnc_snd_play_onetime(snd_get_boomerang);
            instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);
            obj_boss_le1_3.item_hit += 1;
            
            instance_destroy();   
        }
	} else instance_destroy();
	
}