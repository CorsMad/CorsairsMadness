/// @description Insert description here
// You can write your code in this editor
depth = -y;

if canControl = 1 
{
    player_input();
}

if canControl = 0
{
    t = 0;
    image_index = 0;
}

#region режимы Стрельбы 

#region Обычный пистолет

if state = 0
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        instance_create_depth(x+18,y-28,-1,obj_player_boat_pistol_projectile);
        instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);
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
        if fastshoot_count > 0 fastshoot_count--;
    }
    if t !=0 t++;
    if t = cd_max 
    {
        t = 0;
        if image_index = 2 image_index = 2
        if image_index > 2 image_index = 0
        
    }
    switch(t)
    {
        case cd_1: image_index+=1;break;    
        case cd_2: image_index+=1;break;    
    }  
    

}

#endregion

#region Двойной пистолет

if state = 0.1
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        switch(global.choosed_itemboat_tier)
        {
            case 1:
                instance_create_depth(x+18,y-34,-1,obj_player_boat_dpistol_t1);
                instance_create_depth(x+18,y-20,-1,obj_player_boat_dpistol_t1);
                break;
            case 2:
                instance_create_depth(x+18,y-34,-1,obj_player_boat_dpistol_t2);
                instance_create_depth(x+18,y-20,-1,obj_player_boat_dpistol_t2);
                break;
            case 3:
                instance_create_depth(x+18,y-34,-1,obj_player_boat_dpistol_t3);
                instance_create_depth(x+18,y-20,-1,obj_player_boat_dpistol_t3);
                break;
        }
        
        
        instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);        
        instance_create_depth(x-8,y-36,-1,obj_Player_boat_used_pistol);
        
        if image_index = 0
        {
            instance_create_depth(x+18,y-30,-1,obj_sfx1)
            instance_create_depth(x+18,y-22,-1,obj_sfx1)
            instance_create_depth(x+18,y-30,-1,obj_sfx3)
            instance_create_depth(x+18,y-22,-1,obj_sfx3)
        }

        if fastshoot_count > 0 fastshoot_count--;
    }
    if t !=0 t++;
    if t = cd_max 
    {
        t = 0;
        if image_index = 2 image_index = 0
        
    }
    switch(t)
    {
        case cd_1: image_index+=1;break;    
        case cd_2: image_index+=1;break;    
    }  
}

#endregion

#region Мушкетон
if state = 0.2
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        switch(global.choosed_itemboat_tier)
        {
            case 1:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i1 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i2 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);                
                i1.vspd = -0.5;
                i2.vspd = 0.5;
                break;
            case 2:

                var i1 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i2 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i3 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i4 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                i1.vspd = -0.6;
                i2.vspd = -0.2;
                i3.vspd = 0.2;
                i4.vspd = 0.6;

                break;
            case 3:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i1 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i2 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i3 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                var i4 = instance_create_depth(x+14,y-24,-1,obj_player_boat_bbus_t1_1);
                i1.vspd = -0.7;
                i2.vspd = -0.3;
                i3.vspd = 0.3;
                i4.vspd = 0.7;
                break;
        }
        
        
        if image_index = 0
        {
            var sfx1 = instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
            var sfx2 = instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
            sfx1.image_xscale = 1.5;
            sfx1.image_yscale = 1.5;
            sfx2.image_xscale = 1.5;
            sfx2.image_yscale = 1.5;
        }

        if fastshoot_count > 0 fastshoot_count--;
    }
    if t !=0 t++;
    if t = cd_max 
    {
        t = 0;
        if image_index = 2 image_index = 0
        
    }
    switch(t)
    {
        case cd_1: image_index+=1;break;    
        case cd_2: image_index+=1;break;    
    }  
}
#endregion

#region Попугай
if state = 0.3
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        switch(global.choosed_itemboat_tier)
        {
            case 1:
                instance_create_depth(x+4,y-27,-1,obj_player_boat_parrotcage_t1);               
                break;
            case 2:
                instance_create_depth(x+18,y-34,-1,obj_player_boat_parrotcage_t2);
                break;
            case 3:
                instance_create_depth(x+18,y-34,-1,obj_player_boat_parrotcage_t3);
                break;
        }        
        
        if image_index = 0
        {
            instance_create_depth(x+18,y-30,-1,obj_sfx1)
            instance_create_depth(x+18,y-22,-1,obj_sfx1)
            instance_create_depth(x+18,y-30,-1,obj_sfx3)
            instance_create_depth(x+18,y-22,-1,obj_sfx3)
        }

        if fastshoot_count > 0 fastshoot_count--;
    }
    if t !=0 t++;
    if t = cd_max 
    {
        t = 0;
        if image_index = 2 image_index = 0
        
    }
    switch(t)
    {
        case cd_1: image_index+=1;break;    
        case cd_2: image_index+=1;break;    
    }  
}
#endregion

#region Быстровыстрел
if state = 0.4
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        switch(global.choosed_itemboat_tier)
        {
            case 1:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3);
                break;
            case 2:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3);
                break;
            case 3:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3);
                break;
        }
                                   

        if fastshoot_count > 0 fastshoot_count--;
    }
    
    if (t = 5) { // второй выстрел
        switch(global.choosed_itemboat_tier)
        {
            case 1:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
                break;
            case 2:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
                break;
            case 3:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3)    
                break;
        }
    }
    
    if (t = 9) { // третий выстрел
        switch(global.choosed_itemboat_tier)
        {
            case 2:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
                break;
            case 3:
                instance_create_depth(x+14,y-24,-1,obj_player_boat_fastshot_t2);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
                instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
                break;
        }
    }    
    
    
    if t !=0 t++;
    if t = cd_max 
    {
        t = 0;
        //if image_index = 4 image_index = 0
        
    }
    
    switch(global.choosed_itemboat_tier)
    {
        case 1:
            switch(t)
            {
                case 2: image_index=2;break;    
                case 5: image_index=3;break;    
                case 9: instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol3);  break;    
                case 16:
                    image_index=4;
                    break;
                case 26:             
                    image_index=0;
                    break;  
                //case (cd_max): image_index=0;break;      
            }     
            break;
        case 2:
            switch(t)
            {
                case 2: image_index=1;break;    
                case 5: image_index=2;break;    
                case 9: image_index=3;break;    
                case 12:             
                    instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol3);  
                    break;  
                case 19:
                    image_index=4;
                    break;
                case 29: image_index=0;break;      
            }     
            break;
        case 3:
            switch(t)
            {
                case 2: image_index=1;break;    
                case 5: image_index=2;break;    
                case 9: image_index=3;break;    
                case 12:             
                    instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol3);  
                    break;  
                case 19:
                    image_index=4;
                    break;
                case 29: image_index=0;break;      
            }     
            break;
    }
    
}
#endregion

#region Пушка

if state = 3
{
    a = image_index;
    if key_attack_press && t = 0
    {        
        t=1;
        
        instance_create_depth(x+18,y-28,-1,obj_player_boat_cannon_projectile);  
        var sfx1 = instance_create_depth(x+14,y-24,depth-1,obj_sfx1);
        var sfx2 = instance_create_depth(x+14,y-24,depth-1,obj_sfx3)
        sfx1.image_xscale = 1.5;
        sfx1.image_yscale = 1.5;
        sfx2.image_xscale = 1.5;
        sfx2.image_yscale = 1.5;
        
        if cannonshoot_count > 0 cannonshoot_count--; 
    }
    if t != 0 t++;
    if t = 12 t = 0;

    switch(t)
    {
        case 2: image_index = 1;break;    
        case 8: image_index = 2;break;    
    }  
    
    
    if cannonshoot_count<= 0
    {
        t = cd_max-10;
        image_index = 0;
        switch(global.choosed_itemboat)
        {
            case 0:
		        state = 0;
		        break;
		    case 1:
		        state = 0.4; // быстровыстрел
		        break;
		    case 2:
		        state = 0.1; // двойной пистол
		        break;
		    case 3:
		        state = 0.2; // мушкетон
		        break;
		    case 4:
		        state = 0.3; // попугай
		        break; 
        }
    }
    
}
#endregion

#region АПГРЕЙДЫ

#region Скорость атаки

if fastshoot_count != 0
{
    switch(state)
    {
        case 0: // обычный пистолет
                cd_1 = 2;
                cd_2 = 10;
                cd_max = 15;
                break;
        case 0.1: // два пистолета
                cd_1 = 2;
                cd_2 = 18;
                cd_max = 22;
                break;
        case 0.2: // мушкетон
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 24;
                break;
        case 0.3: // попугай
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 24;
                break;
        case 0.4: // быстровыстрел
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 32;
                break;

    }
}

if fastshoot_count = 0
{
    switch(state)
    {
        case 0: // обычный пистолет
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 30;
                break;
        case 0.1: // два пистолета
                cd_1 = 2;
                cd_2 = 25;
                cd_max = 35;
                break;
        case 0.2: // мушкетон
                cd_1 = 2;
                cd_2 = 27;
                cd_max = 37;
                break;
        case 0.3: // попугай
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 24;
                break;
        case 0.4: // быстровыстрел
                cd_1 = 2;
                cd_2 = 20;
                cd_max = 40;
                break;
    }   
}


#endregion


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
    fnc_msc_stop_play();
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
    
    /*
    #region выключение музыки
        if instance_exists(obj_music_controller_boat)
        {
            instance_destroy(obj_music_controller_boat);   
        } 
        audio_stop_sound(msc_Boat_level);
    #endregion
    */
    
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
            west.TargetRoom = TargetRoom;
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
            east.TargetRoom = TargetRoom;
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
    
    #region просто вправо
    
    if state = 101
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
        x+=hspd;
        hspd = lerp(hspd,4,0.02);
        
        if x > 600
        {
            
            var roomtr = instance_create_depth(0,0,depth-10000000000000,obj_room_transition_black_screen_boat_to_next);
            roomtr.TargetRoom = JungleVillageArrive;
            
        }
    }
    
    

    #endregion
    
}
#endregion