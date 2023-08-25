/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

/*
0 - появление
1 - ожидание
2 - выстрел из винтовки
3 - выстрелы пистолетом
4 - отпрыг и полет // выстрелы из пистолета, выстрелы рикошетом
5 - призмеление + несколько выстрелов из рикошета
6 - стан от света
7 - отпрыг от середины
*/

#region Игрок рядом
    if (abs(obj_Player.x-x) < 180 && player_near = 0 && state = 1) player_near = 1
    if (player_near = 1 && player_near < 210) player_near_timer ++;
#endregion

switch(state)
{
    case 0:
    #region появление
    t++;
    if t = 50 {t =0;state = 1;}
    #endregion
    break;
    case 1:
    #region ожидание
    t++;
    if t = 50
    {
    t = 0;
    if player_near_timer > 200
    {
        state = 4;
        t = 0;
        vspd = -4;
        player_near_timer = 0;
        player_near = 0;
    } else 
        {
            if abs(obj_Player.x-x) > 256  state = 2;;  
            if abs(obj_Player.x-x) <= 256 state = 3;;  
        }
    }
    #endregion
    break;
    case 2:
    #region выстрел из винтовки
    t++;
    if t = 150
    {
        //выстрел   
    }
    if t = 200
    {
        t = 0;
        state = 1;   
    }
    #endregion
    break;
    case 3:
    #region серия выстрелов из пистолета в игрока
    t++;
    if t = 50 || 75 || 100
    {
        // выстрел из пистолета   
    }
    if t = 150
    {
        t = 0;state = 1;   
    }
    #endregion
    break;
    case 4:
    #region отпрыг и полет // выстрелы из пистолета, выстрелы рикошетом
    switch(pos)
    {
        case 0:
        vspd = lerp(vspd,0,0.1);
        if abs(vspd) <= 0.01 {
            vspd = 0;
            if x < room_width/2 hspd = 2; else hspd = -2
            pos = 1;
        }
            break;
        case 1:
            t++;   
            if hspd>0
            {
                if x < room_width/2 
                {
                    if t mod 20 = 0 {}//выстрел   
                } else 
                {
                    if t mod 50 = 0 {}// выстрел рикошет   
                }
                if place_meeting(x+1,y,obj_block) {hspd = 0;state = 5;pos = 0;}
            }
            if hspd>0
            {
                if x > room_width/2 
                {
                    if t mod 20 = 0 {}//выстрел   
                } else 
                {
                    if t mod 50 = 0 {}// выстрел рикошет   
                }
                if place_meeting(x-1,y,obj_block) {hspd = 0;state = 5;pos = 0;}
            }        
    }
    
    #endregion
    break;
    case 5:
    #region призмеление + несколько выстрелов из винтовки и выстрел из рикошета
    t++;
    if t > 10 
    {
        vspd+=0.2;
    }
    if place_meeting(x,y+1,obj_block)
    {
        vspd = 0;
        hspd = 0;
        t = 0;
        state = 1;
    }
    #endregion
    break;
    case 6:
    #region стан от свет
    hspd = 0;
    vspd+=0.2;
    if place_meeting(x,y+1,obj_block) t++;
    if t = 200
    {
        t = 0;
        if instance_exists(obj_Player)
        {
            if obj_Player.x > room_width/2  hspd = -7 else hspd = 7;
        }
        vspd = -5;
        state = 7;
    }
    
    #endregion
    break;
    case 7:
    #region отпрыг от середины
    vspd+=0.1;
    if place_meeting(x,y+1,obj_block)
    {
        state = 0;   
    }
    #endregion
    break;
}

#region взаимодействие с супердэш
if place_meeting(x,y,obj_Player)
{
    if obj_Player.isDead = 12
        {
            obj_Player.doublejumpspd = -obj_Player.image_xscale*6;        
            obj_Player.isDead = 0;
            obj_Player.superdash_power = 0;
            //obj_Player.superdash_timer_count = 0;
            obj_Player.vspd = -5;
            with(obj_Player)
            {
                if !place_meeting(x,y+1,obj_block)  y-=1;
            }
            on = 0;
        }
}
#endregion

#region получение урона

#region от атак

#region  от добиваний
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
    obj_Player.vspd = -2;
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
if state = 6
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
    var d = instance_create_depth(x,y,depth,obj_boss_pl_phase2_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion