/// @description Insert description here
// You can write your code in this editor

player_input();

#region режимы Стрельбы 

#region Обычный пистолет

if state = 0
{
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
            instance_create_depth(x,y-64,depth-1,obj_powerup_indicator);
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
    a = image_index;
    
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
/*
if state = 1
{
    a = image_index;
    bonus_cd++;  
    
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
        
        if bonus_lose = 1
        {
            bonus_lose = 0;
            bonus_cd = 0;
            state = 0;
        }   else   
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
    
    
 
    //выход
    if bonus_cd >= bonus_cd_max
    {
        bonus_cd = bonus_cd_max;
        bonus_lose = 1;
    }
}
*/
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

#region Перемещение

xx = key_right - key_left;
yy = key_down - key_up;


hspd = xx*spd; 
vspd = yy*spdv; 

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