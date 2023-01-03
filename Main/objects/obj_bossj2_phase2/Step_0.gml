/// @description Insert description here
// You can write your code in this editor

/*
1. Вылетает справа в центр
2. ждет
3.1 Стреляет по кругу справа налево
3.2 стреляет по кругу слева направо
4. Ждет
5. Летит в игрока и останавливается
6. Летит в игрока и останавливается
7. Летит в игрока и останавливается
8. Ждет
9. Летит в центр
10. Отдых
11. 2 и заново
*/

x+=hspd;
y+=vspd;

#region Вылет справа

if state = 1
{
    sprite_index = spr_bossj2_idle;
    hspd = -2;
    if x <= 240  
    {
        hspd = 0;
        state = 1.1;
        image_index = 0;
        if instance_exists(obj_bossj2_phase2_mask)
        {
            obj_bossj2_phase2_mask.canhit = 1;
        }
    }
}

if state = 1.1 //Поворот
{
    t++;
    sprite_index = spr_bossj2_turn_right;
    if t = 20
    {
        t = 0;
        sprite_index = spr_bossj2_idle_on_place;
        image_index = 0;
        state = 2;
    }
}

#endregion

#region ожидание 1
if state = 2
{
    hspd = 0;
    vspd = 0;
    t++; 
    if t = 50
    {
        image_index = 0;
        sprite_index = spr_bossj2_prepare_to_attack_on_place;
    }
    if t = 120
    {
        
        if obj_Player.x < room_width/2 
        {
            state = 3.2 
            t = 90;
            sprite_index = spr_bossj2_attack_on_place;
            image_index = 0;
            image_speed =0;



        }else 
        {
            state = 3.1;
            t = 270;
            sprite_index = spr_bossj2_attack_on_place;
            image_index = 0;
            image_speed = 0;
        }
        
    }
}
#endregion

#region Стрельба по кругу справа налево 

if state = 3.1
{
    t_anim++;
    switch(t_anim)
        {
            case 2: image_index = 1;break;
            case 6: image_index = 2;break;
            case 8: image_index = 3;break;
            case 10: image_index = 0;break;
            case 11: t_anim = 2;break;
        }
    
        
    t++;
    if t = 270+359 
    {
        t = 0;
        state = 4;
        sprite_index = spr_bossj2_idle_on_place;
        image_index = 0;
        image_speed = 1;
        t_anim = 0;
    }
    if t mod 10 = 0 && t!=0
    {   
        fnc_snd_play_over(snd_boss2_fire);
        var b = instance_create_depth(x,y+14,depth-1,obj_boss2_bomb2)   
        b.direction = -1*t;
    }
    
}

if state = 3.2 
{
    
    t_anim++;
    switch(t_anim)
        {
            case 2: image_index = 1;break;
            case 6: image_index = 2;break;
            case 8: image_index = 3;break;
            case 10: image_index = 0;break;
            case 11: t_anim = 2;break;
        }
        
    t++;
    if t = 90+359 
    {
        t = 0;
        state = 4;
        sprite_index = spr_bossj2_idle_on_place;
        image_index = 0;
        image_speed = 1;
        t_anim = 0;

    }
    if t mod 10 = 0 && t!=0
    {   
        fnc_snd_play_over(snd_boss2_fire);
        var b = instance_create_depth(x,y,depth-1,obj_boss2_bomb2)   
        b.direction = t;
    }
}

#endregion

#region ожидание 2
if state = 4
{
    t++; 
    if t = 20
    {
        var em =  instance_create_depth(x,y+48,depth,obj_boss2_excl_mark);   
        em.t = 40;
    }
    if t = 80
    {
        state = 5;
        t = -30;    
    }
}
#endregion

#region Полет в игрока + остановка 1


if state = 5
{
    spd = 4;
    t++;
    if t = 10
    {
        sprite_index = spr_bossj2_flyattack;
        image_index = 0;
    }
    if t = 20
    {
        plx = obj_Player.x;
        ply = obj_Player.y-32;
    }
    
    if t > 30
    {
        if obj_Player.x > x image_xscale = -1 else image_xscale = 1;
        image_speed = 0;
        image_index = 3;
        
        if distance_to_point(plx,ply) > spd
        {
            move_towards_point(plx,ply,spd)
        } else {state = 5.1;t=0;}
    }
}

if state = 5.1 
{
    image_speed =0 ;
    t_anim++;
        switch(t_anim)
        {
            case 5: image_index = 2;break;
            case 10: image_index = 1;break;
            case 15: image_index = 0;break;
        }
    speed -=0.1;
    if speed <=0
    {
        speed = 0;
        state = 6;
        //t = 0;
        t = -50;
        image_index = 0;
        if y > room_height/2
        {
            var em = instance_create_depth(x,y-48,depth,obj_boss2_excl_mark);
            em.t = 40;
        } else
        {
            var em = instance_create_depth(x,y+48,depth,obj_boss2_excl_mark);
            em.t = 40;
        }
        t_anim = 0;
    }
}

#endregion

#region Полет в игрока + остановка 2


if state = 6
{
    spd = 5;
    t++;
    if t = 10
    {
        sprite_index = spr_bossj2_flyattack;
        image_index = 0;
    }
    if t = 20
    {
        plx = obj_Player.x;
        ply = obj_Player.y-32;
    }
    
    if t > 30
    {
        if obj_Player.x > x image_xscale = -1 else image_xscale = 1;
        image_speed = 0;
        image_index = 3;
        
        if distance_to_point(plx,ply) > spd
        {
            move_towards_point(plx,ply,spd)
        } else {state = 6.1;t=0;}
    }
}

if state = 6.1 
{
    speed -=0.1;
    t_anim++;
        switch(t_anim)
        {
            case 5: image_index = 2;break;
            case 10: image_index = 1;break;
            case 15: image_index = 0;break;
        }
    if speed <=0
    {
        speed = 0;
        state = 7;
        //t = 0;
        t = -50;
        image_index = 0;
        if y > room_height/2
        {
            var em = instance_create_depth(x,y-48,depth,obj_boss2_excl_mark);
            em.t = 40;
        } else
        {
            var em = instance_create_depth(x,y+48,depth,obj_boss2_excl_mark);
            em.t = 40;
        }
        t_anim = 0;
    }
}

#endregion

#region Полет в игрока + остановка 3


if state = 7
{
    spd = 6;
    t++;
    if t = 10
    {
        image_speed = 1;
        sprite_index = spr_bossj2_flyattack;
        image_index = 0;
    }
    if t = 20
    {
        plx = obj_Player.x;
        ply = obj_Player.y-32;
    }
    
    if t > 30
    {
        if obj_Player.x > x image_xscale = -1 else image_xscale = 1;
        image_speed = 0;
        image_index = 3;
        
        if distance_to_point(plx,ply) > spd
        {
            move_towards_point(plx,ply,spd)
        } else {state = 7.1;t=0;}
    }
}

if state = 7.1 
{
    speed -=0.2;
    t_anim++;
        switch(t_anim)
        {
            case 5: image_index = 2;break;
            case 10: image_index = 1;break;
            case 15: image_index = 0;break;
        }
    if speed <=0
    {
        speed = 0;
        state = 8;
        t = 0;
        image_index = 0;
        image_speed = 1;
        
        t_anim = 0;
    }
}

#endregion

#region ожидание 
if state = 8
{
    sprite_index = spr_bossj2_idle;
    t++; 
    if t = 10
    {
        state = 9;
        t = 0;
    }
}
#endregion

#region Полет назад в центр

if state = 9
{
    spd = 1;
    t++;
    if t > 50 
    {

            if distance_to_point(240,128) > spd
            {
                move_towards_point(240,128,spd)
            } else {speed = 0;t = 0;state = 10;x = 240;y = 128;}     
    }   
}


#endregion

#region ожидание 
if state = 10
{
    t++; 
    
    if t = 30
    {
        image_index = 0;
        sprite_index = spr_bossj2_turn_right;
    }
    if t = 50
    {
        image_index = 0;
        sprite_index = spr_bossj2_idle_on_place;
        state = 2;
        t = 0;
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