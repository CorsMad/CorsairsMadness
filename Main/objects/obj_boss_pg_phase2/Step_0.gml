/// @description Insert description here
// You can write your code in this editor

/*
-1 ожидание
0 - подлет к игроку
1 - дэш в игрока
2 - остановка + 3 выстрела
3 - полет в игрока
4 - остановка + взрыв
5 - возврат назад
6 - свет
*/

#region Действия
switch(state)
{
    case -1: //
        t++;
        if t =50
        {
            if instance_exists(obj_Player)
            {
                if obj_Player.x > x side =-1; else side = 1;   
            }
            t = 0;
            state = 0;        
        }
        break;
    case 0: // подлет к игроку
        t++;
        if t >= 200//200
        {            
            magnet = 0;
            t = 0;
            state = 0.5;
            speed = 0;            
        }
        if instance_exists(obj_Player)
        {
            if (point_distance(x, y, obj_Player.x+sign(side)*80, obj_Player.y-16) > 3 && magnet = 0)
            {
                move_towards_point(obj_Player.x+sign(side)*80, obj_Player.y-16, 3);   
            }
            else {
                magnet = 1;
                speed = 0;
                x = lerp(x,obj_Player.x+sign(side)*80,0.1);
                y = lerp(y,obj_Player.y-16,0.1);
            }
        }
        break;
    case 0.5:
        t++ 
        speed =0;
        if t = 50 {
            if instance_exists(obj_Player)
            {
                pl_x = obj_Player.x;
                pl_y = obj_Player.y-16;
            }   
        }
        if t = 100
        {
            t = 0;
            state = 1;
        }
        break;
    case 1: // дэш в игрока
            if point_distance(x, y, pl_x, pl_y) > 5 && stop = 0
            {
                move_towards_point(pl_x, pl_y, 5);
            }
            else {stop = 1;}
            if (stop = 1 && abs(speed) > 0) speed -=0.25;
            if speed < 0.25
            {
                t++; 
                if t = 60
                {
                    t= 0;
                    state = 2;
                    speed = 0;  
                    stop = 0;
                }
            }
        break;
    case 2: // остановка + 3 выстрела
        t++;
        if t = 50|| t = 60 || t = 70
        {
            instance_create_depth(x,y-32,depth-1,obj_boss_pg_phase1_laser);   
        }
        if t = 100
        {
            t = 0; 
            state = 3;
            if instance_exists(obj_Player)
            {
                pl_x = obj_Player.x;
                pl_y = obj_Player.y-16;
            }
        }
        break;
    case 3: // полет в игрока
            if point_distance(x, y, pl_x, pl_y) > 5 && stop = 0
            {
                move_towards_point(pl_x, pl_y, 5);
            }
            else {stop = 1;}
            if (stop = 1 && abs(speed) > 0) speed -=0.25;  
            if speed < 0.25
            {
                t++; 
                if t = 60
                {
                    t= 0;
                    state = 4;
                    speed = 0;   
                }
            }
        break;
    case 4: // остановка + взрыв
        t++;
        stop = 0;
        if t = 100 
        {
            instance_create_depth(x,y,depth-1,obj_boss_pg_phase1_aoe);   
        }
        if t = 150
        {
            t = 0;
            state = -1;
        }
        break;

    case 6: // свет
        magnet = 0;
        t++;
        stop = 0;
        speed = 0;
        if t = 300
        {
            t = 0;
            state = 0;
        } 
        break;
}
#endregion

#region Получение урона
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

#endregion

#region множитель урона
if state = 7
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD 
    if hit_cd != 0 hit_cd ++;   
    if hit_cd = 10 hit_cd = 0;
    if hit_cd = 10
   if t_red !=0 {t_red++;image_blend = c_red};
   if t_red = 5 {t_red=0;image_blenc = c_white};
    
#endregion
#endregion

#region смерть
if enemy_hp<=0
{
    var d = instance_create_depth(x,y,depth,obj_boss_pg_phase2_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion