/// @description Insert description here
// You can write your code in this editor

/*
-1 ожидание
0 - подлет к игроку
1 - дэш в игрока
2 - остановка + 3 выстрела
3 - полет в игрока
4 - остановка + взрыв
5 - возврат назад
6 - свет
*/

#region Действия
switch(state)
{
    case -1: //
        t++;
        if t =50
        {
            if instance_exists(obj_Player)
            {
                if obj_Player.x > x side =-1; else side = 1;   
            }
            t = 0;
            state = 0;        
        }
        break;
    case 0: // подлет к игроку
        t++;
		
		if obj_Player.x > x image_xscale = 1 else image_xscale = -1;
		
        if t >= 200//200
        {            
            magnet = 0;
            t = 0;
            state = 0.5;
			sprite_index = spr_boss_gp_idle;
			image_speed = 1;
            speed = 0;            
        }
        if instance_exists(obj_Player)
        {
            if (point_distance(x, y, obj_Player.x+sign(side)*80, obj_Player.y-16) > 3 && magnet = 0)
            {
				sprite_index = spr_boss_gp_fly;
				image_speed = 1;
                move_towards_point(obj_Player.x+sign(side)*80, obj_Player.y-16, 3);   
            }
            else {
				sprite_index = spr_boss_gp_idle;
				image_speed = 1;
                magnet = 1;
                speed = 0;
                x = lerp(x,obj_Player.x+sign(side)*80,0.1);
                y = lerp(y,obj_Player.y-16,0.1);
            }
        }
        break;
    case 0.5:
        t++ 
		#region anim
		
		switch(t)
		{
			case 55:sprite_index = spr_boss_gp_attack_forward;image_speed = 0;image_index = 0;break;
			case 60:image_index = 1;break;
			case 71: 
			if pl_x > x image_xscale = 1 else image_xscale = -1; 
			case 90:image_index = 2;break;
			case 95:image_index = 3;break;
			case 98:image_index = 4;break;
		}
		
		#endregion
        speed =0;
        if t = 70 {
            if instance_exists(obj_Player)
            {
                pl_x = obj_Player.x;
                pl_y = obj_Player.y-16;
            }   
        }
        if t = 100
        {
            t = 0;
            state = 1;
			t_anim = 0;
        }
        break;
    case 1: // дэш в игрока
		#region anim
		t_anim++;
		if stop = 0
			{
				if t_anim = 3 {
					if image_index = 4 image_index = 3 else image_index = 4;
					t_anim = 0;
				}
			} else 
			{
				switch(t)
				{
					case 1:image_index = 2;break;	
					case 5:image_index = 1;break;	
					case 10:image_index = 0;break;	
					case 15:sprite_index = spr_boss_gp_idle;image_speed = 1;break;
				}
			}
		#endregion
            if point_distance(x, y, pl_x, pl_y) > 5 && stop = 0
            {
                move_towards_point(pl_x, pl_y, 5);
            }
            else {stop = 1;}
            if (stop = 1 && abs(speed) > 0) speed -=0.25;
            if speed < 0.25
            {
                t++; 
                if t = 60
                {
                    t= 0;
                    state = 2;
                    speed = 0;  
                    stop = 0;
                }
            }
        break;
    case 2: // остановка + 3 выстрела
        t++;
		#region anim
		switch(t)
		{

			case 15: sprite_index = spr_boss_gp_phase1shot;image_index =0;image_speed = 0;break;
			case 20: image_index = 1;break;
			case 25: image_index = 2;break;
			case 30: image_index = 3;break;
			case 35: image_index = 4;break;
			case 40: image_index = 5;break;
			case 50: image_index = 6;break;
			case 55: image_index = 5;break;
			case 60: image_index = 6;break;
			case 65: image_index = 5;break;
			case 70: image_index = 6;break;
			
			
			case 75:sprite_index = spr_boss_gp_attack_forward;image_speed = 0;image_index = 0;break;
			case 80:image_index = 1;break;
			case 84:
				if instance_exists(obj_Player)
	            {
	                pl_x = obj_Player.x;
	                pl_y = obj_Player.y-16;
	            }
				break;
			case 85: 
			if pl_x > x image_xscale = 1 else image_xscale = -1; 
			case 90:image_index = 2;break;
			case 95:image_index = 3;break;
			case 98:image_index = 4;break;
			
		}
		#endregion
		
        if t = 50|| t = 60 || t = 70
        {
			if obj_Player.x > x image_xscale = 1 else image_xscale = -1;
            instance_create_depth(x,y-32,depth-1,obj_boss_pg_phase1_laser);   
        }
        if t = 100
        {
            t = 0; 
            state = 3;
			t_anim = 0; 
            
        }
        break;
    case 3: // полет в игрока
			t_anim++;
			if stop = 0
			{
				if t_anim = 3 {
					if image_index = 4 image_index = 3 else image_index = 4;
					t_anim = 0;
				}
			} else 
			{
				switch(t)
				{
					case 1:image_index = 2;break;	
					case 5:image_index = 1;break;	
					case 10:image_index = 0;break;	
					case 15:sprite_index = spr_boss_gp_idle;image_speed = 1;break;
				}
			}
	
            if point_distance(x, y, pl_x, pl_y) > 5 && stop = 0
            {
                move_towards_point(pl_x, pl_y, 5);
            }
            else {stop = 1;}
            if (stop = 1 && abs(speed) > 0) speed -=0.25;  
            if speed < 0.25
            {
                t++; 
                if t = 60
                {
                    t= 0;
                    state = 4;
                    speed = 0;   
                }
            }
        break;
    case 4: // остановка + взрыв
        t++;
		#region anim
		switch(t)
		{
			case 10:	sprite_index = spr_boss_gp_phase1aoeattack;image_speed = 0;image_index = 0;break;
			case 15: image_index = 1;break;
			case 20: image_index = 2;break;
			case 25: image_index = 3;break;
			case 30: image_index = 4;break;
			case 35: image_index = 4;break;
			case 40: image_index = 5;break;
			case 45: image_index = 6;break;
			case 50: image_index = 7;break;
			case 95: image_index = 8;break;
			case 100: image_index = 9;break;
			case 130: image_index = 3;break;
			case 135: image_index = 2;break;
			case 140: image_index = 1;break;
			case 145: image_index = 0;break;
		}
		#endregion
        if t = 100 
        {
			if turn_light < 2 turn_light+=1 
			if turn_light >=2{
				var ph = instance_create_depth(x,y-48,depth-1,obj_boss_pg_phase1_aoe) 
				ph.turn_switch = 1;
			} else instance_create_depth(x,y-48,depth-1,obj_boss_pg_phase1_aoe)
              
        }
        if t = 150
        {
            t = 0;
            state = -1;
            hit_stored = 0;
        }
		stop = 0;
        break;

    case 6: // свет
        magnet = 0;
        t++;
        stop = 0;
		sprite_index = spr_boss_gp_phase3_stun;
		image_speed = 1;
        speed = 0;
        if t = 300
        {
            t = 0;
            state = 0;
        } 
        break;
}
#endregion

#region Получение урона

#region под свет
if instance_exists(obj_boss_pg_light) && instance_exists(obj_boss_pg_light_block)
{
	if place_meeting(x,y,obj_boss_pg_light) && obj_boss_pg_light.image_index = 5
	{
		state = 6;
		t = 0;
		obj_boss_pg_light_block.state = 3;
		obj_boss_pg_light_block.t = 0;
		obj_boss_pg_light_block.image_index = 4;
	}
}
#endregion

#region от атак

#region  от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    hit_cd = 1;
    
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_hit();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_down();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_forward();   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_molded_dark_blood_up(); 
}
#endregion

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
        
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= dmg_multiplier;
        if obj_Player.x < x 
        {
        	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    }   
}

if place_meeting(x,y,obj_hitbox_mask_dash) // && hit_cd = 0
{   
    hit_timer = 1;
    
    enemy_hp -= dmg_multiplier;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_dark_blood_forward()
    hit_cd = 1;
}

#endregion

#region множитель урона
if state = 7
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD 
    if hit_cd != 0 hit_cd ++;   
    if hit_cd = 10 hit_cd = 0;
    if hit_cd = 10
   if t_red !=0 {t_red++;image_blend = c_red};
   if t_red = 5 {t_red=0;image_blenc = c_white};
    
#endregion
#endregion

#region смерть
if enemy_hp<=0
{
    var d = instance_create_depth(x,y,depth,obj_boss_pg_phase2_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion