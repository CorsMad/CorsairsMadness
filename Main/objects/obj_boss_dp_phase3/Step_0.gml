/// @description Insert description here
// You can write your code in this editor

/*
0 - появление внизу слева 
1 - появление вверху справа
2 - появление вверху слева
3 - появление внизу справа
4 - ожидание и исчезновение
5 - появление вверху над игроком/ преследование / выстрел / исчезновение (4) раза
6 - медитация и призыв существ
7 - ожидание и исчезновенике
8  
9 - облучение

*/

switch(state)
{
    case 0:
    #region появление внизу слева  
        image_xscale = 1;
        switch(t)
        {
            case 1: sprite_index = spr_boss_dp_appear;image_index = 0;image_speed = 0;break;   
            case 5: image_index = 1;break;   
            case 10: image_index = 2;break;   
            case 15: image_index = 3;break;   
            case 20: image_index = 4;break;   
            case 25: image_index = 5;break;   
            case 30: image_index = 6;break;   
            case 35: image_index = 7;break;               
            case 40: sprite_index = spr_boss_dp_lasershot; image_index = 0;break;   
            case 45: image_index = 1;break;   
            case 50: image_index = 2;break;   
            case 55: image_index = 3;break;   
            case 60: image_index = 4;break;   
            case 65: image_index = 5;break;   
            case 70: image_index = 9;break;   
            case 75: image_index = 10;break;               
            case 80: image_index = 11;break;               
            case 85: sprite_index = spr_boss_dp_appear;image_index = 7;image_speed = 0;break;    
            case 90: image_index = 6;break;   
            case 95: image_index = 5;break;   
            case 100: image_index = 4;break;   
            case 105: image_index = 3;break;   
            case 110: image_index = 2;break;   
            case 115: image_index = 1;break;   
            case 120: image_index = 0;break;         
        }
    
        x = 80;
        y = 176;
        t++;
        if t = 40 can_hit_light = 1
        if t = 75 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
        if t = 125
        {
            can_hit_light = 0;
            state = 1;
            t = 0;
        }
    #endregion
        break;
    case 1:
    #region появление вверху справа
        x = 368;
        y = 80;
        image_xscale = -1;
        t++;
        switch(t)
        {
            case 1: sprite_index = spr_boss_dp_appear;image_index = 0;image_speed = 0;break;   
            case 5: image_index = 1;break;   
            case 10: image_index = 2;break;   
            case 15: image_index = 3;break;   
            case 20: image_index = 4;break;   
            case 25: image_index = 5;break;   
            case 30: image_index = 6;break;   
            case 35: image_index = 7;break;               
            case 40: sprite_index = spr_boss_dp_lasershot; image_index = 0;break;   
            case 45: image_index = 1;break;   
            case 50: image_index = 2;break;   
            case 55: image_index = 3;break;   
            case 60: image_index = 4;break;   
            case 65: image_index = 5;break;   
            case 70: image_index = 9;break;   
            case 75: image_index = 10;break;               
            case 80: image_index = 11;break;               
            case 85: sprite_index = spr_boss_dp_appear;image_index = 7;image_speed = 0;break;    
            case 90: image_index = 6;break;   
            case 95: image_index = 5;break;   
            case 100: image_index = 4;break;   
            case 105: image_index = 3;break;   
            case 110: image_index = 2;break;   
            case 115: image_index = 1;break;   
            case 120: image_index = 0;break;         
        }
        if t = 40 can_hit_light = 1
        if t = 75 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
        if t = 125
        {
            can_hit_light = 0;
            state = 2;
            t = 0;
        }
    #endregion
        break;
    case 2:
    #region появление вверху слева
        image_xscale = 1;
        x = 112;
        y = 80;
        t++;
        switch(t)
        {
            case 1: sprite_index = spr_boss_dp_appear;image_index = 0;image_speed = 0;break;   
            case 5: image_index = 1;break;   
            case 10: image_index = 2;break;   
            case 15: image_index = 3;break;   
            case 20: image_index = 4;break;   
            case 25: image_index = 5;break;   
            case 30: image_index = 6;break;   
            case 35: image_index = 7;break;               
            case 40: sprite_index = spr_boss_dp_lasershot; image_index = 0;break;   
            case 45: image_index = 1;break;   
            case 50: image_index = 2;break;   
            case 55: image_index = 3;break;   
            case 60: image_index = 4;break;   
            case 65: image_index = 5;break;   
            case 70: image_index = 9;break;   
            case 75: image_index = 10;break;               
            case 80: image_index = 11;break;               
            case 85: sprite_index = spr_boss_dp_appear;image_index = 7;image_speed = 0;break;    
            case 90: image_index = 6;break;   
            case 95: image_index = 5;break;   
            case 100: image_index = 4;break;   
            case 105: image_index = 3;break;   
            case 110: image_index = 2;break;   
            case 115: image_index = 1;break;   
            case 120: image_index = 0;break;         
        }
        if t = 40 can_hit_light = 1
        if t = 75 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
        if t = 120
        {
            can_hit_light = 0;
            state = 3;
            t = 0;
        }
    #endregion
        break;
    case 3:
    #region появление внизу справа
        image_xscale = -1;
        x = 400;
        y = 176;
        t++;
        switch(t)
        {
            case 1: sprite_index = spr_boss_dp_appear;image_index = 0;image_speed = 0;break;   
            case 5: image_index = 1;break;   
            case 10: image_index = 2;break;   
            case 15: image_index = 3;break;   
            case 20: image_index = 4;break;   
            case 25: image_index = 5;break;   
            case 30: image_index = 6;break;   
            case 35: image_index = 7;break;               
            case 40: sprite_index = spr_boss_dp_lasershot; image_index = 0;break;   
            case 45: image_index = 1;break;   
            case 50: image_index = 2;break;   
            case 55: image_index = 3;break;   
            case 60: image_index = 4;break;   
            case 65: image_index = 5;break;   
            case 70: image_index = 9;break;   
            case 75: image_index = 10;break;               
            case 80: image_index = 11;break;               
            case 85: sprite_index = spr_boss_dp_idle;image_speed = 1;break;      
        }
        if t = 40 can_hit_light = 1
        if t = 75 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
        if t = 125
        {
            state = 4;
            t = 0;
        }
    #endregion
        break;
    case 4:
    #region ожидание и исчезновение
    t++;
    
    switch(t)
    {
        case 1:sprite_index = spr_boss_dp_idle;image_speed = 1;break;
        case 65:sprite_index = spr_boss_dp_appear;image_index = 7;image_speed = 0;break;
        case 70:image_index = 6;break;
        case 75:image_index = 5;break;
        case 80:image_index = 4;break;
        case 85:image_index = 3;break;
        case 90:image_index = 2;break;
        case 95:image_index = 1;break;        
    }
    if t = 100
    {
        t = 0;
        y= -200;
        state = 5;
    }
    #endregion
        break;
    case 5:
    #region появление вверху над игроком/ преследование / выстрел / исчезновение (4) раза
    t++;    
    
    switch(t) // АНИМ
    {
        case 15:sprite_index = spr_boss_dp_appear;image_index = 0;image_speed =0 ;break;
        case 20:image_index = 1;break;
        case 25:image_index = 2;break;
        case 30:image_index = 3;break;
        case 35:image_index = 4;break;
        case 40:image_index = 5;break;
        case 45:image_index = 6;break;
        case 50:image_index = 7;break;
        case 55:sprite_index = spr_boss_dp_lasershot;image_index = 0;image_speed = 0;break;
        case 60:image_index = 1;break;
        case 65:image_index = 2;break;
        case 70:image_index = 3;break;
        case 75:image_index = 4;break;
        case 80:image_index = 5;break;
        case 85:image_index = 6;break;
        case 90:image_index = 7;break;
        case 95:image_index = 8;break;
        case 100:image_index = 9;break;
        case 105:image_index = 10;break;
        case 110:image_index = 11;break;
        case 115:sprite_index = spr_boss_dp_appear;image_index = 7;image_speed =0;break;
        case 120:image_index = 6;break;
        case 125:image_index = 5;break;
        case 130:image_index = 4;break;
        case 135:image_index = 3;break;
        case 140:image_index = 2;break;
        case 145:image_index = 1;break;
        case 150:sprite_index = spr_blank;y=-200;break;        
        
        case 160:sprite_index = spr_boss_dp_appear;image_index = 0;image_speed =0 ;break;
        case 165:image_index = 1;break;
        case 170:image_index = 2;break;
        case 175:image_index = 3;break;
        case 180:image_index = 4;break;
        case 185:image_index = 5;break;
        case 190:image_index = 6;break;
        case 195:image_index = 7;break;
        case 200:sprite_index = spr_boss_dp_lasershot;image_index = 0;image_speed = 0;break;
        case 205:image_index = 1;break;
        case 210:image_index = 2;break;
        case 215:image_index = 3;break;
        case 220:image_index = 4;break;
        case 225:image_index = 5;break;
        case 230:image_index = 6;break;
        case 235:image_index = 7;break;
        case 245:image_index = 8;break;
        case 250:image_index = 9;break;
        case 255:image_index = 10;break;
        case 260:image_index = 11;break;
        case 265:sprite_index = spr_boss_dp_appear;image_index = 7;image_speed =0;break;
        case 270:image_index = 6;break;
        case 275:image_index = 5;break;
        case 280:image_index = 4;break;
        case 285:image_index = 3;break;
        case 290:image_index = 2;break;
        case 295:image_index = 1;break;
        case 300:sprite_index = spr_blank;y=-200;break;
        
        case 315:sprite_index = spr_boss_dp_appear;image_index = 0;image_speed =0 ;break;
        case 320:image_index = 1;break;
        case 325:image_index = 2;break;
        case 330:image_index = 3;break;
        case 335:image_index = 4;break;
        case 340:image_index = 5;break;
        case 345:image_index = 6;break;
        case 350:image_index = 7;break;
        case 355:sprite_index = spr_boss_dp_lasershot;image_index = 0;image_speed = 0;break;
        case 360:image_index = 1;break;
        case 365:image_index = 2;break;
        case 370:image_index = 3;break;
        case 375:image_index = 4;break;
        case 380:image_index = 5;break;
        case 385:image_index = 6;break;
        case 390:image_index = 7;break;
        case 395:image_index = 8;break;
        case 400:image_index = 9;break;
        case 405:image_index = 10;break;
        case 410:image_index = 11;break;
        case 415:sprite_index = spr_boss_dp_appear;image_index = 7;image_speed =0;break;
        case 420:image_index = 6;break;
        case 425:image_index = 5;break;
        case 430:image_index = 4;break;
        case 435:image_index = 3;break;
        case 440:image_index = 2;break;
        case 445:image_index = 1;break;
        case 450:sprite_index = spr_blank;y=-200;break;
        
        case 465:sprite_index = spr_boss_dp_appear;image_index = 0;image_speed =0 ;break;
        case 470:image_index = 1;break;
        case 475:image_index = 2;break;
        case 480:image_index = 3;break;
        case 485:image_index = 4;break;
        case 490:image_index = 5;break;
        case 495:image_index = 6;break;
        case 500:image_index = 7;break;
        case 505:sprite_index = spr_boss_dp_lasershot;image_index = 0;image_speed = 0;break;
        case 510:image_index = 1;break;
        case 515:image_index = 2;break;
        case 520:image_index = 3;break;
        case 525:image_index = 4;break;
        case 530:image_index = 5;break;
        case 535:image_index = 6;break;
        case 540:image_index = 7;break;
        case 545:image_index = 8;break;
        case 550:image_index = 9;break;
        case 555:image_index = 10;break;
        case 560:image_index = 11;break;
        case 565:sprite_index = spr_boss_dp_idle;image_speed =1;break;
    }
    
    if t = 15 {x = obj_Player.x;y=64;can_hit_light = 1} // появл 
    if t = 105 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
    if t = 150 can_hit_light = 0; // исчез
    
    if t = 160 {x = obj_Player.x;y=64;can_hit_light = 1} // появл 
    if t = 255 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
    if t = 300 can_hit_light = 0; // исчез
    
    if t = 315 {x = obj_Player.x;y=64;can_hit_light = 1} // появл 
    if t = 405 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
    if t = 450 can_hit_light = 0; // исчез
    
    if t = 465 {x = obj_Player.x;y=64;can_hit_light = 1} // появл 
    if t = 555 instance_create_depth(x+16*image_xscale,y+16,depth-1,obj_follower_desert_ph2_laser_projectile);
    if t = 600 
    {        
        t = 0;
        state = 6;
    } 
    #endregion
        break;
    case 6:
    #region  медитация и призыв
    t++;
    
    switch(t)
    {
        case 1:sprite_index = spr_boss_dp_summon;image_index = 0;image_speed = 0;break;
        case 5:image_index = 1;break;
        case 10:image_index = 2;break;
        case 15:image_index = 3;break;
        case 20:image_index = 4;break;
        case 50:image_index = 5;break;
        case 55:image_index = 4;break;
        case 100:image_index = 5;break;
        case 105:image_index = 4;break;
        case 140:image_index = 5;break;
        case 145:image_index = 4;break;    
        case 150:
        if obj_boss_dp_light_block.state = 0
        {
            if obj_trigger_block_trigger_dp_boss_l.state = 0 obj_trigger_block_trigger_dp_boss_l.state = 1 else
            {
                if obj_trigger_block_trigger_dp_boss_r.state = 0 obj_trigger_block_trigger_dp_boss_r.state = 1;   
            }
        }
            break;
        case 180:image_index = 3;
        case 185:image_index = 2;
        case 190:image_index = 1;
        case 195:image_index = 0;
        case 200:
            t =0;
            state = 7;
            break;
    }
    if t = 50 && instance_exists(obj_Player)
    {
        if obj_Player.x > room_width/2 
        {
            instance_create_depth(64,240,-1,obj_molded_small_fastfly);
        }  else instance_create_depth(416,240,-1,obj_molded_small_fastfly);
    }
    if  t = 100 && instance_exists(obj_Player)
    {
        if obj_Player.x > room_width/2 
        {
            instance_create_depth(64,192,-1,obj_molded_small_fastfly);
        }  else instance_create_depth(416,192,-1,obj_molded_small_fastfly);
    }
    if  t = 150 && instance_exists(obj_Player)
    {
        if obj_Player.x > room_width/2 
        {
            instance_create_depth(64,144,-1,obj_molded_small_fastfly);
        }  else instance_create_depth(416,144,-1,obj_molded_small_fastfly);
    }
    #endregion
        break;
    case 7:
    #region ожидание и исчезновенике
    t++;
    image_speed = 1;
    sprite_index = spr_boss_dp_idle;
    if t= 50
    {
        t = 0;
        state = 8;
    }
    #endregion
        break;
    case 8:
    #region уход
    t++;
    switch(t)
    {
        case 1:
            sprite_index = spr_boss_dp_appear;
            image_index = 7;
            image_speed = 0;
            break;
            case 5:image_index = 6;break;
            case 10:image_index = 5;break;
            case 15:image_index = 4;break;
            case 20:image_index = 3;break;
            case 25:image_index = 2;break;
            case 30:image_index = 1;break;
            case 35:image_index = 0;break;
            case 40:
            can_hit_light = 0;
            t = 0;
            state = 0; 
            break;
    }
    #endregion    
        break;
    case 9:
    #region облучение
    t++;
    sprite_index = spr_boss_dp_getlight;image_speed = 1;break;
    if t = 300
    {
        t = 0;
        state = 8;
        can_hit_light = 1;
    }
    #endregion
        break;
}

#region столкновение со светом
#region столкновение со светом
if place_meeting(x,y,obj_boss_jp_light) && can_hit_light = 1
{
    fnc_snd_play_onetime(snd_follower_getlight);
    #region отключение света
    if obj_boss_dp_light_block.state != 0 {obj_boss_dp_light_block.state = 3;obj_boss_dp_light_block.t = 0; }
    #endregion
    speed = 0;
    state = 9;
    t = 0;
    can_hit_light = 0;   
}
#endregion
#endregion

#region получение урона

#region от атак

#region  от добиваний
if delay > 0 
{
    delay -=0.5;   
}
if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_hit();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_down();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_forward();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_up();  
}
#endregion

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= dmg_multiplier;
        if obj_Player.x < x 
        {
        	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    }   
}

if place_meeting(x,y,obj_hitbox_mask_dash) // && hit_cd = 0
{   
    hit_timer = 1;
    enemy_hp -= dmg_multiplier;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_dark_blood_forward()
    hit_cd = 1;
}

if place_meeting(x,y,obj_hitbox_mask_hook) && hit_cd = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -3.2;
        }   
        fnc_molded_dark_blood_forward();
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= dmg_multiplier;
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);       
    }   
}

#endregion



#region множитель урона
if state = 9
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD
    if hit_cd != 0
    {
        hit_cd ++;   
    }
    if hit_cd = 10
    {
        hit_cd = 0;   
    }
    
#endregion

#endregion 

#region смерть

if enemy_hp <= 0
{
    if instance_exists(obj_molded_small_fastfly) instance_destroy(obj_molded_small_fastfly);
    if instance_exists(obj_fastfly_molded) instance_destroy(obj_fastfly_molded);
    if instance_exists(obj_follower_desert_ph2_laser_projectile) instance_destroy(obj_follower_desert_ph2_laser_projectile);
    var d = instance_create_depth(x,y,depth,obj_boss_dp_phase3_death);
    d.image_xscale = image_xscale;
    instance_destroy(obj_boss_dp_mold_create)
    instance_destroy();
}
#endregion