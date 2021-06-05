/// @description Insert description here
// You can write your code in this editor

#region Патруль
    if state = 1 && state != 9 
    {
        if instance_exists(obj_Player)
        {
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    	    if dis < 120 
    		{
    	        state = 2;
    	    }   
        }
    }
#endregion

#region Стоп
    if state = 2 && state != 9 
    {
        t++;
        if t = 30
        {
            state = 3;
            t = 0;
        }
    }
#endregion

#region Подготовка к атаке
    if state = 3 && state != 9 
    {
        t++;
        if t = 30
        {
            t = 0;
            state = 4;
            
            spd = 0;
            
        }
    }
#endregion

#region Полет в игрока
    if state = 4 && state != 9 
    {
        if instance_exists(obj_Player) 
        {
            var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);         
        }
        
        hspeed = lengthdir_x(spd,dir);
        vspeed = lengthdir_y(spd,dir);
        if spd < 4
        {
            spd += 0.05;
        }
        
        if place_meeting(x,y,obj_Player)
        
        {
            state = 5;
            spd = 0;
        }
    }
#endregion

#region Подлет после столкновения с игроком
    if state = 5 && state != 9 
    {
        hspeed = lerp(hspeed,0,0.05);
        vspeed = lerp(vspeed,0,0.05);
        
        t++;
        if t = 70
        {
            hspeed = 0;
            vspeed = 0;
            state = 6;
            t = 0;
        }
    }
#endregion

#region Ожидание
    if state = 6 && state != 9 
    {
        t++;
        if t = 30
        {
            t = 0;
            if y >= room_height/2
            {
                state = 7; 
            } else state = 8;
        }
        
    }
#endregion

#region Полет вверх после атаки
    if state = 7 && state != 9 
    {
        y -=1;
        t++;
        if t = 60
        {
            t = 0;
            state = 3;
        }
    }
#endregion

#region Полет вниз после атаки
    if state = 8 && state != 9 
    {
        y +=1;
        t++;
        if t = 60
        {
            t = 0;
            state = 3;
        }
    }
#endregion

#region Получение урона и отлет назад
    if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
    {
		if obj_Player.isGrounded = 0 
		{
			obj_Player.vspd = -3.2;
		}
                
        hit_cd = 1;
        state = 9;
        if obj_Player.x >= x
        {
            hspd = -2;  
        } else hspd = 2;
        vspd = -1.5;
        hspeed = 0;
        vspeed = 0;
    }
    
    if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
	{
        hit_cd = 1;
        state = 9;
        if obj_Player.x >= x
        {
            hspd = -3;  
        } else hspd = 3;
        vspd = -1.5;
        hspeed = 0;
        vspeed = 0;
		obj_Player.image_index = 0;
        obj_Player.isRecoil = 1;
        if (obj_Player.dash_counts = 0) obj_Player.dash_counts = 1;
		if obj_Player.x < x 
		{
			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
	}
    
    
    if state = 9 
    {
		t = 0;
        
        hspeed = 0;
        vspeed = 0;
        x+=hspd;
        y+=vspd;
        
        if hspd > 0
        {
            if hspd != 0 
            {
                hspd -=0.1;   
            }
        }
        if hspd < 0
        {
            if hspd != 0
            {
                hspd +=0.1;   
            }
        }
        if vspd < 0
        {
            vspd += 0.1;   
        }
        if vspd = 0 && hspd = 0
        {
            hit_cd = 0;
			t = 0;
            state = 3;
        }
    }
#endregion