/// @description Insert description here
// You can write your code in this editor
#region коллиз
        
		
    	if place_meeting(x+hspd, y, obj_block)
    	{
        	while (!place_meeting(x+sign(hspd), y, obj_block )) 
        	{
        		x+= sign(hspd);
        	}
            hspd = 0;   
    	}
    	x += hspd;

    	if place_meeting(x, y+vspd, obj_block) 
    	{
    	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
    		{
    	        y+= sign(vspd);
    	    }
    	    vspd = 0;
    	}
    	y += vspd;

    	if !place_meeting(x,y+vspd, obj_block)
    	{
    		vspd +=0.2;	
    	}    
		
    #endregion   


/*
0 - ожидание
1 - подход к игроку
2 - удар по земле
3 - подход к середине
4 - кидание бомб
5 - дэш в сторону игрока
6 - застанен
7 - смерть
*/

#region действия
switch(state)
{
    case 0: 
        #region ожидание
            
            #region anim
            sprite_index = spr_boss_sp_idle;
            image_speed = 1;
            #endregion
            
            t++;
            if t = 60
            {
                t = 0;
                state = 1;
            }
        #endregion        
        break;
    case 1: 
        #region подход к игроку
        
        #region anim
        sprite_index = spr_boss_sp_walk;
        image_speed = 1;
        if hspd > 0 image_xscale = 1 else image_xscale = -1;
        #endregion
        
        if instance_exists(obj_Player)
        {
            if obj_Player.x > x hspd=2 else hspd = -2;  
            
            if abs(obj_Player.x-x) < 64
            {
                t = 0;
                hspd = 0;
                state = 2;
            }
        }
        #endregion
        break;
    case 2: 
        #region удар по земле
        t++;
        
        #region anim
        switch(t)
        {
            case 1: sprite_index = spr_boss_sp_shieldattack;image_speed = 0;image_index = 0;break;
            case 5: image_index = 1;break;
            case 10: image_index = 2;break;
            case 15: image_index = 3;break;
            case 20: image_index = 4;break;
            case 45:    image_index = 5;break;
            case 50:    image_index = 6;
                    instance_create_depth(x-24,y,depth-1,obj_sfx4)
                    instance_create_depth(x+24,y,depth-1,obj_sfx4)
                    var w1 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    var w2 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    w1.hspd = -3;
                    w2.hspd = 3;
                    break;
            case 60:    image_index = 5;break;
            case 65:    image_index = 4;break;
            case 95:    image_index = 5;break;
            case 100:    
                    instance_create_depth(x-24,y,depth-1,obj_sfx4)
                    instance_create_depth(x+24,y,depth-1,obj_sfx4)
                    var w1 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    var w2 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    w1.hspd = -3;
                    w2.hspd = 3;
                    image_index = 6;
                    break;
            case 110:image_index = 5;break;
            case 115:image_index = 4;break;
            case 145:image_index = 5;break;
            case 150:
                    image_index = 6;
                    instance_create_depth(x-24,y,depth-1,obj_sfx4)
                    instance_create_depth(x+24,y,depth-1,obj_sfx4)
                    var w1 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    var w2 = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_wave)   
                    w1.hspd = -3;
                    w2.hspd = 3;
                    break;
                    
            case 200:image_index = 5;break;
            case 205:image_index = 4;break;
            case 210:image_index = 3;break;
            case 215:image_index = 2;break;
            case 219:image_index = 1;break;
            case 220:
                t = 0;
                state = 3;
                break;
        }
        #endregion
        #endregion
        break;
    case 3: 
        #region подход к середине
        
        sprite_index = spr_boss_sp_walk;
        image_speed = 1;
        if hspd > 0 image_xscale = 1 else image_xscale = -1;
        
        if x < 240-32
        {
            hspd = 3   
        } else if x > 240+32 
        {
            hspd = -3;   
        }   else {
            hspd = 0;
            t =0 ;
            state = 4;
        }
        
        #endregion
        break;
    case 4: 
        #region кидание бомб
        t++;
        
        #region anim
        switch(t)
        {
            case 1:image_index = 0;sprite_index = spr_boss_sp_bomb_onplace;image_speed = 0;break;
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            case 40:image_index = 9;break;
            case 45:image_index = 10;image_xscale = -1;break;
            case 50:image_index = 11;break;
            case 55:image_index = 8;image_xscale= 1;break;
            case 60:image_index = 11;break;
            case 65:image_index = 8;image_xscale= -1;break;
            case 70:image_index = 11;break;
            case 75:image_index = 8;image_xscale= 1;break;
            case 80:image_index = 11;break;
            case 85:image_index = 8;image_xscale= -1;break;
            case 90:image_index = 11;break;
            case 95:image_index = 8;image_xscale= 1;break;
            case 100:image_index = 11;break;
            case 105:image_index = 8;image_xscale= -1;break;
            case 110:image_index = 11;break;
            case 115:image_index = 8;image_xscale= 1;break;
            case 120:image_index = 11;break;
            case 125:image_index = 8;image_xscale= -1;break;
            case 130:image_index = 11;break;
            case 135:image_index = 8;image_xscale= 1;break;
            case 140:image_index = 11;break;
            case 145:image_index = 8;image_xscale= -1;break;
            case 150:image_index = 11;break;
            case 155:image_index = 8;image_xscale= 1;break;
            case 160:image_index = 11;break;
            case 165:image_index = 8;image_xscale= -1;break;
            case 170:image_index = 11;break;
            case 180:image_index =8;break;
            case 185:image_index =7;break;
            case 190:image_index =6;break;
            case 195:image_index =5;break;
            case 200:image_index =4;break;
            case 205:image_index =3;break;
            case 210:image_index =2;break;
            case 215:image_index =1;break;
            case 220:image_index =0;break;
            case 225:
                sprite_index = spr_boss_sp_idle;
                image_speed = 1;
                break;       
        }
        #endregion
    
        switch(t)
        {
            case 50:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -3;
                b.vspd = -7;
                break;
            case 60:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 3;
                b.vspd = -7;
                break;
            case 70:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -2.5;
                b.vspd = -7;
                break;
            case 80:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 2.5;
                b.vspd = -7;
                break;
            case 90:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -2;
                b.vspd = -6;
                break;
            case 100:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 2;
                b.vspd = -6;
                break;
            case 110:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -1.5;
                b.vspd = -6;
                break;
            case 120:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 1.5;
                b.vspd = -6;
                break;
            case 130:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -1;
                b.vspd = -6;
                break;
            case 140:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 1;
                b.vspd = -6;
                break;
            case 150:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = -0.5;
                b.vspd = -6;
                break;
            case 160:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 0.5;
                b.vspd = -6;
                break;
            case 170:
                var b = instance_create_depth(x,y-64,depth-1,obj_boss_ps_ph1_bomb);
                b.hspd = 0;
                b.vspd = -6;
                break;
            case 350:
                t = 0;
                state = 5;
                break;
        }
        #endregion
        break;
    case 5: 
        t++;
        
        #region anim
        switch(t)
        {
            case 1:sprite_index = spr_boss_sp_dash;image_speed = 0;image_index = 0;break;
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 40:image_index = 6;image_speed = 1;break;

        }
        
        if t> 40
        {
            if image_index >=12 image_index = 6;
            
        } else 
        {
            if obj_Player.x > x  image_xscale = 1 else image_xscale = -1;   
        }
        #endregion
        
        if t = 40
        {
            var d_aoe = instance_create_depth(x,y,depth-1,obj_boss_sp_dash_aoe);
            d_aoe.current_state = state;
            d_aoe.fol = id;
            d_aoe.image_xscale = image_xscale;
            if instance_exists(obj_Player)  if obj_Player.x < x hspd = -5 else hspd = 5;     
        }
        if place_meeting(x+hspd,y,obj_block)
            {
                hspd = -sign(hspd)*1.5
                vspd = -3;
                t = 0;
                state = 5.5
            }
        break;
    case 5.5:   
        #region anim
        sprite_index = spr_boss_sp_jump;
        image_speed = 0;
        if vspd < 0 image_index = 0; else image_index = 1;
        #endregion
        t = 0;
        if  place_meeting(x,y+1,obj_block)
        {
            hspd = 0;
            vspd = 0;
            state = 0;
            t = 0;
        }
        break;
    case 6: 
        t++;
        sprite_index = spr_boss_sp_stun;
        image_speed = 0;
        image_index = 0;
        if t mod 5 = 0 instance_create_depth(x+random_range(-4,4),y+random_range(-50,46),depth-1,obj_sfx_boss1_stars);
        if t= 200
        {
            t = 0;
            state = 0;
        }
        break;
}
#endregion

#region получение урона

#region HitCD
if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;
    
if hits_cd!=0 hits_cd++;
if hits_cd=10 hits_cd=0;
#endregion

#region от дэша
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 
{
	hit_cd = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored++;
	}
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    fnc_superattack_gain_attack_dash();
    obj_Player.dashing_timer_count = 1;
    fnc_molded_dark_blood_forward()
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
}
#endregion

#region урон от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_hit()
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_down();
    enemy_hp-=dmg_multiplier;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_forward();
    enemy_hp-=dmg_multiplier;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    hit_cd = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_superattack_gain_specattack();
    fnc_molded_dark_blood_up();
    enemy_hp-=dmg_multiplier;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
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

#region от атаки

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
    fnc_superattack_gain_attack_dash();
	hit_cd = 1;
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }  
	if instance_exists(obj_masked_clone)
	{
		hit_stored++;
	}
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    enemy_hp-=dmg_multiplier;
    t_red = 1;
}

#endregion

#region Стан

if !instance_exists(obj_masked_clone)
{
    if hit_stored >= 15
    {
        instance_create_depth(x,y-24,depth-1,obj_sfx_player_dead_big);
        if armor = 2
        {
            if instance_exists(icon) icon.state = 2;
        }
        if armor = 1
        {
            if instance_exists(icon) icon.state = 4;
        }
        
        if armor > 0 
        {   
            armor-=1;
            hit_stored = 0;
        }
        if armor = 0
        {
            state = 6;
            hit_stored = 0;
            t = 0;
        }
    } else hit_stored = 0;
}

#endregion

#region броня

if state = 6  dmg_multiplier = 5
if armor = 0 && state!=6 dmg_multiplier = 3;
#endregion


#endregion

#region смерть

if enemy_hp <=0
{
    var d= instance_create_depth(x,y,depth,obj_boss_ps_phase1_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}

#endregion




