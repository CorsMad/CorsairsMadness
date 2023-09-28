/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block);

/*
Атаки

0.1 ожидание начала
0.2 Ожидание

1. Призыв множества красных летающих противников

2. Дэш в сторону игрока

3. Удары по земле (вызов кольца и фонаря)

4. Выстрел из глаз сгустками в игрока

*/

/*
 Облучение - 10
*/

#region капельки
t_b++;
if t_b >=23
{
    t_b = 0;
    instance_create_depth(x+random_range(-8,8),y+random_range(-32,-16),depth+1,obj_follower_grounded_blob_bf);
}
#endregion

#region АТАКИ

#region Таймер появления хука
if t_hook < 1200 t_hook++;
#endregion

#region 0.1 ожидание начала
if state = 0.1
{
    sprite_index = spr_follower_grounded_idle;
    image_speed = 1;
    if obj_Player.x > x image_xscale = 1; else image_xscale = -1;   
    t++;
    if t = 50
    {
        t = 0;
        state = 2; // первый дэщ
    }
}
#endregion

#region 0.2 Ожидание
if state = 0.2
{
    sprite_index = spr_follower_grounded_idle;
    image_speed = 1;
    if obj_Player.x > x image_xscale = 1; else image_xscale = -1;   
    t++;
    if t = 50
    {
        switch(last_state)
        {
            case 1 :
                state = choose(2,3,4);
                break;
            case 2 :
                state = choose(1,3,4);
                break;
            case 3 :
                state = choose(1,2,4);
                break;
            case 4 :
                state = choose(1,2,3);
                break;
        }
        t = 0;
    }
}
#endregion

#region 1. Призыв множества красных летающих противников
if state = 1
{
    #region anim
    
    t_anim ++;
    switch(t_anim)
    {
        case 20:
            sprite_index = spr_follower_grounded_summon;
            image_speed = 0;
            image_index = 0;
            break;
        case 35:
            image_index = 1;
            break;
        case 40:
            image_index = 2;
            break;
        case 45:
            image_index = 3;
            break;
        case 50:
            image_index = 4;
            break;            
        case 60:
            image_index = 2;
            break;

        case 70:
            image_index = 4;
            break;
        case 80:
            image_index = 2;
            break;

        case 90:
            image_index = 4;
            break;
        case 125:
            image_index = 1;
            break;
    }
    
    #endregion
    
    t++;   
    switch(t)
    {
        case 50:
            instance_create_depth(obj_Player.x+choose(-64,64),obj_Player.y+choose(-32,-48,-64,-72,-96),depth-1,obj_molded_small_fastfly);
            break;
        case 70:
            instance_create_depth(obj_Player.x+choose(-64,64),obj_Player.y+choose(-32,-48,-64,-72,-96),depth-1,obj_molded_small_fastfly);
            break;
        case 90:
            instance_create_depth(obj_Player.x+choose(-64,64),obj_Player.y+choose(-32,-48,-64,-72,-96),depth-1,obj_molded_small_fastfly);
            break;
        case 130:   
            t = 0;
            state = 0.2;
            last_state = 1;
            t_anim = 0;
            break;
    }
}
#endregion

#region 2. Дэш в дальнюю сторону
if state = 2
{
    #region anim
    t_anim++;
    switch(t_anim)
    {
        case 1:
            fnc_snd_play_onetime(snd_follower_landing);
            break;
        case 10:
            sprite_index = spr_follower_grounded_dash;
            image_index = 1;
            image_speed = 0;
            break;
        case 15:
            image_index = 2;
            break;
        case 50:
            image_index = 3;
            break;
        case 60:
            image_index = 4;
            break;
    }
    #endregion
    t++;
    
    if t < 50
    {
        if x < room_width/2 image_xscale = 1 else image_xscale = -1;  
    }
    
    switch(t)
    {
         case 50: 
            var dm = instance_create_depth(x,y,depth,obj_boss_jp_dash_mask);
            dm.fol_obj = id;
            if x < room_width/2 hspd = 7; else
            if x >= room_width/2 hspd = -7; 
            image_xscale = sign(hspd);
            break;
    }
    if t > 50 && place_meeting(x-1,y,obj_block)
    {
        fnc_snd_play_onetime(snd_follower_ground_hit);
        state = 2.1;
        vspd = -4;
        hspd = 1;
        instance_create_depth(x+24*sign(image_xscale),y-32,depth-1,obj_sfx_dust_expl_big);
        t_anim = 0;
        t = 0;  
        y-=2;
        sprite_index = spr_follower_grounded_jump;  
        image_speed = 0;
        image_index = 0;
        last_state = 2;
    }
    if t > 50 && place_meeting(x+1,y,obj_block)
    {
        fnc_snd_play_onetime(snd_follower_ground_hit);
        state = 2.2;
        vspd = -4;
        hspd = -1;
        y-=2;
        instance_create_depth(x+24*sign(image_xscale),y-32,depth-1,obj_sfx_dust_expl_big);
        t_anim = 0;
        sprite_index = spr_follower_grounded_jump;  
        image_speed = 0;
        image_index = 0;
        t = 0;    
        last_state = 2;
    }
}

//Слева
if state = 2.1
{
    vspd+=0.2;
    if hspd!=0 hspd = lerp(hspd,0,0.05);
    if place_meeting(x,y+1,obj_block) 
    {
            sprite_index = spr_follower_grounded_landing; 
            t++;
    }
    switch(t)
    {
        case 6: 
            image_index = 1;   
            break;
        case 10:
            image_index = 2;
            break;
        case 15:
            t = 0;   
            vspd = 0;
            hspd = 0;
            state = 0.2;
            break;
    }
}

//Справа
if state = 2.2
{
    vspd+=0.2;
    if hspd!=0 hspd = lerp(hspd,0,0.05);
    if place_meeting(x,y+1,obj_block) 
    {
            sprite_index = spr_follower_grounded_landing; 
            t++;
    }
    switch(t)
    {
        case 6: 
            image_index = 1;   
            break;
        case 10:
            image_index = 2;
            break;
        case 15:
            t = 0;   
            vspd = 0;
            hspd = 0;
            state = 0.2;
            break;
    }
}


#endregion

#region 3. Удары по земле (вызов кольца и фонаря)

if state = 3
{
    #region anim
    t_anim++;
    switch(t_anim)
    {
        case 25:
            sprite_index = spr_follower_grounded_attack_slam;
            image_speed = 0;
            image_index = 0;
            break;
        case 30:
            image_index = 1;
            break;
        case 35:
            image_index = 2;
            break;
        case 50:
            image_index = 3;
            break;
        case 55:
            image_index = 4;
            break;
        case 80:
            image_index = 1;
            break;
        case 85:
            image_index = 2;
            break;
        case 100:
            image_index = 3;
            break;
        case 120:
            image_index = 1;
            break;
        case 125:
            image_index = 2;
            break;
        case 150:
            image_index = 3;
            break;
        case 170:
            image_index = 4;
            break;         
    }
    #endregion
    
    t++;
    switch(t)
    {
        case 50:
            var i = instance_create_depth(x,y,depth-1,obj_follower_grounded_slam_projectile);
            i.image_xscale = image_xscale;
            break;
        case 100:
            hook_choose = choose(0,1);
            var i = instance_create_depth(x,y,depth-1,obj_follower_grounded_slam_projectile);
            i.image_xscale = image_xscale;
            break;
        case 150:
            var i = instance_create_depth(x,y,depth-1,obj_follower_grounded_slam_projectile);
            i.image_xscale = image_xscale;
            if t_hook > 1100
            {
                
                if instance_exists(obj_bjoss3_hook_block_l_cr) && instance_exists(obj_bjoss3_hook_block_r_cr)   
                {
                    if obj_bjoss3_hook_block_l_cr.state = 0 && obj_bjoss3_hook_block_r_cr.state = 0
                    {
                        if (hook_choose = 0 && obj_boss_jp_light_block_r.state = 0) obj_bjoss3_hook_block_l_cr.state = 1 
                        if (hook_choose = 1 && obj_boss_jp_light_block_l.state = 0) obj_bjoss3_hook_block_r_cr.state = 1   
                    } else if obj_bjoss3_hook_block_l_cr.state = 2 && obj_bjoss3_hook_block_r_cr.state = 0 && obj_boss_jp_light_block_l.state = 0
                    {
                        obj_bjoss3_hook_block_r_cr.state = 1;   
                    } else if obj_bjoss3_hook_block_l_cr.state = 0 && obj_bjoss3_hook_block_r_cr.state = 2 && obj_boss_jp_light_block_r.state = 0
                    {
                        obj_bjoss3_hook_block_l_cr.state = 1;   
                    }
                }
            }
            break;
        case 180:
            state = 0.2;
            t = 0;
            t_anim = 0;
            last_state = 3;
            break;
    }
}
#endregion

#region 4. Выстрел из глаз сгустками в игрока

if state = 4
{
    #region anim 
    t_anim ++;
    switch(t_anim)
    {
        case 40:
            image_speed = 0 ;
            sprite_index = spr_follower_grounded_attack_laser;
            image_index = 0;
            break;
        case 45:
            image_index = 1;
            break;
        case 50:
            image_index = 2;
            break;
        case 240:
            image_index = 1;
            break;
    }
    
    if t < 50
    {
        if obj_Player.x > x image_xscale = 1; else image_xscale = -1;      
    }
    t++;
    switch(t)
    {
        case 50:
            if image_xscale = 1
            {
                instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);  
            } else  {
                        var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);
                        slm.image_xscale = -1;
                    } 
            break;
        case 100:
            if image_xscale = 1
            {
                instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);  
            } else  {
                        var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);
                        slm.image_xscale = -1;
                    } 
            break;
        case 150:
            if image_xscale = 1
            {
                instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);  
            } else  {
                        var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);
                        slm.image_xscale = -1;
                    } 
            break;
        case 250:
            t = 0;
            t_anim = 0;
            state = 0.2;
            last_state = 4;  
    }
}
#endregion

#endregion

#endregion

#region Облучение

if place_meeting(x,y,obj_boss_jp_light) && light_cd = 0
{
    
    fnc_snd_play_onetime(snd_follower_getlight);
    #region отключение света
    if obj_boss_jp_light_block_l.state != 0 {obj_boss_jp_light_block_l.state = 3;obj_boss_jp_light_block_l.t = 0; }
    if obj_boss_jp_light_block_r.state != 0 {obj_boss_jp_light_block_r.state = 3;obj_boss_jp_light_block_r.t = 0; }
    #endregion
    sprite_index = spr_follower_grounded_light_hit;
    image_index =0 ;
    instance_destroy(obj_follower_grounded_laser_vfx);
    state = 10;
    t = 0;
    hspd = 0;
    
    light_cd = 1;
}

if state = 10
{
    
    #region anim
    t_anim++;
    if t_anim > 10 && t_anim mod 5 = 0
    {
        if image_index = 2 image_index = 3; else image_index = 2;   
    }
    switch(t_anim)
    {
        case 1:    
            sprite_index = spr_follower_grounded_light_hit;
            image_speed = 0;
            image_index = 0;
            break;
        case 5:
            image_index = 1;
            break;
        case 10:
            image_index = 2;
            break;
    }
    #endregion
    
    light_cd ++;
    if light_cd = 300
    {
        t_anim = 0;
        light_cd = 0;
        state = 10.1;
    }
}

if state = 10.1
{
    #region anim
    t_anim++;
    switch(t_anim)
    {
        case 25:
            image_index = 1;
            break;
    }
    #endregion
    
    t++;  
    if t = 50
    {
        t_anim = 0;
        t = 0;
        state = 0.2;   
    }
}

#endregion

#region Кровка

if t_blood = 0
{
    if place_meeting(x,y,obj_hitbox_mask_finisher) fnc_molded_dark_blood_hit();
    if place_meeting(x,y,obj_hitbox_mask_finisher_down) fnc_molded_dark_blood_down()
    if place_meeting(x,y,obj_hitbox_mask_finisher_forward) fnc_molded_dark_blood_forward()
    if place_meeting(x,y,obj_hitbox_mask_finisher_up) fnc_molded_dark_blood_up()
    t_blood = 1
}
if t_blood!= 0 t_blood-=0.1;

#endregion

#region получение урона

#region  от добиваний
if delay > 0 
{
    delay -=0.5;   
}

if (place_meeting(x,y,obj_hitbox_mask_finisher) || place_meeting(x,y,obj_hitbox_mask_finisher_down) || 
    place_meeting(x,y,obj_hitbox_mask_finisher_forward) || place_meeting(x,y,obj_hitbox_mask_finisher_up)) && hit_cd = 0{
    hit_timer = 1;
    hit_cd = 1;
    fnc_molded_dark_blood_forward();
    fnc_molded_dark_blood_up()
    fnc_molded_dark_blood_down();
    fnc_superattack_gain_specattack();
    enemy_hp -= dmg_multiplier;
    if obj_Player.x < x 
    {
    	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
    } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);  
}

#endregion

#region от суперов
if hits_cd=0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) || place_meeting(x,y,obj_hitbox_mask_superattack_aoe)){
    hits_cd = 1;
    enemy_hp-=10;
    hit_cd = 1;
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_up()
    fnc_molded_dark_blood_up()
    if obj_Player.x < x 
    {
    	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
    } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);  
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_dark_blood_forward();
        fnc_molded_dark_blood_up();
        enemy_hp-=5;
    }
    
#endregion

#region от атак

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
if state = 10 || state = 10.1
{
    dmg_multiplier = 4 ;
} else dmg_multiplier = 1;   
#endregion

#region HitCD
  
if hit_cd!=0 hit_cd++;  
if hit_cd=10 hit_cd=0;  
  
if hits_cd!=0 hits_cd++;  
if hits_cd=10 hits_cd=0;  
  
#endregion

#endregion 

#region смерть

if enemy_hp <= 0
{
    instance_destroy();
    d = instance_create_depth(x,y,depth,obj_boss_jp_death3);
    d.image_xscale = image_xscale;
}
#endregion