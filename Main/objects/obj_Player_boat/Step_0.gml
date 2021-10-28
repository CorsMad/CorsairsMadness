/// @description Insert description here
// You can write your code in this editor
depth = -y;
player_input();

#region режимы Стрельбы 

#region Обычный пистолет

if state = 0
{
    bonus_lose = 0;
    a = image_index;
    t_mid = 30;
    t_max = 60;
    
    if t!=0 && t!=t_mid
    {
        t++;   
    }
    
    if t = t_max
    {
        t = 0;   
    }

    if t = 0   
    {
        image_index = 0   
    }
    
    if t > 0 && t <= t_mid/2    
    {
        image_index = 1;   
    }
    
    if t > t_mid/2 && t <= t_mid
    {
        image_index = 2;   
    }
    
    if t > t_mid && t <= (t_mid+(t_mid/2))
    {
        image_index = 3;   
    }
    
    if t > (t_mid+(t_mid/2))
    {
        image_index = 0;   
    }
    
    
    
    if t = 0 || t = t_mid
    {
       
        if bonus_gain_fast_pistol = 1
        {
            if t <= t_mid && t > 0
            {
                t = 15;   
            }
            fastshoot_count = 50;
            state = 1; 
            t_mid = 15;
            t_max = 30;
            instance_create_depth(x,y-64,depth-1,obj_powerup_indicator_fastshoot);
        } else
        
        if bonus_gain_cannon = 1
        {
            if t <= t_mid && t > 0
            {
                t = 0;   
            }
            image_index = 0;
            cannonshoot_count = 50;
            state = 3; 
            t_mid = 30;
            t_max = 10;
            instance_create_depth(x,y-64,depth-1,obj_powerup_indicator_cannon);
        } else
 
        
        {
            if key_attack_press
            {
                t++;
                if image_index = 0
                {
                    instance_create_depth(x+18,y-28,-1,obj_sfx1)
                    instance_create_depth(x+18,y-28,-1,obj_sfx3)
                }
                if image_index = 2
                {
                    instance_create_depth(x+14,y-28,-1,obj_sfx1)
                    instance_create_depth(x+14,y-28,-1,obj_sfx3)   
                }
         
                instance_create_depth(x+18,y-28,-1,obj_player_boat_pistol_projectile);
                instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);
            }   
        }    
    }

}

#endregion

#region Быстрый пистолет

if state = 1
{
    t_mid = 15;
    t_max = 30;
    a = image_index;
    cannonshoot_count = 0;
    bonus_gain_fast_pistol = 0;
    
    if t!=0 && t!=t_mid
    {
        t++;   
    }
    
    if t = t_max
    {
        t = 0;   
    }

    if t = 0   
    {
        image_index = 0   
    }
    
    if t > 0 && t <= t_mid/2    
    {
        image_index = 1;   
    }
    
    if t > t_mid/2 && t <= t_mid
    {
        image_index = 2;   
    }
    
    if t > t_mid && t <= (t_mid+(t_mid/2))
    {
        image_index = 3;   
    }
    
    if t > (t_mid+(t_mid/2))
    {
        image_index = 0;   
    }
    
    
    if t = 0 || t = t_mid
    {
        if bonus_gain_cannon = 1
        {
            if t <= t_mid && t > 0
            {
                t = 0;   
            }
            image_index = 0;
            cannonshoot_count = 50;
            state = 3; 
            t_mid = 30;
            t_max = 10;
            if instance_exists(obj_powerup_indicator_fastshoot)
            {
                instance_destroy(obj_powerup_indicator_fastshoot);   
            }
            instance_create_depth(x,y-64,depth-1,obj_powerup_indicator_cannon);
        } else
            if bonus_lose = 1
            {
                bonus_lose = 0;
                state = 0;
            }   else   
                    if key_attack_press
                    {
                        t++; 
                        fastshoot_count--;
                        if image_index = 0
                        {
                            instance_create_depth(x+18,y-28,-1,obj_sfx1)
                            instance_create_depth(x+18,y-28,-1,obj_sfx3)
                        }
                        if image_index = 2
                        {
                            instance_create_depth(x+14,y-28,-1,obj_sfx1)
                            instance_create_depth(x+14,y-28,-1,obj_sfx3)   
                        }
         
                        instance_create_depth(x+18,y-28,-1,obj_player_boat_pistol_projectile);
                        instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);
                    }
    }

    //выход
    if fastshoot_count <= 0
    {
        fastshoot_count = 0;
        bonus_lose = 1;
    }
}

#endregion

#region Пушка

if state = 3
{
    a = image_index;
    bonus_gain_cannon = 0;
    fastshoot_count = 0;
    
    // Таймер
    if t!=0 
    {
        t++;   
    }
    
    if t = t_max
    {
        t = 0;   
    }
    
    // Анимация
    
    if t = 0
    {
        image_index = 0   
    }
    
    if t != 0  
    {
        image_index = 1;   
    }  
    
    if t > t_max/2 
    {
        image_index = 0;   
    }
    //
    
    if t = 0
    {
        // Подбор быстрых выстрелов
        
        if bonus_gain_fast_pistol = 1
        {
            state = 1;  
            
            fastshoot_count = 50;
            bonus_lose = 0;
            t_mid = 15;
            t_max = 30;
            t = 0;
            if instance_exists(obj_powerup_indicator_cannon)
            {
                instance_destroy(obj_powerup_indicator_cannon);   
            }
            instance_create_depth(x,y-64,depth-1,obj_powerup_indicator_fastshoot);
        } else


        if bonus_lose = 1
        {
            bonus_lose = 0;
            state = 0;
        }   else   
                if key_attack_press
                {
                    t++; 
                    cannonshoot_count--;
                    if image_index = 0
                    {
                        var sfx1 = instance_create_depth(x+14,y-24,-1,obj_sfx1);
                        var sfx2 = instance_create_depth(x+14,y-24,-1,obj_sfx3)
                        sfx1.image_xscale = 1.5;
                        sfx1.image_yscale = 1.5;
                        sfx2.image_xscale = 1.5;
                        sfx2.image_yscale = 1.5;
                    }
                    instance_create_depth(x+18,y-28,-1,obj_player_boat_cannon_projectile);    
                }
    }

    //выход
    if cannonshoot_count <= 0
    {
        cannonshoot_count = 0;
        bonus_lose = 1;
    }
}


#endregion

#endregion

#region Покачивание

    if toup = 1
    {
        yob +=0.075;
        if yob = 3
        {
            toup = 0;       
        }
    }
    
    if toup = 0
    {
        yob -=0.075;
        if yob = 0
        {
            toup = 1;       
        }
    }
    
#endregion

#region Получение урона

if hit_cd > 0 
{
    hit_cd++;
    
    // Получение урона
    if hit_cd = 1
    {
        hp-=1;
    }

    if hit_cd = 120
    {
        hit_cd = 0;   
    }
}

#endregion

#region Перемещение

xx = key_right - key_left;
yy = key_down - key_up;


hspd = (xx*spd)*xspdalgae; 
vspd = (yy*spdv)*yspdalgae; 

#region на водорослях
if place_meeting(x,y,obj_boat_algae)
{
    xspdalgae = 0.35;
    yspdalgae = 0.5;
} else  
    {
        yspdalgae = 1;
        xspdalgae = 1;
    }
#endregion

#region Pixel Perfect Collision

// Horz collision
if(place_meeting(x + hspd, y, obj_block))
 {
  while(!place_meeting(x + sign(hspd), y, obj_block))
  {
   x += sign(hspd);
  }
   hspd = 0;
 }
 
x += hspd;

// Vert collision
if(place_meeting(x, y + vspd, obj_block))
 {
  while(!place_meeting(x, y + sign(vspd), obj_block))
  {
   y += sign(vspd);
  }
   vspd = 0;
 }
 
y += vspd;

#endregion


#endregion