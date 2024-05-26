/// @description Insert description here
// You can write your code in this editor

/*
1. Вылетает справа
2. ждет
3. Делает обстрел навесными снарядами.
4. Ждет
5. Летит в игрока. 
6.После того как прилетел, 
ждет и отлетает в ближайшую сторону.
7. отдыхает
8. ждет
9. 3 и заново
10. Смерть
*/

x+=hspd;
y+=vspd;

#region Вылет справа

if state = 1
{
    sprite_index = spr_bossj2_idle;
    hspd = -2;
    if x<= 432  
    {
        hspd = 0;
        state = 2;
        if instance_exists(obj_bossj2_phase1_mask)
        {
            obj_bossj2_phase1_mask.canhit = 1;
        }
    }
}

#endregion

#region ожидание 1

if state = 2
{
    image_speed = 1;
    hspd = 0;
    vspd = 0;
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

#region обстерл 

if state = 3 
{
    sprite_index = spr_bossj2_fire_attack;       

    t++;
    t_anim++;
    if t < 163
    {
        switch(t_anim)
        {
            case 2:  image_index = 0;break;
            case 6:  image_index = 1;break;
            case 10: image_index = 2;break;
            case 14: image_index = 3;break;
            case 20: image_index = 4;break;
            case 22: image_index = 5;break;
            case 24: image_index = 6;break;
            case 29: t_anim = 2;break;
        }
    } else image_index = 0;
    
    
    switch(t)
    {   
        case 20:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = -1.5; else b1.hspd = 1.5;
                b1.vspd = -1;
                break;
        case 40:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 0; else b1.hspd = 0;
                b1.vspd = -1;
            break
        case 60:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 1; else b1.hspd = -1;
                b1.vspd = -1.5;
            break
        case 80:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 2; else b1.hspd = -2;
                b1.vspd = -2;
            break
        case 100:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 3; else b1.hspd = -3;
                b1.vspd = -2.5;
            break
        case 120:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 4; else b1.hspd = -4;
                b1.vspd = -3;
            break
        case 140:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 5; else b1.hspd = -5;
                b1.vspd = -3.5;
            break
        case 160:
            fnc_snd_play_over(snd_boss2_fire);
            var b1 = instance_create_depth(x-sign(image_xscale)*42,y+10,depth-1,obj_boss2_bomb1);
                if x < room_width/2 b1.hspd = 6; else b1.hspd = -6;
                b1.vspd = -4;
            break
        case 180:
            t = 0;
            state = 4;
            sprite_index = spr_bossj2_idle;
            image_speed = 1;
            t_anim = 0;
            break;
    }
}

#endregion

#region ожидание 2

if state = 4
{
    
    t++;
     
    if t = 30
    {
        instance_create_depth(x,y+48,depth,obj_boss2_excl_mark);   
    }
    if t = 140
    {
        t = 0;
        state = 5;
    }    
}

#endregion

#region полет в игрока

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
    image_speed = 0;
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
        state = 6;  
        sprite_index = spr_bossj2_idle;
        image_index = 0;
        image_speed = 1;
        
        t_anim = 0;
    }
}

#endregion

#region возврат

if state = 6
{
    spd = 2;
    t++;
    if t > 50 
    {
        if x <= room_width/2 
        {
            if distance_to_point(48,64) > spd
            {
                move_towards_point(48,64,spd)
            } else {speed = 0;t = 0;state = 7;x = 48;y = 64;} 
        }
        
        if x > room_width/2
        {
            if distance_to_point(432,64) > spd
            {
                move_towards_point(432,64,spd)
            } else {speed = 0;t = 0;state = 7;x = 432;y = 64;} 
        }
    }
}

#endregion

#region Отдых и ожидание

if state = 7
{
    t++;
    if t = 22
    {
        
        if x < room_width/2 && image_xscale = 1
        {
            image_index = 0;
            sprite_index = spr_bossj2_turn_right;
        }
        if x > room_width/2 && image_xscale = -1
        {
            image_index = 0;
            sprite_index = spr_bossj2_turn_right;
        }
    }
    if t = 60
    {
        t = 0;
        state = 2;
        if x < room_width/2 image_xscale = -1 else image_xscale = 1;
        if sprite_index = spr_bossj2_turn_right image_index = 0;        
        sprite_index = spr_bossj2_idle;
        image_speed = 1;
        
    }
}
#endregion

#region ПОПАДАНИЕ

if hit != 0
{ 
    image_blend = c_red;
} else image_blend = c_white;
#endregion