/// @description Insert description here
// You can write your code in this editor

/*

1 - полет
2 - получение урона
3 - уход
*/

if state = 0
{
    if mov = -1
    {
        if mov_up = 1
        {
            y-=7;
            sprite_index = spr_boss_d2_flyup;
            if y <=0 
            {
                var e = instance_create_depth(x-32,32+8,0,obj_boss_d2_earth_up);
                e.t = 50;
                x-=32;
                mov_up = 0;
                y = 0;
            }
        }
        
        if mov_up = 0
        {
            sprite_index = spr_boss_d2_flydown;
            y+=7;
            if y>=270
            {
                if x < 64
                {
                    var e = instance_create_depth(x+32,256-8,0,obj_boss_d2_earth_down);
                    e.t = 50;
                    mov = 1;
                    y = 270;
                    x = 32;
                    mov_up = 1;
                    
                } else
                {
                    var e = instance_create_depth(x-32,256-8,0,obj_boss_d2_earth_down);
                    e.t = 50;
                    x-=32;
                    mov_up = 1;
                }
            }
        }   
    }
    
    if mov = 1
    {
        if mov_up = 1
        {
            y-=7;
            sprite_index = spr_boss_d2_flyup;
            if y <=0 
            {
                var e = instance_create_depth(x+32,32+8,0,obj_boss_d2_earth_up);
                e.t = 50;
                x+=32;
                mov_up = 0;
                y = 0;
            }
        }
        
        if mov_up = 0
        {
            y+=7;
            sprite_index = spr_boss_d2_flydown;
            if y>=270
            {
                if x > 480-64
                {
                    var e = instance_create_depth(x+480-32,256-8,0,obj_boss_d2_earth_down);
                    e.t = 50;
                    mov = -1;
                    y = 270;
                    x = 480-32;
                    mov_up = 1;
                    
                } else
                {
                    var e = instance_create_depth(x+32,256-8,0,obj_boss_d2_earth_down);
                    e.t = 50;
                    x+=32;
                    mov_up = 1;
                }
            }
        }   
    }
    
   
    
    
    #region Взаимодействиес копьем
    if place_meeting(x,y,obj_boss_d2_pike_l) || place_meeting(x,y,obj_boss_d2_pike_r)
    {
        state = 1;
        vspd = -2;
        sprite_index = spr_boss_d2_idle_takedmg;
        if obj_boss_d2_pike_l.mov = 1 || obj_boss_d2_pike_l.mov = 2
        {
            obj_boss_d2_pike_l.mov = 3;   
        }
        if obj_boss_d2_pike_r.mov = 1 || obj_boss_d2_pike_r.mov = 2
        {
            obj_boss_d2_pike_r.mov = 3;   
        }
    }
    #endregion
    
}

if state = 1 // подлет вниз
{
    depth = 0;
    y+=vspd;
    vspd+=0.2;
    if vspd > 0.5
    {
        sprite_index = spr_boss_d2_fall;   
    }
    if place_meeting(x,y+1,obj_block)
    {
        state = 2;  
        vspd = 0;
        y = 240;
        image_speed =0 ;
        sprite_index = spr_boss_d2_feltdown;
        image_index = 0;
        
    }
}

if state = 2 // ожидание
{
    t++;
    switch(t)
    {
        case 5:image_index = 1;break;
        case 10:image_index = 2;break;
        case 15:image_index = 3;break;
        case 20:image_index = 4;break;
        case 25:image_index = 5;break;
        case 30:image_index = 6;break;
        case 35:image_index = 7;break;
        
    }
    if t = 150
    {   
        state = 3; 
        t =0 ;
        sprite_index = spr_boss_d2_getup;
    }
}


if state = 3 // подъем
{
    image_speed = 1;
    t++;
    if t= 60
    {
        t = 0;
        state = 4;
        vspd = -6;
    }
}


if state = 4 // Сверт
{
    y+=vspd;
    vspd+=0.2;
    t++;
    image_speed = 1;
    if vspd < 0.5 sprite_index = spr_boss_d2_flyup else {depth = 101;sprite_index = spr_boss_d2_flydown;}
    if place_meeting(x,y+1,obj_block) && !instance_exists(obj_boss_d2_earth_down)
    {
        var earth = instance_create_depth(x,256-8,depth-1,obj_boss_d2_earth_down);
        earth.earth = 0;
        earth.t = 30;
    }
    if y> 270+32
    {
        if instance_exists(obj_boss_d2_phase3_controller) obj_boss_d2_phase3_controller.state = 0;
        if instance_exists(obj_boss_de_phase3_controller) obj_boss_de_phase3_controller.state = 0;
        instance_destroy();        
    }
}

#region Take dmg

#region red
if red !=0
{
    image_blend = c_red;
    red++;
    if red = 5
    {
        red = 0;   
    }
} else image_blend = c_white
#endregion

if instance_exists(fol)
{
    // получение урона
    	 
// Атака

    fnc_take_dmg_hitbox_fol(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe_fol(-10,-16,-1,10,-16,-1);
    
// Бомба

    fnc_take_dmg_bomb_fol(-10,-16,-1,10,-16,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down_fol(0,-32,-1);
    

// Получение урона

    fnc_enemy_no_armor_dmg();  
}

#endregion