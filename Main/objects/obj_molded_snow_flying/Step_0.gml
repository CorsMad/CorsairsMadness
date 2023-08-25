/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
if state!=1 magnet = 0
/*
0 - патруль
1 - перемещение
2 - атака
3 - ожидание
4 - отлет
5 - получение урона
6 - стан от крыльев
*/

#region anim
switch(state)
{
    case 0: 
        sprite_index = spr_molded_blue_flying_idle;
        image_speed = 1;
        break;
    case 1:
        image_speed = 1;
        if obj_Player.x < x image_xscale = 1 else image_xscale = -1;
        if image_xscale = 1
        {
            if hspeed > 0.5 sprite_index = spr_molded_blue_flying_back; else
            { if hspeed < -0.5 sprite_index = spr_molded_blue_flying_forward; else
                {
                    sprite_index = spr_molded_blue_flying_idle;   
                } 
            }
        }
        if image_xscale = -1
        {
            if hspeed > 0.5 sprite_index = spr_molded_blue_flying_forward; else
            { if hspeed < -0.5 sprite_index = spr_molded_blue_flying_back; else
                {
                    sprite_index = spr_molded_blue_flying_idle;   
                } 
            }
        }
        break;
    case 2:
        switch(t)
        {           
            case 40:sprite_index = spr_molded_blue_flying_attack1;image_speed = 0;image_index = 0;break;
            case 45:image_index = 1;break;
            case 55:image_index = 2;break;
            case 60:image_index = 3;break;
            case 95:image_index = 4;break;
            case 100:image_index = 5;break;
            case 149: sprite_index = spr_molded_blue_flying_idle;image_speed = 1;image_index = 0;break;      
        }
        break;
    case 2.5:
        switch(t)
        {
            case 1: sprite_index = spr_molded_blue_flying_attack2;image_speed = 0;image_index = 0;break;
            case 5: image_index = 1;break;
            case 10: image_index = 2;break;
            case 15: image_index = 3;break;
            case 25: image_index = 4;break;
            case 30: image_index = 5;break;
            case 35: image_index = 6;break;
            case 40: image_index = 7;break;
            case 70: image_index = 8;break;
            case 72: image_index = 9;break;
            case 74: image_index = 10;break;
            case 76: image_index = 11;break;
            case 90: sprite_index = spr_molded_blue_flying_idle;image_speed = 1;image_index = 0;break;
        }
        break;
    case 6:
        sprite_index = spr_molded_blue_flying_takedmg;
        image_speed = 0;
        if hit_cd > 0 && hit_cd < 8 
        {
            image_index = 0;
        } else image_index = 1;
        break;
    
}
#endregion

if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x-x) <128 && abs(obj_Player.y-y) < 128{
            if obj_Player.x < x side = -1; else side = 1;
            state = 1;   
        }
    }
}

if state = 1 //перемещение
{
    t++;
    if t >= 200
    {
        t = 0;
        state = choose(2,2.5);
        speed = 0;
        dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    }
    if instance_exists(obj_Player)
    {
        if (point_distance(x, y, obj_Player.x+sign(side)*80, obj_Player.y-16) > 3 && magnet = 0)
        {
            move_towards_point(obj_Player.x+sign(side)*80  , obj_Player.y-16, 3);
        }
        else {
            magnet = 1;
            speed = 0;
            x = lerp(x,obj_Player.x+sign(side)*80,0.1);
            y = lerp(y,obj_Player.y-16,0.1);
        }
    }
}

if state = 2 // атака
{
    t++;
    if t=100
    {    
        hitb = instance_create_depth(x,y,depth,obj_molded_snow_flying_hitbox);
        hitb.fol = id;
        hitb.image_xscale = image_xscale;
        if instance_exists(obj_Player) 
        {            
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);
        }   
    }
    
    if t = 150
    {
        instance_destroy(hitb);
        hspeed = 0;
        vspeed = 0;  
        t = 0;
        state = 3; 
    }
}

if state = 2.5 // атака выстрелом
{
    t++;
    if t = 70
    {
        instance_create_depth(x,y-32,depth-1,obj_molded_snow_flying_proj);
    }
    if t = 100
    {
        hspeed = 0;
        vspeed = 0;  
        t = 0;
        state = 3;    
    }
}

if state = 3 // ожидание
{
    t++;
    if t = 50
    {
        if obj_Player.x > x side =-1; else side = 1;
        t = 0;
        state = 1;
    }
}

#region стан от крыльев

if place_meeting(x,y,obj_doublejump) && state!=6
{
    state = 6;   
    t = 0;
    hspeed = 0;
    vspeed = 0;
}

if state = 6
{
    hspeed = 0;
    vspeed = 0;
    if t < 160 t++;
    if (t = 150 && hspd = 0 && vspd = 0 ){t=0;state=1;}
}

#endregion

#region Получение урона

if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if t_red!=0 {t_red++;image_blend = c_yellow;}
if t_red = 5 {t_red = 0;image_blend =c_white;}

if hspd!=0 hspd = lerp(hspd,0,0.05);
if abs(hspd)<0.3 hspd = 0;

if vspd!=0 vspd = lerp(vspd,0,0.05);
if abs(vspd)<0.3 vspd = 0;

#region добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	hit_cd = 1;	
    hspd = sign(obj_Player.dir)*2
    t = 0;
    state = 6;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_hit(3);
    
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	hit_cd = 1;
	state = 6;
    t = 0;
	vspd = -3;
    fnc_molded_blood_up(3);
    enemy_hp-=1;
    t_red = 1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	hit_cd = 1;
	state = 6;
    t = 0;
    t_red = 1;
	hspd = sign(obj_Player.dir)*4;
    fnc_molded_blood_forward(3);
    enemy_hp-=1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	hit_cd = 1;
	state = 6;
    t = 0;
	vspd = 3;
    t_red = 1;
    enemy_hp-=1;
    fnc_molded_blood_down(3);

}

#endregion
//Атака
if hit_cd = 0 && place_meeting(x,y,obj_hitbox_mask)
{
    hit_cd = 1;
    if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }     
    t_red = 1;
    enemy_hp-=1;
}
//Dash
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
{
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	if state = 6 {hspd = sign(obj_Player.dir)*4;t = 0}; 
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_forward(3);
}

#endregion


#region смерть
if enemy_hp<=0
{
    var d = instance_create_depth(x,y,depth,obj_molded_snow_flying_death)
    d.image_xscale = image_xscale;
    instance_destroy();   
}
#endregion