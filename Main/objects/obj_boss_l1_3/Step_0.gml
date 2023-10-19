/// @description Insert description here
// You can write your code in this editor

/*
0 - начало
1 - появление лазеров
2 - движение влево чуть
3 - остановка
4 - движение вправо на середина+1/2
5 - остановка
6 - полет в центр
7 - ожидание
8 - удары по верху
9 - ожидание -> 1

10 - падение вниз
11 - восстанвление
12 - подлет вверх
13 - ожидание -> 1

*/

if (state = 0) { // начало
    t++;
    if t = 50
    {
        state = 1;
        t = 0 ;
        sprite_index = spr_boss_l1_phase3_prepare_to_laser;
        image_speed = 0;
    }
}
    
if (state = 1) { // Появление лазеровmm
    t++;
    switch(t)
    {
        case 10:image_index = 1;break;   
        case 20:image_index = 2;break;   
        case 30:image_index = 3;break;   
        case 40:image_index = 4;break;   
        case 50:image_index = 5;break;
        case 60: 
            sprite_index = spr_boss_l1_phase3_laser_idle;
            image_speed = 1;
            break;
    }
    if t = 50
    {
        var r = instance_create_depth(x+46,y-24,depth-1,obj_boss_l1_laserbeam_start);
        r.pos = 1;
        var l = instance_create_depth(x-46,y-24,depth-1,obj_boss_l1_laserbeam_start);
        l.pos = -1;
    }
    
    if t = 300 
    {
        t = 0;
        state = 2;
        sprite_index = spr_boss_l1_phase3_laser_left;
    }
}

if (state = 2) { // движение влево чуть чуть
    x+=spd;
    if spd > -1.5 spd-=0.05;
    if x <= 64
    {
        spd = 0;
        x = 64;
        state = 3;
        sprite_index = spr_boss_l1_phase3_laser_idle;
    }
}

if (state = 3) { // ожидание
    t++;
    if t = 25
    {
        t = 0;
        state = 4;
        sprite_index = spr_boss_l1_phase3_laser_left;
        image_xscale = -1;
        
    }
}

if (state = 4) { // движение вправо на середина    
    x+=spd;
    if spd < 1.5 spd+=0.05;
    if x >= 480-64
    {
        spd = 0;
        x = 480-64;
        state = 5;
        sprite_index = spr_boss_l1_phase3_laser_idle;
    }
}
    
if (state = 5) { // остановка
    t++;
    if t = 25
    {
        t = 0;
        state = 6;
        sprite_index = spr_boss_l1_phase3_laser_left;
        image_xscale = 1;
    }
}
    
if (state = 6) { // полет в центр
    x+=spd;
    if spd > -1.5 spd-=0.05;
    if x <= 240
    {
        spd = 0;
        x = 250;
        state = 7;
        sprite_index = spr_boss_l1_phase3_prepare_to_laser;
        image_index = 4;
        image_speed = 0;
        if instance_exists(obj_boss_l1_laserbeam)
        {
            obj_boss_l1_laserbeam.state = 2;   
        }
        if instance_exists(obj_boss_l1_laserbeam_aoe)
        {
            instance_destroy(obj_boss_l1_laserbeam_aoe);
        }
    }
}    
    
if (state = 7) { // Ожидание 
    t++;
    switch(t)
    {
        case 5: image_index = 3;break;   
        case 10: image_index = 2;break;   
        case 15: image_index = 1;break;   
        case 20: image_index = 0;break;   
        case 25:
            sprite_index = spr_boss_l1_phase3_idle;
            image_speed =1;
            break;
        case 100:
            t = 0;
            state = 8;
            sprite_index = spr_boss_l1_phase3_hit_up;
            image_index = 0;
            image_speed = 0;
            t_anim = 0;
            break;   
    }
}    
    
if (state = 8) { // Ужар по верху
    image_speed = 0;
    t_anim++;
    if t_anim mod 5 = 0
    {
        if image_index = 5 {
            if instance_exists(obj_cutscene_l1_boss_screenshake){
                obj_cutscene_l1_boss_screenshake.state = 1;   
            }
            instance_create_depth(x-24,y-40,depth-1,obj_sfx_dust_expl_small);
            fnc_snd_play_onetime(snd_boss_expl);
        }
        if image_index = 9 {
            if instance_exists(obj_cutscene_l1_boss_screenshake){
                obj_cutscene_l1_boss_screenshake.state = 1;   
            }
            fnc_snd_play_onetime(snd_boss_expl);
            instance_create_depth(x+32,y-40,depth-1,obj_sfx_dust_expl_small)
        }
        
        image_index+=1;
        
        if image_index > 11 image_index = 3
    }
    
    if t < 401 t++;
    
    switch(t)
    {       
        case 100:
        var fo = instance_create_depth(160,0,101,obj_boss_d2_proj_falling_obj);
        fo.vspd = 1;
        break;
        case 150:
        instance_create_depth(64,0,101,obj_boss_d2_proj_falling_obj);
        break;
        case 200:
        instance_create_depth(380,0,101,obj_boss_d2_proj_falling_obj);
        break;
        case 250:
        instance_create_depth(240,0,101,obj_boss_d2_proj_falling_obj);
        break;
        case 300:
        instance_create_depth(370,0,101,obj_boss_d2_proj_falling_obj);
        break;
        case 350:
        instance_create_depth(96,0,101,obj_boss_d2_proj_falling_obj);
        break;
        
        //анимации и появление предметов   
    }
    
    if t >= 400
    {
        if !instance_exists(obj_boss_d2_proj_falling_obj)   
        {
            state = 9;
            t = 0;
            sprite_index = spr_boss_l1_phase3_idle;
            image_index =0 ;
            
        }
    }    
}    

if (state = 9) { // Ожидание перед началом
    image_speed = 1;
    t++;
    if t = 100
    {
        t = 0;   
        state = 1;
    }
}

#region Получениу урона

#region Падение от предметов
if item_hit >=3 && state < 10
{
    state = 10;   
    t = 0;
    sprite_index = spr_boss_l1_phase3_falldown;
    image_speed = 1;
    if instance_exists(obj_boss_d2_proj_falling_obj)
    {
        instance_create_depth(obj_boss_d2_proj_falling_obj.x,obj_boss_d2_proj_falling_obj.y,obj_boss_d2_proj_falling_obj.depth-1,obj_sfx_weapon_slash)
        instance_destroy(obj_boss_d2_proj_falling_obj);        
    }
    
}
#endregion


if (state = 10) { // Падение
    y+=2;
    if y >= 256-26 
    {
        fnc_snd_play_onetime(snd_follower_ground_hit);
        var l = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
        var r = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
        l.hspd = -2;
        r.hspd = 3;
        y = 256-12;
        instance_create_depth(x,256,depth-1,obj_sfx4);
        state = 11;
    }
}

if (state = 11) {
    sprite_index = spr_boss_l1_phase3_faint;
    image_speed = 1;
}
    
#region TakeDMg
// получение урона
    	 
     // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,0)

// Получение урона

    fnc_enemy_no_armor_dmg();
#endregion    
    
#region смерть
if enemy_hp<=0
{
    instance_create_depth(x,y,depth,obj_boss_l1_3_death);
    instance_destroy();   
}
#endregion
 
#endregion
