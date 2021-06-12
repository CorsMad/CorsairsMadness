/// @description Insert description here
// You can write your code in this editor
dis = point_distance(x,y,obj_Player.x,obj_Player.y);
if image_xscale = 1 
{
	dir = 1;	
} else dir = -1; 

#region получение урона
    if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
	{
		if obj_Player.x < x 
		{
			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
        
        if state = 4
        {
            state = 7
            t = 0;
            if obj_Player.x < x
            {
                hspd = 2;
            } else hspd = -2;
        }
	}
    if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
	{
		obj_Player.image_index = 0;
        obj_Player.isRecoil = 1;
        if (obj_Player.dash_counts = 0) obj_Player.dash_counts = 1;
		if obj_Player.x < x 
		{
			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
        if state = 4
        {
            state = 7
            t = 0;
            if obj_Player.x < x
            {
                hspd = 2;
            } else hspd = -2;
        }
	}
    fnc_enemy_no_armor_dmg_masked();
#endregion

#region проверка
if state = 1
{ 
    fnc_enemy_molded_grounded(obj_grounded_molded_limiter,obj_block);
    fnc_image_xscale();
    #region проверка игрока и переход к подготовке
    if instance_exists(obj_Player)
    {
        var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
	    if dis < 120 
		{
	        state = 2;
	    }   
    }
    #endregion
}
#endregion

#region подготовка к бою
if state = 2 
{
    fnc_enemy_molded_grounded(obj_grounded_molded_limiter,obj_block);
    hspd = 0;
    t++;
    if instance_exists(obj_Player)
    {
        if obj_Player.x >= x
        {
            image_xscale = 1    
        } else image_xscale = -1;
    }
    if t = 60
    {
        t = 0;
        if collision_line(x,y-8,x+dir*48,y-8,obj_block,false,false)
        {
            state = 3;
        } else state = choose(3,4);
    }
}
#endregion

#region наземная атака
if state = 3
{
    fnc_enemy_molded_grounded_attack_on_ground(obj_grounded_molded_limiter,obj_block);
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        hspd = dir*4;
        if t = 20  
        {
            t = 0;
            hspd = 0;
            state = 6;
        }  
        if place_meeting(x+sign(hspd),y,obj_block)   
        {
            t = 0;
            hspd = 0;
            attacks = 1;
            state = 6;
        }  
    } else hspd = 0;
}
#endregion

#region атака в прыжке
if state = 4 
{
    fnc_enemy_molded_grounded_attack_on_ground(obj_grounded_molded_limiter,obj_block);
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        if t = 1 
        {
            hspd = dir*2;
            vspd = -4
        }
        if t > 2 && place_meeting(x,y+1,obj_block)
        {
            hspd = 0;
            vspd = 0;
            state = 6;
            t = 0;
        } 
    } else  {
                hspd = 0;
                vspd = 0;
            }
}
#endregion

#region отскок

if state = 5
{
    fnc_enemy_molded_grounded(obj_grounded_molded_limiter,obj_block); 
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
    
        if  t = 1 
        {
            attacks = 0;
            hspd = -dir*2;
            vspd = -3;
        }
    
        if t > 2 && place_meeting(x,y+1,obj_block)
        {
            hspd = 0;
            vspd = 0;
            state = 2;
            t = 0;
        }
    } else  {
                hspd = 0;
                vspd = 0;
            }
    
}
#endregion

#region ожидание
if state = 6 
{
    fnc_enemy_molded_grounded_attack_on_ground(obj_grounded_molded_limiter,obj_block);
    t++;
    if t = 40
    {   
        t = 0;
        if attacks = 1 && dis < 220 
        {
            state = 5;
        }
        if attacks = 0 && dis < 220
        {
            state = 2;  
        }
        if dis >= 220 
        {
            state = 1;
            attacks = 0;
            hspd = choose(-1,1);
        }


    }
}
#endregion

#region отражение атаки в воздухе

if state = 7
{
    fnc_enemy_molded_grounded_attack_on_ground(obj_grounded_molded_limiter,obj_block);
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if place_meeting(x,y+1,obj_block)
        {
            hspd = 0;
            vspd = 0;
            state = 6;
            t = 0;
        } 
    } else  {
                hspd = 0;
                vspd = 0;
            }
}

#endregion

#region смерть

#endregion

