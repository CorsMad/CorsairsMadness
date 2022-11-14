/// @description Insert description here
// You can write your code in this editor

/*
1. Вылетает слева
2. ждет
3. Делает облет по кругу.
4. Стреляют в игрока
5. Ждет
6. Летит в игрока и останавливается
7. Летит в игрока и останавливается
8. Отлетает в ближайшую сторону
9. Отдыхает
10. Ждет
11. 3 и заново
*/

x+=hspd;
y+=vspd;

#region Вылет слева

if state = 1
{
    sprite_index = spr_bossj2_idle;
    image_xscale = -1;
    hspd = 2;
    if x >= 48  
    {
        hspd = 0;
        state = 2;
        if instance_exists(obj_bossj2_phase2_mask)
        {
            obj_bossj2_phase2_mask.canhit = 1;
        }
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
        state = 3;
        t = 0;
    }
}
#endregion

#region облет 

if state = 3 
{
    t++;
    if t = 750
    {
        image_index = 0;
        sprite_index = spr_bossj2_prepare_attack;
    }
    
    if t = 790
    {
        image_index = 0;
        image_speed = 0;
        t = 0;
        state = 4;
        t_anim = 0;
    }
    
    t_anim++;
    if t = 60 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn left
    if t = 100 {image_xscale = 1;image_index = 0;sprite_index = spr_bossj2_idle;}
    
    if t = 220 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn right
    if t = 260 {image_xscale = -1;image_index = 0;sprite_index = spr_bossj2_idle;}
    
    if t = 320 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn left
    if t = 360 {image_xscale = 1;image_index = 0;sprite_index = spr_bossj2_idle;}
    
    if t = 440 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn right
    if t = 480 {image_xscale = -1;image_index = 0;sprite_index = spr_bossj2_idle;}
    
    if t = 540 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn left
    if t = 580 {image_xscale = 1;image_index = 0;sprite_index = spr_bossj2_idle;}
    
    if t = 640 {image_index = 0;sprite_index = spr_bossj2_turn_right;} //Turn right
    if t = 680 {image_xscale = -1;image_index = 0;sprite_index = spr_bossj2_idle;}

}






#endregion

#region Стрельба в игрока

if state = 4
{
    sprite_index = spr_bossj2_fire_attack;
    t++;
    t_anim++;
    
    if t < 163
    {
        switch(t_anim)
        {
            case 2: image_index = 0;break;
            case 6: image_index = 1;break;
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
        case 20: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 40: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 60: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 80: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 100: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 120: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 140: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 160: instance_create_depth(x+42,y+10,depth-1,obj_boss2_bomb_point);break;
        case 180: 
            t = 0;
            t_anim = 0;
            state = 5;
            sprite_index = spr_bossj2_idle;
            image_speed = 1;
            break;
    }
    
}

#endregion

#region ожидание 2
if state = 5
{
    t++; 
    if t = 50
    {
        state = 6;
        t = 0;
    }
}
#endregion

#region Полет в игрока 1

if state = 6
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
        } else {state = 6.1;t=0;}
    }
}

if state = 6.1 
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
        state = 7;
        t = 0;
        image_index = 0;  
        
        t_anim = 0;
    }
}

#endregion

#region Полет в игрока 2

if state = 7
{
    spd = 5;
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
        state = 8;
        t = 0;
        image_index = 0;
        image_speed = 1;
        t_anim = 0;
    }
}

#endregion

#region Полет в левую сторону назад

if state = 8
{
    sprite_index = spr_bossj2_idle;
    spd = 1;
    t++;
    if t > 20 
    {

            if distance_to_point(48,64) > spd
            {
                move_towards_point(48,64,spd)
            } else {speed = 0;t = 0;state = 9;x = 48;y = 64;}     
    }
}
#endregion

#region Ожидание и заново

if state = 9
{
    t++;
    if t = 22
    {
        if image_xscale = 1
        {
            image_index = 0;
            sprite_index = spr_bossj2_turn_right;
        }

    }
    
    if t = 60
    {
        t = 0;
        state = 2;
        image_xscale = -1;
        sprite_index = spr_bossj2_idle;
        image_speed = 1;
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