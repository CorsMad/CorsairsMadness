/// @description Insert description here
// You can write your code in this editor

/*
0 - появление1
1 - ожидание и выстрел
2 - ожидание и уход
3 - появление в одном из углов
4 - полет в игрока
5 - ожидание
6 - медитация и призыв 3 летающих красных
7 - ожидание
8 - уход
9 - попадание под свет
10 - смерть
*/

switch(state)
{
    case 0:
    #region появление
    
        switch(place)
        {
            case 0:
                x = 80;
                y = 176;
                image_xscale = 1;
                break;
            case 1:
                x = 400;
                y = 176;
                image_xscale = -1;
                break;
        }
        t++;
        switch(t)
        {
            case 1: sprite_index = spr_boss_dp_appear;fnc_snd_play_onetime(snd_desert_follower_tp);image_index = 0;break;  
            case 5: image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            case 40:
            t = 0;
            can_hit_light = 1
            state = 1;
            break;
        }   

    #endregion
        break;
    case 1:
    #region ожидание и выстрел
    t++;
    
        
        switch(t)
        {
            case 1:image_index = 0;image_speed = 0;sprite_index = spr_boss_dp_lasershot_usual;break;
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            case 40:image_index = 8;break;
            case 45:image_index = 7;break;
            case 50:image_index = 8;break;
            case 55:image_index = 7;break;
            case 60:image_index = 8;break;
            case 65:image_index = 9;break;
            case 70:
                image_index = 10;
                instance_create_depth(x-image_xscale*18,y,depth-1,obj_follower_grounded_laser_projectile);
                break;
            case 75:image_index = 10;break;
            case 80:image_index = 11;break;
            case 85:image_index = 12;break;
            case 90:image_index = 13;break;
            case 95:
                sprite_index = spr_boss_dp_idle;
                image_speed = 1;
                break;
            case 150:
                t = 0;
                state = 2;
                attackcount+=1;
                if place = 0 place = 1 else place = 0
                break;
                
        }
    #endregion
        break;
    case 2:
    #region ожидание и уход
    t++;
    switch(t)
    {
        case 35: 
            fnc_snd_play_onetime(snd_desert_follower_tp);
            sprite_index = spr_boss_dp_appear;
            image_speed = 0;
            image_index = 7;
            break;
        case 40:image_index = 6;break;
        case 45:image_index = 5;break;
        case 50:image_index = 4;break;
        case 55:image_index = 3;break;
        case 60:image_index = 2;break;
        case 65:image_index = 1;break;
        case 70:image_index = 0;break;
        case 75:
            t=0;
            if  attackcount>=3
            {
                can_hit_light = 0;
                attackcount = 0;
                x = choose(64,416);
                y = 64;
                state = 3;            
            } else state = 0;
            break;
    }
    #endregion
        break;
    case 3:
    #region появление в одном из углов
    t++;
        switch(t)
        {
            case 1: image_index = 0;sprite_index = spr_boss_dp_appear;fnc_snd_play_onetime(snd_desert_follower_tp);image_speed = 0;break;  
            case 5: image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            case 40:
                can_hit_light = 1; 
                break;
            case 45:image_index = 0;sprite_index = spr_boss_dp_dash;break;
            case 50:image_index = 1;fnc_snd_play_over(snd_desert_follower_aoeattack);break;
            case 55:image_index = 2;break;
            case 60:image_index = 3;break;
            case 65:image_index = 4;break;
            case 70:image_index = 5;
                var aoe = instance_create_depth(x,y,depth,obj_boss_dp_aoe);
                aoe.fol = id;
                break;
            case 75:image_index = 6;break;
            case 100:
                t = 0;
                if instance_exists(obj_Player)
                {
                    playerpoint_x = obj_Player.x;
                    playerpoint_y = obj_Player.y-24;   
                }
                state = 4;
                fnc_snd_play_over(snd_desert_follower_flyaoe);
                break;    
        }   
    
    #endregion
        break;
    case 4:
    #region полет в игрока
    if point_distance(x, y, playerpoint_x, playerpoint_y) > 4
    {
        move_towards_point(playerpoint_x, playerpoint_y, 4);
    }
    else 
    {
        x = playerpoint_x;
        y = playerpoint_y;
        speed = 0; 
        state = 5;
        t=0;
    }
    #endregion
        break;
    case 5:
    #region ожидание
    t++;
    switch(t)
    {
        case 1: image_index = 6;break;   
        case 5: image_index = 5;break;   
        case 10: image_index = 4;break;   
        case 15: image_index = 3;break;   
        case 20: image_index = 2;break;   
        case 25: image_index = 1;break;   
        case 30: image_index = 0;break;  
        case 35:
            t = 0;
            state = 6;
            break;
    }
    #endregion
        break;
    case 6:
    #region  медитация и призыв
    t++;
    switch(t)
    {
        case 1:sprite_index = spr_boss_dp_summon;image_index = 0;break;
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
    #region ожидание
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
            fnc_snd_play_onetime(snd_desert_follower_tp);
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
    fnc_superattack_gain_specattack();
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
    fnc_superattack_gain_specattack();
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
    fnc_superattack_gain_specattack();
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
    fnc_superattack_gain_specattack();
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
        fnc_superattack_gain_attack_dash();
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
    fnc_superattack_gain_attack_dash();
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

#region множитель урона
if state = 9
{
    dmg_multiplier = 4;
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
    if obj_boss_dp_light_block.state != 0 {obj_boss_dp_light_block.state = 3;obj_boss_dp_light_block.t = 0; }
    if obj_trigger_block_trigger_dp_boss_l.state!= 0 obj_trigger_block_trigger_dp_boss_l.state = 3;
    if obj_trigger_block_trigger_dp_boss_r.state!= 0 obj_trigger_block_trigger_dp_boss_r.state = 3;
    if instance_exists(obj_molded_small_fastfly) instance_destroy(obj_molded_small_fastfly);
    if instance_exists(obj_fastfly_molded) instance_destroy(obj_fastfly_molded);
    var d = instance_create_depth(x,y,depth,obj_boss_dp_phase1_death);
    d.image_xscale = image_xscale;
    instance_destroy(obj_boss_dp_mold_create);
    instance_destroy();
}
#endregion