/// @description Insert description here
// You can write your code in this editor
depth = -y;

if instance_exists(obj_sp_boat_level)
{
    if obj_sp_boat_level.state != 17   
    {
        player_input();
       
    } 
    if obj_sp_boat_level.state = 17 && obj_sp_boat_level.t = 1
        {
            t = 0;
            state = 10
            image_index = 0;
        }
}

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

if state != 9
{
    if hit_cd > 0 
    {
        hit_cd++;
    
        // Получение урона
        if hit_cd = 1
        {
            global.hp-=1;
        }
        
        if hit_cd = 2
        {
            fnc_snd_play_onetime(snd_player_take_dmg); 
            fnc_snd_play_onetime(snd_boss_expl);
            
        }

        if hit_cd = 120
        {
            hit_cd = 0;   
        }
    }
}

#endregion

if state < 10
{

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
} else if place_meeting(x,y,obj_boat_algae15) 
    {
        yspdalgae = 0.35;
        xspdalgae = 0.5;
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
}

#region Смерть
if global.hp <= 0
{
    
    #region появление взрывов
    
        if death_timer < 60
        {
            death_timer ++;
        }
        
        switch(death_timer)
        {
            case 1: instance_create_depth(x+20,y-20,-1000,obj_sfx_explosion);   
                    instance_create_depth(x-8,y-24,-1000,obj_sfx_explosion);
                    instance_create_depth(x+30,y-8,-1000,obj_sfx_explosion);
                    instance_create_depth(x-32,y-12,-1000,obj_sfx_explosion);
                    instance_create_depth(x+14,y-20,-1000,obj_sfx_explosion);
                    break;
        }
        
    #endregion
    
    state = 9;
    b = 0; // выстрел
    b_mid = 0; // кулдаун выстрелов
    spd = 0;
    spdv = 0; //верт скорость
    xspdalgae = 1; // множитель скорости на водорослях
    yspdalgae = 1;   
    global.hp = global.hp_max;
    global.gold = obj_sp_boat_level.money_saved;
    
    
    #region выключение музыки
        if instance_exists(obj_music_controller_boat)
        {
            instance_destroy(obj_music_controller_boat);   
        } 
        audio_stop_sound(msc_Boat_level);
    #endregion
    
    
    instance_create_depth(x,y,0,obj_Player_boat_death);
}
#endregion

#region Cutscene
{
    if state = 10
    {
        if instance_exists(obj_powerup_indicator_cannon)
        {
            instance_destroy(obj_powerup_indicator_cannon)   
        }
        
        if instance_exists(obj_powerup_indicator_fastshoot)
        {
            instance_destroy(obj_powerup_indicator_fastshoot)   
        }
        
        
        
        b = 0; // выстрел
        b_mid = 0; // кулдаун выстрелов
        spd = 0;
        spdv = 0; //верт скорость
        xspdalgae = 1; // множитель скорости на водорослях
        yspdalgae = 1;   
    }
    
    #region С ЗАПАДА
    
    if state = 11.1 // WEST COAST
    {
        x+=hspd;
        hspd = lerp(hspd,4,0.02);
        if x > 600
        {
            state = 11.2;
            hspd = -4;
            
        }
    }
    
    if state = 11.2
    {
        
        x+=hspd;
        if x < -100
        {
            hspd = 0;
            var west = instance_create_depth(-16,96,-1000,obj_ctsc_player_boat_small);
            west.spd = 0.1;
            state = 11.3;
        }
    }
    if state = 11.3
    {
        /*ctsc_timer ++;
        if ctsc_timer = 300
        {
            instance_create_depth(0,0,-1000000000,obj_room_transition_black_screen_to_L1_p)   
        }
        */
    }
    
    
    #endregion
    
    #region С ВОСТОКА
    
    if state = 12.1 // EAST COAST
    {
        x+=hspd;
        hspd = lerp(hspd,4,0.02);
        if x > 600
        {
            hspd = 0;
            var east = instance_create_depth(496,96,-1000,obj_ctsc_player_boat_small);
            east.spd = -0.1;
            east.image_xscale = -1;
            state = 12.2;
        }
    }
    
    if state = 12.2
    {
        /*
        ctsc_timer ++;
        if ctsc_timer = 500
        {
            instance_create_depth(0,0,-1000000000,obj_room_transition_black_screen_to_L1_b)   
        } 
        */
    }
    
    #endregion
    
}
#endregion