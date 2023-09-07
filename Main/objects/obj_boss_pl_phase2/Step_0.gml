/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

/*
0 - появление
1 - ожидание
2 - выстрел из винтовки
3 - выстрелы пистолетом
4 - отпрыг и полет // выстрелы из пистолета, выстрелы рикошетом
5 - призмеление + несколько выстрелов из рикошета
6 - стан от света
7 - отпрыг от середины
*/

#region Игрок рядом
    if (abs(obj_Player.x-x) < 180 && player_near = 0 && state = 1) player_near = 1
    if (player_near = 1 && player_near < 210) player_near_timer ++;
#endregion

switch(state)
{
    case 0:
    #region появление
	#region anim
	switch(t)
	{
		case 5:image_index = 1;break;
		case 10:image_index = 2;break;
		case 15:image_index = 3;break;
		case 20:image_index = 4;break;
		case 25:image_index = 5;break;
		case 30:image_index = 6;break;
		case 35:image_index = 7;break;
		case 40:
			sprite_index = spr_boss_lp_idle;
			image_speed = 1;
			break;
	}
	#endregion
    t++;
    if t = 50 {t =0;state = 1;}
    #endregion
    break;
    case 1:
    #region ожидание
    t++;
	if obj_Player.x > x image_xscale = 1 else image_xscale = -1
	image_speed = 1;
	sprite_index = spr_boss_lp_idle;
    if t = 50
    {
	    t = 0;
	    if player_near_timer > 200
	    {
	        state = 3.5;
	        player_near_timer = 0;
	        player_near = 0;
	    } else 
	        {
	            if abs(obj_Player.x-x) > 256  state = 2;;  
	            if abs(obj_Player.x-x) <= 256 state = 3;;  
	        }
    }
    #endregion
    break;
    case 2:
	t++;
    #region выстрел из винтовки
	if obj_Player.x > x image_xscale = 1 else image_xscale = -1
	switch(t)
	{
		case 5:sprite_index = spr_boss_lp_shot_rifle;image_index = 0;image_speed = 0;break;
		case 10:image_index = 1;break;
		case 15:image_index = 2;break;
		case 20:image_index = 3;
			var target = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_boss_pl_phase1_target);		
			target.boss_phase = obj_boss_pl_phase2;
			break;
		case 150:image_index =4;
			
			var bullet = instance_create_depth(x,y-12,depth-1,obj_follower_lava_bullet);
			bullet.x_dest = obj_boss_pl_phase1_target.x;
			bullet.y_dest = obj_boss_pl_phase1_target.y;
			instance_create_depth(x+42*image_xscale,y-12,depth-1,obj_follower_lava_steam)
		case 151: instance_destroy(obj_boss_pl_phase1_target);break;
		case 160: image_index = 2;break;
		case 165: image_index = 1;break;
		case 170: image_index = 0;break;
		case 175: sprite_index = spr_boss_lp_idle;image_speed = 1;break;
		case 200:
			state = 1;
			t = 0;
			break;
	}
	#endregion
    break;
    case 3:
    #region серия выстрелов из пистолета в игрока
	if obj_Player.x > x image_xscale = 1 else image_xscale = -1
	#region anim
	switch(t)
	{
		case 1:sprite_index = spr_boss_lp_shot_pistol;image_index = 0;image_speed = 0;break;
		case 5:image_index = 1;break;
		case 10:image_index = 2;break;
		case 15:image_index = 3;break;
		case 25:image_index = 4;
			instance_create_depth(x,y-16,depth-2,obj_follower_lava_steam)
			instance_create_depth(x,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet);
			break;
		case 30:image_index = 3;break;
		case 35:image_index = 4;
			instance_create_depth(x,y-16,depth-2,obj_follower_lava_steam)
			instance_create_depth(x,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet);
			break;
		case 40:image_index = 3;break;
		case 45:image_index = 4;
			instance_create_depth(x,y-16,depth-2,obj_follower_lava_steam)
			instance_create_depth(x,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet);
			break;
		case 60:image_index = 2;break;
		case 65:image_index = 1;break;
		case 70:image_index = 0;break;
		case 75:sprite_index = spr_boss_lp_idle;image_speed = 1;break;
	}
	#endregion	
    t++;
    if t = 150
    {
        t = 0;state = 1;   
    }
    #endregion
    break;
	case 3.5:
	#region предпрыжок
	if x < room_width/2 image_xscale = 1 else image_xscale = -1;
	t++;
	if t = 30 {
		sprite_index = spr_boss_lp_jump;
		image_speed= 0;
		image_index = 0;
	}
	if t = 50 {
		t = 0;
		vspd = -6;
		image_index = 2;
		state = 4;	
		if x < room_width/2 pos = 0 else pos = 1;
	}
	#endregion
	
		break;
    case 4:	
    #region отпрыг и полет // выстрелы из пистолета, выстрелы рикошетом
      
	vspd = lerp(vspd,0,0.1);
	if abs(vspd) <= 0.01 {
	    vspd = 0;
		sprite_index = spr_boss_lp_fly_pistolshot;
		image_speed = 0; 
	    state = 4.5;
	}
            
    #endregion
    break;
	case 4.5:
		t++;
		if pos = 0 hspd = 2 else hspd = -2

		if hspd > 0
            {
                if x < room_width/2 
                {
					image_xscale = 1;
                    if t mod 20 = 0 {
						if obj_Player.y > y { // игрок внизу
							if obj_Player.x < x { // игрок слева
								image_index = 4;
								instance_create_depth(x-32,y-16,depth-2,obj_follower_lava_steam)
								instance_create_depth(x-32,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet)
							} else { // игрок справа 
								image_index = 0;
								instance_create_depth(x+16,y-16,depth-2,obj_follower_lava_steam)
								instance_create_depth(x+16,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet)
							}
							
						} else { // игрок вверху
							if obj_Player.x < x { // игрок слева
								image_index = 6;
								instance_create_depth(x-32,y-32,depth-2,obj_follower_lava_steam)
								instance_create_depth(x-32,y-32,depth-1,obj_boss_pl_phase1_pistol_bullet)
							} else { // игрок справа 
								image_index = 8;
								instance_create_depth(x+32,y-32,depth-2,obj_follower_lava_steam)
								instance_create_depth(x+32,y-32,depth-1,obj_boss_pl_phase1_pistol_bullet)
							}	
						}
					}
					
					if t mod 6 = 0 {
						if obj_Player.y > y { // игрок внизу
							if obj_Player.x < x { // игрок слева
								image_index = 5;
							} else { // игрок справа 
								image_index = 1;
							}
							
						} else { // игрок вверху
							if obj_Player.x < x { // игрок слева
								image_index = 7;
							} else { // игрок справа 
								image_index = 9;
							}	
						}	
					}
                } else 
                {
					image_xscale = -1;
					sprite_index = spr_boss_lp_fly_blastershot;
					
					switch(t)
					{
						case 180:
							instance_create_depth(x-32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x-32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = -1;
							image_index = 2;
							break;
						case 200:image_index = 1;break;
						case 220:
							instance_create_depth(x-32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x-32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = -1;
							image_index = 2;
							break;
						case 240:image_index = 1;break;
						case 260:
							instance_create_depth(x-32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x-32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = -1;
							image_index = 2;
							break;
						case 280:image_index = 1;break;
						case 300:image_index = 0;break;										
					}	
                }
                if place_meeting(x+1,y,obj_block) {hspd = 0;state = 5;pos = 0;}
            }
			
		if hspd < 0
            {
                if x > room_width/2 
                {
					image_xscale = -1;
                    if t mod 20 = 0 {
						if obj_Player.y > y { // игрок внизу
							if obj_Player.x < x { // игрок слева
								image_index = 0;
								instance_create_depth(x-32,y-16,depth-2,obj_follower_lava_steam)
								instance_create_depth(x-32,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet)
							} else { // игрок справа 
								image_index = 4;
								instance_create_depth(x+16,y-16,depth-2,obj_follower_lava_steam)
								instance_create_depth(x+16,y-16,depth-1,obj_boss_pl_phase1_pistol_bullet)
							}
							
						} else { // игрок вверху
							if obj_Player.x < x { // игрок слева
								image_index = 8;
								instance_create_depth(x-32,y-32,depth-2,obj_follower_lava_steam)
								instance_create_depth(x-32,y-32,depth-1,obj_boss_pl_phase1_pistol_bullet)
							} else { // игрок справа 
								image_index = 6;
								instance_create_depth(x+32,y-32,depth-2,obj_follower_lava_steam)
								instance_create_depth(x+32,y-32,depth-1,obj_boss_pl_phase1_pistol_bullet)
							}	
						}
					}
					
					if t mod 6 = 0 {
						if obj_Player.y > y { // игрок внизу
							if obj_Player.x < x { // игрок слева
								image_index = 1;
							} else { // игрок справа 
								image_index = 5;
							}
							
						} else { // игрок вверху
							if obj_Player.x < x { // игрок слева
								image_index = 9;
							} else { // игрок справа 
								image_index = 7;
							}	
						}	
					}
                } else 
                {
					image_xscale = 1;
					sprite_index = spr_boss_lp_fly_blastershot;
					
					switch(t)
					{
						case 180:
							instance_create_depth(x+32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x+32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = 1;
							image_index = 2;
							break;
						case 200:image_index = 1;break;
						case 220:
							instance_create_depth(x+32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x+32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = 1;
							image_index = 2;
							break;
						case 240:image_index = 1;break;
						case 260:
							instance_create_depth(x+32,y-32,depth-2,obj_follower_lava_steam);
							var ric = instance_create_depth(x+32,y-32,depth-2,obj_boss_pl_phase1_pistol_bullet_ricochet);
							ric.dir = 1;
							image_index = 2;
							break;
						case 280:image_index = 1;break;
						case 300:image_index = 0;break;										
					}		
                }
                if place_meeting(x-1,y,obj_block) {hspd = 0;state = 5;pos = 0;}
            }
	
		
	break;
    case 5:
    #region 
    t++;
    if t > 10 
    {
        vspd+=0.2;
    }
    if place_meeting(x,y+1,obj_block)
    {
        vspd = 0;
        hspd = 0;
        t = 0;
        state = 1;
    }
    #endregion
    break;
    case 6:
    #region стан от свет
    hspd = 0;
    vspd+=0.2;
	#region anim
	if t < 150 {
		sprite_index = spr_boss_lp_stun;
		image_speed = 2;
	}
	if t>=150 && t < 180 {
		sprite_index = spr_boss_lp_idle;
		image_speed = 1;
	}
	if t > 180 
	{
		sprite_index = spr_boss_lp_jump;
		image_speed = 0;
		image_index = 0;
		if obj_Player.x > room_width/2 image_xscale = -1 else image_xscale = 1;
	}
	#endregion
	
	instance_destroy(obj_boss_pl_phase1_target);
    if place_meeting(x,y+1,obj_block) t++;
    if t = 200
    {
        t = 0;
		obj_boss_pl_light_trigger.isOn = 0;
        if instance_exists(obj_Player)
        {
            if obj_Player.x > room_width/2  hspd = -7 else hspd = 7;
        }
        vspd = -5;
        state = 7;
    }
    
    #endregion
    break;
    case 7:
    #region отпрыг от середины
    vspd+=0.1;
	#region anim
	if vspd < 0 image_index = 1; else image_index = 2;
	#endregion
    if place_meeting(x,y+1,obj_block)
    {
        state = 1;   
    }
    #endregion
    break;
}

#region под свет
if instance_exists(obj_boss_pl_light) && instance_exists(obj_boss_pl_light_block)
{
	if place_meeting(x,y,obj_boss_pl_light) && obj_boss_pl_light.image_index = 5
	{
		state = 6;
		t = 0;
		obj_boss_pl_light_block.state = 3;
		obj_boss_pl_light_block.t = 0;
		obj_boss_pl_light_block.image_index = 4;
	}
}
#endregion

#region взаимодействие с супердэш
if place_meeting(x,y,obj_Player)
{
    if obj_Player.isDead = 12
        {
            obj_Player.doublejumpspd = -obj_Player.image_xscale*6;        
            obj_Player.isDead = 0;
            obj_Player.superdash_power = 0;
            //obj_Player.superdash_timer_count = 0;
            obj_Player.vspd = -5;
            with(obj_Player)
            {
                if !place_meeting(x,y+1,obj_block)  y-=1;
            }
            on = 0;
        }
}
#endregion

#region получение урона

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

if place_meeting(x,y,obj_hitbox_mask_hook) && hit_cd = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -3.2;
        }   
        fnc_molded_dark_blood_forward();
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= dmg_multiplier;
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);       
    }   
}

#endregion

#region множитель урона
if state = 6
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD
    if hit_cd != 0
    {
        hit_cd ++;   
    }
    if hit_cd = 10
    {
        hit_cd = 0;   
    }    
#endregion

#endregion 

#region смерть

if enemy_hp <= 0
{    
    var d = instance_create_depth(x,y,depth,obj_boss_pl_phase2_death);
    d.image_xscale = image_xscale;
	obj_boss_pl_light_trigger.isOn = 0;
	instance_destroy(obj_boss_pl_phase1_pistol_bullet_ricochet);
	if obj_boss_pl_light_block.state != 0{
		obj_boss_pl_light_block.state = 3;
		obj_boss_pl_light_block.t = 0;
	}
	
	
	instance_destroy(obj_boss_pl_phase1_target);
    instance_destroy();
}
#endregion