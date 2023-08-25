/// @description Insert description here
// You can write your code in this editor

/*
0 начало
1 - перемещение + выстрелы
2 - остановка для удара вокруг себя
3 - подпал под свет
*/

switch(pos)
{
    case 0:hspeed = -spd;vspeed = 0;
        if x < 64 {x = 64; pos = 1;}                                              
        break;
    case 1:hspeed = 0;vspeed = -spd;
        if y < 112 {y = 112;pos = 2;}              
        break;
    case 2:hspeed = spd;vspeed = 0;
        if x > 416 {x = 416;pos = 3;}
        break;
    case 3:hspeed = 0;vspeed = spd;
        if y > 464 {y = 464;pos = 0;}
        break;        
}

#region Действия

switch(state)
{
    case 0: // перемещение + выстрелы
        if spd < 1 spd+=0.05;
        if (hit_stored > 15 && t < 200 ) {state = 1;t=0;}  
        #region атака
        t++;
        if t = 250 || t = 260 || t = 270
        {
            instance_create_depth(x,y-32,depth-1,obj_boss_pg_phase1_laser);
        }
        if t = 300 t = 0;
        #endregion
        break;
    case 1: // остановка для удара вокруг себя
        if spd > 0 spd-=0.05;
        t++;
        if t = 100 
        {
            instance_create_depth(x,y,depth-1,obj_boss_pg_phase1_aoe)   
        }
        if t = 150
        {
            t = 0;
            state = 0;
            hit_stored = 0;
        }
        break;
    case 2: //подпал под свет 
        t = 0;
        if spd > 0 spd-=0.05;
        t++;
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
    hit_stored+=1;
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
    hit_stored+=1;
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
    hit_stored+=1;
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
    hit_stored+=1;
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
        hit_stored+=1;
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
    hit_stored+=1;
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
if state = 2
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
    var d = instance_create_depth(x,y,depth,obj_boss_pg_phase1_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion