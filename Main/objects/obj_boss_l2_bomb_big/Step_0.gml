/// @description Insert description here
// You can write your code in this editor

t++;
if t = 2
{
    t = 0;   
    if hspd > 0 image_angle-=45;
    if hspd < 0 image_angle+=45;
}


if y >= 256 
{
    fnc_snd_play_onetime(snd_item_bomb_explosion);
	instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
    instance_create_depth(x-18,y-18-18,depth-1,obj_sfx_explosion_bomb);
    instance_create_depth(x-18,y+18-18,depth-1,obj_sfx_explosion_bomb);
    instance_create_depth(x+18,y-18-18,depth-1,obj_sfx_explosion_bomb);
    instance_create_depth(x+18,y+18-18,depth-1,obj_sfx_explosion_bomb);
    instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
	var l = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
	var r = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
	l.hspd = -2;
	r.hspd = 2;
	instance_destroy();
}

if state = 0
{
    x+=hspd;
    y+=vspd;
    if place_meeting(x,y,obj_hitbox)
    {
        fnc_snd_play_onetime(snd_item_bomb_explosion);
        instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
        instance_create_depth(x-18,y-18,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x-18,y+18,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x+18,y-18,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x+18,y+18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);

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
    if instance_exists(obj_boss_l2_phase2)
    {
        if point_distance(x,y,obj_boss_l2_phase2.x, obj_boss_l2_phase2.y) > 12
        {
            move_towards_point(obj_boss_l2_phase2.x, obj_boss_l2_phase2.y, 8);
        }
        else 
        {
            // Нанести урон
            fnc_snd_play_onetime(snd_item_bomb_explosion);
            obj_boss_l2_phase2.bomb_hit += 1;
			instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x-18,y-18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x-18,y+18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x+18,y-18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x+18,y+18,depth-1,obj_sfx_explosion_bomb);
            instance_destroy();   
        }
   
    } else if instance_exists(obj_boss_le2_phase2)
	{
		if point_distance(x,y,obj_boss_le2_phase2.x, obj_boss_le2_phase2.y) > 12
        {
            move_towards_point(obj_boss_le2_phase2.x, obj_boss_le2_phase2.y, 8);
        }
        else 
        {
            // Нанести урон
            fnc_snd_play_onetime(snd_item_bomb_explosion);
            obj_boss_le2_phase2.bomb_hit += 1;
			instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x-18,y-18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x-18,y+18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x+18,y-18,depth-1,obj_sfx_explosion_bomb);
            instance_create_depth(x+18,y+18,depth-1,obj_sfx_explosion_bomb);
            instance_destroy();   
        }
	} else instance_destroy();	
	
	
}