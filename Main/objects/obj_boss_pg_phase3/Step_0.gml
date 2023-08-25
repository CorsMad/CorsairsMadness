/// @description Insert description here
// You can write your code in this editor

/*
0 - ожидание
1 - подлет к середине
2 - атака вокруг серией зеленых
3 - 2 взрыва вокруг себя
4 - 4 выстрела в игрока и отлет в сторону от игрока
5 - выстрел в игрока серией зеленых и заново
6 - свет
*/

#region Действия

switch(state)
{
    case 0: // ожидание
        t++;
        if t = 50
        {
            t = 0;
            state = 1;
        }
        break;
    case 1: // подлет к середине
        if (point_distance(x, y, 240, 288) > 3)
            {
                move_towards_point(240, 288, 3);   
            }
            else {
                speed = 0;
                state = 2;
                t = 90
                if obj_Player.x > x 
                {
                    side = 1 
                    t = 90
                } else 
                {
                    t=-90
                    side = -1   
                }
            }
        break;
    case 2: // атака вокруг серией зеленых
        t+=1;
        if t mod 10 = 0 
        {   
            fnc_snd_play_over(snd_boss2_fire);
            var b = instance_create_depth(x,y,depth-1,obj_boss_pg_phase3_proj)   
            b.direction = side*t;
        }
        switch(side)
        {
            case -1:    if t = -90+359 {t=0;state = 3;}break;                               
            case 1:     if t = 90+359 {t=0;state = 3;}break;
        }
        break;
    case 3: // 2 взрыва вокруг себя
        t++;
        if t = 100 || t= 150 || t = 250
        {
            instance_create_depth(x,y,depth,obj_boss_pg_phase3_aoe)  
        }
        if t = 250
        {
            t = 0;
            state = 4;
        }
        break;
    case 4: // 4 выстрела в игрока и отлет в сторону от игрока
        t++;
        if t = 50|| t = 60 || t = 70 || t = 90
        {
            instance_create_depth(x,y-32,depth-1,obj_boss_pg_phase1_laser);   
        }
        if t = 100
        {
            if instance_exists(obj_Player)   
            {
                if obj_Player.x < x dir = 1; else dir = -1;
            }
            t = 0;
            state = 5;
        }
        break;
    case 5: // выстрел в игрока серией зеленых и заново
    switch(dir)
    {
        case -1:
            if x > 64 x-=3;
            if x <=64
            {
                t++;
                if t = 50 || t = 60 || t = 70
                {
                    instance_create_depth(x,y,depth,obj_boss_pg_phase3_laser)   
                }
                if t = 100
                {
                    t = 0;   
                    state = 0;
                }
            }
            break;
        case 1:
            if x < 416 x+=3;
            if x >=416
            {
                t++;
                if t = 50 || t = 60 || t = 70
                {
                    instance_create_depth(x,y,depth,obj_boss_pg_phase3_laser)   
                }
                if t = 100
                {
                    t = 0;   
                    state = 0;
                }
            }
            break;
    }
        break;
    case 6: // свет
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