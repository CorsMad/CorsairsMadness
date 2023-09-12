/// @description Insert description here
// You can write your code in this editor

/*

1 - вылез справа
2 - ожидание
3 - плевки
4 - ожидание
5 - выстрел длинной штукой и падение вниз
6 - приземление и ожидание
7 - подъём
8 - залазание

*/

if state = 1 // вылез справа
{
    t++;
    sprite_index = spr_boss_d2_digout;
    switch(t)
    {
        case 50:    image_index = 2;break;
        case 55:    image_index = 3;break;
        case 60:    image_index = 4;break;
        case 65:    image_index = 5;break;
        case 70:    image_index = 6;break;
        case 75:   image_index = 7;break;
        case 80:   image_index = 8;break;
        case 85:   image_index = 9;break;
        case 90:   image_index = 10;break;
        case 95:   image_index = 11;break;
        case 100:   image_index = 12;break;
        case 105:   image_index = 13;break;
        case 110:   image_index = 14;break;
        case 115: 
            t = 0;
            state = 2;
            sprite_index = spr_boss_d2_idle_horizontal;
            image_index = 0;
            break;
    }
    
    
}

if (state = 2) // ожидание
{    
    image_speed = 1;
    t++;
    if t = 100
    {
        t = 0;
        state = 3
        sprite_index = spr_boss_d2_idle_throw;
        image_index = 0;        
    }
}

if (state = 3) // Выстрелы 
{
    image_speed = 0;
    t++;
    switch(t)
    {
        case 10:    image_index = 1;break;
        case 20:    image_index = 2;break;
        case 30:    image_index = 3;break;
        case 50:    image_index = 4;instance_create_depth(x-24,y,depth,obj_boss_d2_throw_proj);break; // выстрел
        case 80:    image_index = 3;break; 
        case 90:    image_index = 4;instance_create_depth(x-24,y,depth,obj_boss_d2_throw_proj);break; // выстрел
        case 120:   image_index = 3;break; 
        case 130:   image_index = 4;instance_create_depth(x-24,y,depth,obj_boss_d2_throw_proj);break; // выстрел
        case 160:   image_index = 3;break; 
        case 170:   image_index = 4;instance_create_depth(x-24,y,depth,obj_boss_d2_throw_proj);break; // выстрел
        case 200:   image_index = 5;break; 
        case 210:   image_index = 6;break; 
        case 220:
            t = 0;
            state = 4;
            sprite_index = spr_boss_d2_idle_horizontal;
            image_index = 0;
            break;
    }
}

if (state = 4) // Ожидание
{
    image_speed = 1;
    t++;
    if t = 50
    {
        t = 0;
        state = 5;       
        sprite_index = spr_boss_d2_idle_take_long;
        image_index = 0;
        image_speed = 0;
    }
}

if (state = 5) // выстрел длинной штукой
{
    if t < 60 t++;
    switch(t)
    {
        case 50: 
        var i = instance_create_depth(x,y-22,depth,obj_bossd2_1_long_proj_l);
        i.spd = -2;
        break;

    }
    
    if mov!= 1 && t > 50
    {
         image_speed = 0.5;
    }
    
    if mov = 1
    {
        sprite_index = spr_boss_d2_fall;
        y+=2;  
    }
    if place_meeting(x,y+1,obj_block)
    {
        t =0 ;
        mov = 0;
        state = 6;
        image_speed =0 ;
        sprite_index = spr_boss_d2_feltdown;
        image_index = 0;
    }
}

if (state = 6) // Ожидание
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
        t= 0;
        state = 7;
        sprite_index = spr_boss_d2_getup;
    }
}

if (state = 7) // подъем
{
    image_speed = 1;
    t++;
    if t= 60
    {
        t = 0;
        state = 8;
    }
}

if (state = 8) // закапывание
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
        obj_boss_d2_phase1_controller.state = 2;
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

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Получение урона

    fnc_enemy_no_armor_dmg();  
}

#endregion