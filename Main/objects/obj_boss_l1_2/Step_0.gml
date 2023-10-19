/// @description Insert description here
// You can write your code in this editor
/*
0 - ожидание
1 - полет влево
2 - полет вправо
3 - полет на середину
4 - ожидание
5 - полет вниз
6 - ожидание
7 - рековер
8 - подъем -> 1

*/

#region передвижение

if (state = 0) { // ожидание
    sprite_index = spr_boss_l1_phase2_idle;
    image_speed = 1;
    t++;
    if t = 50
    {
    t = 0;
    state = 1;   
    }
}
                
if (state = 1) { // полет влево
    sprite_index = spr_boss_l1_phase2_move;
    image_xscale = 1;
    x -= 1;
    if x <= 64
    {
        state = 2;
    }    
}
                
if (state = 2) { // полет вправо
    sprite_index = spr_boss_l1_phase2_move;
    image_xscale = -1;
    x+=1;
    if x >= 416
    {
        state = 3;   
    }
}
                
if (state = 3) { // полет на середину
    sprite_index = spr_boss_l1_phase2_move;
    image_xscale = 1;
    x-=1;
    if x <= 240
    {
        x = 240;
        state = 4;
        sprite_index = spr_boss_l1_phase2_idle;
        image_speed = 1;
    }
}
                
if (state = 4) { // ожидание    
    t++;
    switch(t)
    {
        case 50:    
            image_speed = 0;   
            sprite_index = spr_boss_l1_phase2_prepare_to_strike;
            image_index = 0;
            break;
        case 60:    image_index = 1;break;
        case 70:    image_index = 2;break;
        case 100: 
            t = 0;
            state = 5;  
            sprite_index = spr_boss_l1_phase2_strike_down;
            break;
            
    }
}
                 
if (state = 5) { // полет вниз
    y+=5;
    if y>=211
    {
        fnc_snd_play_onetime(snd_follower_ground_hit);
        var l = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
        var r = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
        l.hspd = -2;
        r.hspd = 3;
        y = 211;
        t = 0 ;
        state = 6;
        instance_create_depth(x,256,depth-1,obj_sfx4);
        sprite_index = spr_boss_l1_phase2_faint;
        image_speed = 1;
    }
}
    
if (state = 6) { // Ожидание
    t++;
    if t = 100
    {
        t = 0;
        state = 7;
        sprite_index = spr_boss_l1_phase2_recover;
        image_speed = 0;
        image_index = 0;
    }
}    

if (state = 7) { // Рековер
    t++;
    switch(t)
    {
        case 40:    image_index = 1;break;   
        case 50:    image_index = 2;break;   
        case 60:    image_index = 3;break;     
        case 70:    t=0;state = 8;sprite_index = spr_boss_l1_phase2_goingup;image_speed =1;break;   
    }
}

if (state = 8) { // Полет вверх
    y-=3;    
    if y <= 128
    {
        y = 128;
        t = 0;state = 0;
    }   
}


    
#endregion    

#region атака

if state = 1 || state = 2 || state = 3
{
    t_attack++;
    if t_attack = 150
    {
        t_attack = 0;
        instance_create_depth(x,y,depth,obj_boss_d2_proj_down_waves_creator);
    }
    
} else t_attack = 0;
#endregion

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

#region death

if enemy_hp <=0 
{
    instance_create_depth(x,y,depth,obj_boss_l1_2_death);
    instance_destroy();
}
#endregion