/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

/*
0 - ожидание
1 - выстрел из винтовки
2 - серия выстрелов из пистолета в игрока
3 - выстрел рикошетом
4 - удар винтовкой вблизи
5 - перепрыг
6 - стан от свет
7 - отпрыг от середины
*/

#region Игрок рядом
    if (abs(obj_Player.x-x) < 180 && player_near = 0 && state = 0) player_near = 1
    if (player_near = 1 && player_near < 210) player_near_timer ++;
#endregion

switch(state)
{
    case 0:
    #region ожидание
    t++;
    if t = 50
    {
        t = 0;
        if player_near_timer > 200
        {
            state = 5;
            t = 0;
            player_near_timer = 0;
            player_near = 0;
        } else 
        {
            if abs(obj_Player.x-x) > 256 {state = 1;t=0};  
            if abs(obj_Player.x-x) <= 256 && abs(obj_Player.x-x) > 80 {t=0;state = 2; } 
            if abs(obj_Player.x-x) <= 80 {t=0;state = 4;}  
        }
    }
    #endregion
    break;
    case 1:
    #region выстрел из винтовки
    t++;
    if t = 150
    {
        //выстрел   
    }
    t = 200
    {
        t = 0;
        state = 0;   
    }
    #endregion
    break;
    case 2:
    #region серия выстрелов из пистолета в игрока
    t++;
    if t = 50 || 75 || 100
    {
        // выстрел из пистолета   
    }
    if t = 150
    {
        t = 0;state = 0;   
    }
    #endregion
    break;
    case 3:
    #region выстрел рикошетом
    t++;
    if t = 50
    {   
        //выстрел рикошетом
    }
    if t=  100
    {
        t = 0;
        state = 0;
    }
    #endregion
    break;
    case 4:
    #region удар винтовкой вблизи
    t++;
    if t = 50
    {
        //удар винтовкой   
    }
    if t = 100
    {
        t = 0;
        state = 0;
    }
    #endregion
    break;
    case 5:
    #region перепрыг
    t++;
    if t = 50
    {
         if x > room_width/2 hspd = -9.5; else hspd = 9.5;
         vspd = -5;
    }
    if !place_meeting(x,y+1,obj_block){
        vspd+=0.1   
    }
    if place_meeting(x,y+1,obj_block) && t > 55
    {   
        t = 0;
        state = 0;
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
    var d = instance_create_depth(x,y,depth,obj_boss_pl_phase1_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion