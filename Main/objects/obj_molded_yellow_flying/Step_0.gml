/// @description Insert description here
// You can write your code in this editor

/*
Состояния
0 - Патрулирование
1 - Патрулирование
2 - телепортируется в инвиз
3 - появляется рядом
4 - немного парит рядом с игроком
5 - ожидание на месте
6 - делает выстрел 
7 - ожидание - если игрок рядом 2, если нет 4
8 - получение урона/ остановка
9 - получение урона от добиваний
10 - стан от телепорта
*/



if state = 1 //Патрулирование
{
	
    image_speed = 1;
    sprite_index = spr_molded_yellow_flying_idle;
    if abs(obj_Player.x - x) < 100 
    {
        state = 2;	
        image_index = 0;
        image_speed = 0;
        sprite_index = spr_molded_yellow_flying_teleport;
    }
}

if state = 2 //телепортируется в инвиз
{
	
    switch(t)
    {
        case 1: image_index = 1;break;
        case 5: image_index = 2;break;
        case 10: image_index = 3;break;
        case 15: image_index = 4;break;
        case 20: image_index = 5;break;
        case 25: image_index = 6;break;
    }
    
	vulnerable = 0;
	t++
	if t = 50
	{
        sprite_index = spr_molded_yellow_flying_appear;
        image_index = 0;
		state = 3;
		t = 0;
		appear = choose(0,1);
	}
} 

if state = 3 //появляется рядом
{
	
    switch(t)
    {
        case 70 :   image_index = 1;break;
        case 75 :   image_index = 2;break;
        case 80 :   image_index = 3;break;
        case 85 :   image_index = 4;break;
        case 90 :   image_index = 5;break;
        case 96 :   image_index = 6;break;  
    }
    
    if instance_exists(obj_Player)
    {
        if t = 65
        {
            if appear = 0
			{
				x = obj_Player.x - 64;	
				y = obj_Player.y;
			}
			if appear = 1
			{
				x = obj_Player.x + 64;	
				y = obj_Player.y;
			}   
        }
    }
    
    
    
    
	t++;
	if t = 100
	{
		t = 0;

		if instance_exists(obj_Player)
		{			
			state = 4;
			vulnerable = 1;
            sprite_index = spr_molded_yellow_flying_idle;
            image_speed = 1;			
		}
	}
}

if state = 4 //немного парит рядом с игроком
{        
	t++;
	if instance_exists(obj_Player)
	{
		if x >= obj_Player.x 
		{
			if x < camera_get_view_x(view_camera[0])+480-64
			{x = lerp(x,obj_Player.x+100,0.03);}
			y = lerp(y,obj_Player.y-16,0.03);	
		} else 
		{
			if x > camera_get_view_x(view_camera[0])+64
			{x = lerp(x,obj_Player.x-100,0.03);} else x = lerp(x,camera_get_view_x(view_camera[0])+32,0.03);
			y = lerp(y,obj_Player.y-16,0.03);	
		}
	}
	
	if t = 200
	{
		t = 10;
		state = 5;
        image_index = 0;
	}
}

if state = 5 //ожидание на месте
{
    image_speed = 0;
    sprite_index = spr_molded_yellow_flying_attack;
    switch(t)
    {
        case 20:  image_index = 1;break; 
        case 30:  image_index = 2;break; 
        case 40:  image_index = 3;break; 
    }
    
	t++;
	if t = 50
	{
		state = 6;
		t = 0;
	}
}

if state = 6 //делает выстрел
{
    sprite_index = spr_molded_yellow_flying_attack;
    switch(t)
    {
        case 1:  image_index = 4;break;  
        case 5:  image_index = 3;break;  
        case 10: image_index = 4;break;  
        case 15: image_index = 3;break;  
        case 20: image_index = 4;break;  
        case 25: image_index = 3;break;  
        case 30: image_index = 4;break;  
        case 35: image_index = 3;break;  
        case 40: image_index = 4;break;  
        case 50: image_index = 5;break;  
        case 80: image_index = 6;break;  
        case 90: image_index = 7;break;  
    }
    
	t++;
	if t = 50 instance_create_depth(x,y,depth,obj_molded_yellow_projectile);
	if t = 100
	{
		t = 0;
		state = 7;
        

	}
}

if state = 7 //ожидание - телепорт
{
    sprite_index = spr_molded_yellow_flying_idle;
    image_speed = 1;
	t++;
	if t = 100
	{
		if instance_exists(obj_Player)
		{
			t=0;
			state=2;	
            image_index = 0;
            image_speed = 0;
            sprite_index = spr_molded_yellow_flying_teleport;
		}
	}
}

#region получение урона



// Таймеры получения урона и рековера
if t_recover !=0
{
	t_recover++;	
}
if t_recover = 50
{
	t_recover = 0;
	hit_cd = 0;
	state = 2;
    image_index = 0;
    image_speed = 0;
    sprite_index = spr_molded_yellow_flying_teleport;
	t = 0;
	hspd = 0;
	vspd = 0;
}

if hit_cd!= 0 
{
	hit_cd++;	
	if hit_cd = 10
	{
		hit_cd = 0;
	}	
}



#region от добивания
if state = 9
{	
    sprite_index = spr_molded_yellow_flying_takedmg;
	x+=hspd;
	y+=vspd;
	hspd = lerp(hspd,0,0.03);
	vspd = lerp(vspd,0,0.03);
	if abs(hspd) < 0.5 && abs(vspd) < 0.5
	{
		state = 2;
		hspd = 0;
		vspd = 0;
		t = 0;
		t_recover = 0;
	}
}

#region обычное
if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0 && vulnerable = 1
{
    
	state = 9;
	t = 0;
	hit_cd = 1;
	if instance_exists(obj_Player)
	{
		if obj_Player.x >=x hspd = -2; else hspd = 4;
	}  
	 
}
#endregion
#region вниз
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 && vulnerable = 1
{
	state = 9;
	t = 0;
	hit_cd = 1;
	vspd = 4;
}
#endregion
#region вперед
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	if instance_exists(obj_Player)
	{
		if obj_Player.x >=x hspd = -3; else hspd = 3;
	} 
	state = 9;
	t = 0;
	hit_cd = 1;
}
#endregion
#region вверх
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	t = 0;
	state = 9;
	hit_cd = 1;
	vspd = -4;
	if !place_meeting(x,y,obj_block) overlap = 0; else overlap = 1;
}
#endregion


#endregion

#region От автоатаки
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && vulnerable = 1
{
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }   
	state = 8
	hit_cd = 1;
	t_recover = 1;
	hspd = 0;
	vspd = 0;
}	


if state = 8
{
    image_index = 0;
    image_speed = 0;
    if t_recover <5
    {
        sprite_index = spr_molded_yellow_flying_takedmg;
    	image_blend = c_red;
    } else {image_blend = c_white;sprite_index = spr_molded_yellow_flying_idle;};
} else 

#endregion

#region От дэша

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 && vulnerable = 1
{
	state = 8;
	hit_cd = 1;
	t_recover = 1;
	hspd = 0;
	vspd = 0;
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -4;
    obj_Player.dashing_timer_count = 1;
}
#endregion

#region от облака стан

if place_meeting(x,y,obj_teleport_cloud) && hit_cd = 0 && vulnerable = 1
{
	state = 10	
	t = 0;
	hit_cd = 1;
	t_recover = 1;
	hspd = 0;
	vspd = 0;
}
if state = 10
{
    sprite_index = spr_molded_yellow_flying_stuntp;
	t++;
	if t = 100
	{
		state = 2;
		t = 0;
	}
}
#endregion
#endregion