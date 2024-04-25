/// @description Insert description here
// You can write your code in this editor

/*
1. Вылетает справа
2. ждет
3. Полет вниз + стрельба по прямой
4. Ждет
5. Полет вверх + стрельба в игрока
6. ждет и 3
7. Подрыв от бомбы + DIZZY
8. Очухивание и полет вверх
*/

x+=hspd;
y+=vspd;

#region Вылет слева

if state = 1
{
    sprite_index = spr_bossj2_idle;
    image_xscale = 1;
    hspd = -2;
    if x <= 440  
    {
        x = 440;
        hspd = 0;
        state = 2;
        
    }
}

#endregion

#region  Ожидание 1

if state = 2
{
    t++;
    if t = 60
    {
        image_index = 0;
        sprite_index = spr_bossj2_prepare_attack;   
    }
    if t = 240
    {
        state = 3;
        t = 0;
        image_index = 0;
        image_speed = 0;
    }
}

#endregion

#region  Полет вниз + стрельба по прямой

if state = 3
{
    image_speed = 0;
    sprite_index = spr_bossj2_fire_attack
    vspd = 0.5;
    t++;
    t_anim++;
    
    switch(t_anim)
        {
            case 2:  image_index = 0;break;
            case 6:  image_index = 1;break;
            case 10: image_index = 2;break;
            case 14: image_index = 3;break;
            case 20: image_index = 4;
					 fnc_snd_play_over(snd_boss2_fire);
                     instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb_left);  
                     break;
            case 22: image_index = 5;break;
            case 24: image_index = 6;break;
            case 39: t_anim = 2;break;
        }
        /*
        if t mod 20 = 0
        {
            instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb_left);            
        }
    */
    if y >= 222 
    {
        y = 222;
        t = 0;
        t_anim = 0;
        image_index = 0;
        state = 4;
        vspd = 0;
        sprite_index = spr_bossj2_idle;
        image_speed = 1;
    }    
}

#endregion

#region  Ожидание 2

if state = 4 
{
    t++;
    if t = 60
    {
        image_index = 0;
        sprite_index = spr_bossj2_prepare_attack;   
    }
    if t = 240
    {
        state = 5;
        t = 0;
        image_index = 0;
        image_speed = 0;
    } 
}

#endregion

#region  Полет вверх + стрельба в игрока

if state = 5
{
    image_speed = 0;
    sprite_index = spr_bossj2_fire_attack
    t_anim++;
    switch(t_anim)
    {
        case 2:  image_index = 0;break;
        case 6:  image_index = 1;break;
        case 10: image_index = 2;break;
        case 14: image_index = 3;break;
        case 20: image_index = 4;
				 fnc_snd_play_over(snd_boss2_fire);
                 instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb_point);  
                 break;
        case 22: image_index = 5;break;
        case 24: image_index = 6;break;
        case 39: t_anim = 2;break;
    }
    
    vspd = -0.5;
    if y <= 64
    {
        y = 64;
        t = 0;
        t_anim = 0;
        image_index = 0;
        state = 2;
        vspd = 0;
        sprite_index = spr_bossj2_idle;
        image_speed = 1;
    }
    
}

#endregion

#region  Ожидание 3

#endregion

#region  Подрыв от бомбы + DIZZY

if state = 7 
{
    if instance_exists(obj_bossj2_phase3_mask)
    {
        obj_bossj2_phase3_mask.canhit = 1;
    } 
    vspd = 0;
    t++;
    t_anim = 0;
    image_speed = 1;
    sprite_index = spr_bossj2_faint;
    if t = 200
    {
        t = 0;
        state = 8;
        if instance_exists(obj_bossj2_phase3_mask)
        {
            obj_bossj2_phase3_mask.canhit = 0;
        } 
        sprite_index = spr_bossj2_idle;
    }
    
}

#endregion

#region  Очухивание и полет вверх

if state = 8 
{
    t++;
    if t > 50
    {
        if y > room_height/2 vspd = 2; 
        if y <= room_height/2 vspd = -2
        
        if vspd > 0 && y >= 222 
        {
            y = 222;
            t = 0;
            vspd = 0;
            state = 4;
        }
        
        if vspd < 0  && y <= 64
        {
            y = 64;
            t = 0;
            vspd = 0;
            state = 2;
        }              
    }
}

#endregion


#region ПОПАДАНИЕ

if hit != 0
{
    hit -=0.1;   
    image_blend = c_red;
} else image_blend = c_white;
#endregion