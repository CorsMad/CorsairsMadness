/// @description Insert description here
// You can write your code in this editor

/*
0 начало
1 - перемещение + выстрелы
2 - остановка для удара вокруг себя
3 - подпал под свет
*/

switch(pos)
{
    case 0:hspeed = -spd;vspeed = 0;
        if x < 64 {x = 64; pos = 1;}                                              
        break;
    case 1:hspeed = 0;vspeed = -spd;
        if y < 112 {y = 112;pos = 2;}              
        break;
    case 2:hspeed = spd;vspeed = 0;
        if x > 416 {x = 416;pos = 3;}
        break;
    case 3:hspeed = 0;vspeed = spd;
        if y > 464 {y = 464;pos = 0;}
        break;        
}

#region Действия

switch(state)
{
    case 0: // перемещение + выстрелы
        if spd < 1 spd+=0.05;
        if (hit_stored > 15 && t < 200 ) {state = 1;t=0;}  
		
		#region Anim
		if pos = 0 image_xscale = -1;
		if pos = 1 image_xscale = 1;
		if pos = 2 image_xscale = 1;
		if pos = 3 image_xscale = -1;
		switch(t){
			case 1: sprite_index = spr_boss_gp_fly;image_index = 0;image_speed = 1;break;
			case 200: sprite_index = spr_boss_gp_phase1shot;image_index = 0;image_speed = 0;break;
			case 205: image_index = 1;break;
			case 210: image_index = 2;break;
			case 215: image_index = 3;break;
			case 220: image_index = 4;break;
			case 225: image_index = 5;break;
			case 250:image_index = 6;break;
			case 255:image_index = 5;break;
			case 260:image_index = 6;break;
			case 265:image_index = 5;break;
			case 270:image_index = 6;break;
			case 275:image_index = 8;break;
		}
		#endregion
		
        #region атака
        t++;
        if t = 250 || t = 260 || t = 270
        {
            instance_create_depth(x+16*image_xscale,y-40,depth-1,obj_boss_pg_phase1_laser);
        }
        if t = 280 t = 0;
        #endregion
        break;
    case 1: // остановка для удара вокруг себя
        if spd > 0 spd-=0.05;
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
            state = 0;
            hit_stored = 0;
        }
        break;
    case 2: //подпал под свет 
		sprite_index = spr_boss_gp_phase3_stun;
		image_speed = 1;
        if spd > 0 spd-=0.05;
        t++;
        if t = 300
        {
            t = 0;
            state = 0;
        }
        break;
}

#endregion

#region под свет
if instance_exists(obj_boss_pg_light) && instance_exists(obj_boss_pg_light_block)
{
	if place_meeting(x,y,obj_boss_pg_light) && obj_boss_pg_light.image_index = 5
	{
		state = 2;
		t = 0;
		obj_boss_pg_light_block.state = 3;
		obj_boss_pg_light_block.t = 0;
		obj_boss_pg_light_block.image_index = 4;
	}
}
#endregion

#region Получение урона
#region от атак

#region  от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    hit_cd = 1;
    hit_stored+=1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_hit();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    hit_stored+=1;
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_down();  
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    hit_stored+=1;
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_forward();   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    hit_stored+=1;
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_up(); 
}
#endregion

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        fnc_superattack_gain_attack_dash();
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
        hit_stored+=1;
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
    hit_stored+=1;
    enemy_hp -= dmg_multiplier;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    fnc_superattack_gain_attack_dash();
    fnc_molded_dark_blood_forward()
    hit_cd = 1;
}

#endregion

#region от суперов
if hits_cd=0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) || place_meeting(x,y,obj_hitbox_mask_superattack_aoe)){
    hits_cd = 1;
    enemy_hp-=10;
    hit_cd = 1;
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_forward()
    fnc_molded_dark_blood_up()
    fnc_molded_dark_blood_up()
    if obj_Player.x < x 
    {
    	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
    } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);  
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_dark_blood_forward();
        fnc_molded_dark_blood_up();
        enemy_hp-=5;
    }
    
#endregion

#region множитель урона
if state = 2
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD 
if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;
    
if hits_cd!=0 hits_cd++;
if hits_cd=10 hits_cd=0; 
   if t_red !=0 {t_red++;image_blend = c_red};
   if t_red = 5 {t_red=0;image_blenc = c_white};
    
#endregion
#endregion

#region смерть
if enemy_hp<=0
{
    var d = instance_create_depth(x,y,depth,obj_boss_pg_phase1_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion