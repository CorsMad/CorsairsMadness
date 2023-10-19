/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

/*
0 - ожидание
1 - выстрел из винтовки
2 - серия выстрелов из пистолета в игрока
3 - выстрел рикошетом
4 - удар винтовкой вблизи
5 - перепрыг
6 - стан от свет
7 - отпрыг от середины
*/

#region Игрок рядом
    if (abs(obj_Player.x-x) < 180 && player_near = 0 && state = 0) player_near = 1
    if (player_near = 1 && player_near < 210) player_near_timer ++;
#endregion

switch(state)
{
    case 0:
	#region anim
	if x > room_width/2 image_xscale = -1 else image_xscale = 1;
	sprite_index = spr_boss_lp_idle;
	#endregion
    #region ожидание
    t++;
    if t = 50
    {
        t = 0;
        if player_near_timer > 200
        {
            state = 3;
            t = 0;
            player_near_timer = 0;
            player_near = 0;
        } else 
        {
            if abs(obj_Player.x-x) > 256 state = 1;  
            if abs(obj_Player.x-x) <= 256 && abs(obj_Player.x-x) > 80 {t=0;state = 2;} 
            if abs(obj_Player.x-x) <= 80 {t=0;state = 4;}  
        }
    }
    #endregion
		break;
    case 1:
	t++;
	#region anim
	switch(t)
	{
		case 5:sprite_index = spr_boss_lp_shot_rifle;image_index = 0;image_speed = 0;break;
		case 10:image_index = 1;break;
		case 15:image_index = 2;break;
		case 20:image_index = 3;
			var target = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_boss_pl_phase1_target);		
			target.boss_phase = obj_boss_pl_phase1;
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
			state = 0;
			t = 0;
			break;
	}
	#endregion
		break;
    case 2:
    #region серия выстрелов из пистолета в игрока
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
        t = 0;state = 0;   
    }
    #endregion
		break;
    case 3:
    #region выстрел рикошетом
    t++;
	#region anim
	switch(t)
	{
		case 1: sprite_index = spr_boss_lp_shot_blaster;image_index = 0;image_speed = 0;break;
		case 5:	image_index = 1;break;
		case 10:	image_index = 2;break;
		case 15:	image_index = 3;break;
		case 20:	image_index = 4;break;
		case 50:
			image_index = 5;
            
			var ricochet = instance_create_depth(x+24*image_xscale,y-32,depth-1,obj_boss_pl_phase1_pistol_bullet_ricochet);
			if x > room_width/2 ricochet.dir = -1 else ricochet.dir = 1;	
			instance_create_depth(x+24*image_xscale,y-32,depth-1,obj_follower_lava_steam)
			break;
	}
	#endregion

    if t=  100
    {
        t = 0;
        state = 5;
    }
    #endregion
		break;
    case 4:
    #region удар винтовкой вблизи
	#region anim
	
	if t > 35 && t < 85 {
		if t mod 10 = 0 {instance_create_depth(x+16*image_xscale,y-32,depth-1,obj_boss_pl_phase1_rigle_aoe);fnc_snd_play_over(snd_enemy_boss2_attack);  }
		if image_index = 6 image_index = 2;
	}
	
	switch(t)
	{
		case 1:sprite_index = spr_boss_lp_kick_rifle;
			image_index = 0;image_speed = 0;
			break;
		case 5:image_index = 1;break;
		case 35: image_speed = 2;break;
		case 85:image_speed = 0;image_index = 1;break;	
		case 90:image_index = 0;break;
		
	}
	#endregion
    t++;
    if t = 50
    {
        //удар винтовкой   
    }
    if t = 100
    {
        t = 0;
        state = 0;
    }
    #endregion
		break;
    case 5:
    #region перепрыг
    t++;
	#region anim
	switch(t)
	{
		case 30:sprite_index = spr_boss_lp_jump;image_speed = 0;image_index = 0;break;	
		case 50:image_index = 1;break;
	}
	if t> 50 && vspd > 0 image_index = 2;
	#endregion
    if t = 50
    {
         if x > room_width/2 hspd = -9.5; else hspd = 9.5;
         vspd = -5;
    }
    if !place_meeting(x,y+1,obj_block){
        vspd+=0.1   
    }
    if place_meeting(x,y+1,obj_block) && t > 55
    {   
        t = 0;
        state = 0;
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
        state = 0;   
    }
    #endregion
		break;
}

#region под свет
if instance_exists(obj_boss_pl_light) && instance_exists(obj_boss_pl_light_block)
{
	if place_meeting(x,y,obj_boss_pl_light) && obj_boss_pl_light.image_index = 5
	{
        fnc_snd_play_onetime(snd_follower_getlight)
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
            fnc_snd_play_onetime(snd_follower_ground_hit);
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
    fnc_superattack_gain_specattack();
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
    fnc_superattack_gain_specattack();
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
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_forward();   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    hit_cd = 1;
    fnc_superattack_gain_specattack();
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
        fnc_superattack_gain_attack_dash();
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
    fnc_superattack_gain_attack_dash();
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
        fnc_superattack_gain_attack_dash();
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
if state = 6
{
    dmg_multiplier = 4;
} else dmg_multiplier = 1;   
#endregion

#region HitCD
if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;
    
if hits_cd!=0 hits_cd++;
if hits_cd=10 hits_cd=0;
#endregion

#endregion 

#region смерть

if enemy_hp <= 0
{    
    var d = instance_create_depth(x,y,depth,obj_boss_pl_phase1_death);
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