/// @description Insert description here
// You can write your code in this editor

/*
0 - ожидание
1 - подлет к середине
2 - атака вокруг серией зеленых
3 - 2 взрыва вокруг себя
4 - 4 выстрела в игрока и отлет в сторону от игрока
5 - выстрел в игрока серией зеленых и заново
6 - свет
*/

#region Действия

switch(state)
{
    case 0: // ожидание
        t++;
		#region anim
		sprite_index = spr_boss_gp_idle;
		image_speed = 1;
		#endregion
        if t = 50
        {
            t = 0;
			if x < room_width/2 image_xscale = 1 else image_xscale = -1;
            state = 1;
        }
        break;
    case 1: // подлет к середине
		sprite_index = spr_boss_gp_fly;
        if (point_distance(x, y, 240, 288) > 3)
            {
                move_towards_point(240, 288, 3);   
            }
            else {
                speed = 0;
                state = 2;
                t = 90
                if obj_Player.x > x 
                {
                    side = 1 
                    t = 90
                } else 
                {
                    t=-90
                    side = -1   
                }
            }
        break;
    case 2: // атака вокруг серией зеленых
        t+=1;
		#region anim
		sprite_index = spr_boss_gp_phase3_shotaround;
		image_speed = 0;
		
		if t mod 5 = 0 
		{
			if side = -1{
				if t < -45 
				{
					image_xscale = 1;
					if image_index = 5 image_index = 6; else image_index = 5;
				}
				if t >=-45 && t < 45 {
					image_xscale = 1;
					if image_index = 1 image_index = 2; else image_index = 1;	
				}
				if t >= 45 && t < 135 {
					if image_index = 3 image_index = 4; else image_index = 3;	
				}
				if t >= 135 && t < 225 {
					image_xscale = -1;
					if image_index = 1 image_index = 2; else image_index = 1;
				}
				if t >= 225 {
					if image_index = 5 image_index = 6; else image_index = 5;	
				}
			} 
			if side = 1{
				if t < 135 
				{
					image_xscale = 1;
					if image_index = 5 image_index = 6; else image_index = 5;
				}
				if t >= 135 && t < 225 {
					image_xscale = -1;
					if image_index = 1 image_index = 2; else image_index = 1;	
				}
				if t >= 225 && t < 315 {
					if image_index = 3 image_index = 4; else image_index = 3;	
				}
				if t >= 315 && t < 405 {
					image_xscale = 1;
					if image_index = 1 image_index = 2; else image_index = 1;
				}
				if t >= 405 {
					if image_index = 5 image_index = 6; else image_index = 5;	
				}
			}
		}
		#endregion
		
		
        if t mod 10 = 0 
        {   
            fnc_snd_play_over(snd_boss2_fire);
            var b = instance_create_depth(x,y-48,depth-1,obj_boss_pg_phase3_proj)   
            b.direction = side*t;
        }
        switch(side)
        {
            case -1:    if t = -90+359 {t=0;state = 3;}break;                               
            case 1:     if t = 90+359 {t=0;state = 3;}break;
        }
        break;
    case 3: // 2 взрыва вокруг себя
        t++;
		#region anim
		switch(t)
		{
			case 10: sprite_index = spr_boss_gp_phase1aoeattack;image_speed = 0;image_index = 0;break;
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
			case 125: image_index = 4;break;
			case 130: image_index = 5;break;
			case 135: image_index = 6;break;
			case 140: image_index = 7;break;
			case 145: image_index = 8;break;
			case 150: image_index = 9;break;
			case 225: image_index = 4;break;
			case 230: image_index = 5;break;
			case 235: image_index = 6;break;
			case 240: image_index = 7;break;
			case 245: image_index = 8;break;
			case 250: image_index = 9;break;
		}
		#endregion
		
		
        if t = 100 || t= 150 || t = 250
        {
            instance_create_depth(x,y-48,depth-1,obj_boss_pg_phase1_aoe)  
        }
        if t = 250
        {
            t = 0;
            state = 4;
        }
        break;
    case 4: // 4 выстрела в игрока и отлет в сторону от игрока
        t++;
		#region anim
		switch(t)
		{
			case 1:sprite_index = spr_boss_gp_phase1shot;image_index = 0;image_speed = 0;break;
			case 5:image_index = 1;break;
			case 10:image_index = 2;break;
			case 15:image_index = 3;break;
			case 20:image_index = 4;break;
			case 25:image_index = 5;break;
			case 50:image_index = 6;break;
			case 55:image_index = 5;break;
			case 60:image_index = 6;break;
			case 65:image_index = 5;break;
			case 70:image_index = 6;break;
			case 75:image_index = 5;break;
			case 90:image_index = 6;break;
			case 95:image_index = 7;break;
		}
		
		
		#endregion
        if t = 50|| t = 60 || t = 70 || t = 90
        {
			if obj_Player.x > x image_xscale = 1 else image_xscale = -1;
            instance_create_depth(x+8*image_xscale,y-48,depth-1,obj_boss_pg_phase1_laser);   
        }
        if t = 100
        {
            if instance_exists(obj_Player)   
            {
                if obj_Player.x < x dir = 1; else dir = -1;
            }
            t = 0;
            state = 5;
        }
        break;
    case 5: // выстрел в игрока серией зеленых и заново
	
	#region anim
	switch(t)
	{
		case 0:	
			sprite_index = spr_boss_gp_fly;
			image_speed = 1;
			if dir = -1 image_xscale = -1 else image_xscale = 1;
			break;
		case 1:
			if instance_exists(obj_boss_pg_light_trigger) {
				if obj_boss_pg_light_trigger.isOn = 0 obj_boss_pg_light_trigger.isOn = 1; 
			}
		if dir = -1 image_xscale = 1 else image_xscale = -1;
			sprite_index = spr_boss_gp_phase1shot;
			image_speed = 0;image_index = 0;break;
		case 5:image_index = 1;break;
		case 10:image_index = 2;break;
		case 15:image_index = 3;break;
		case 20:image_index = 4;break;
		case 25:image_index = 5;break;
		case 50:image_index = 6;break;
		case 55:image_index = 5;break;
		case 60:image_index = 6;break;
		case 65:image_index = 5;break;
		case 70:image_index = 6;break;
		case 75:image_index = 7;break;
		case 80:sprite_index = spr_boss_gp_idle;image_index = 0;image_speed = 1;break;
	}
	#endregion
    switch(dir)
    {
        case -1:
            if x > 64 x-=3;
            if x <=64
            {
                t++;
                if t = 50 || t = 60 || t = 70
                {
                    instance_create_depth(x+8*image_xscale,y-48,depth-1,obj_boss_pg_phase3_laser)   
                }
                if t = 100
                {
                    t = 0;   
                    state = 0;
                }
            }
            break;
        case 1:
            if x < 416 x+=3;
            if x >=416
            {
                t++;
                if t = 50 || t = 60 || t = 70
                {
                    instance_create_depth(x+8*image_xscale,y-48,depth-1,obj_boss_pg_phase3_laser)   
                }
                if t = 100
                {
                    t = 0;   
                    state = 0;
                }
            }
            break;
    }
        break;
    case 6: // свет
        t++;
		sprite_index = spr_boss_gp_phase3_stun;
		image_speed = 1;
        stop = 0;
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

#region смерть
if enemy_hp<=0
{
    var d = instance_create_depth(x,y,depth,obj_boss_pg_phase3_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion