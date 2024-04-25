/// @description Insert description here
// You can write your code in this editor

#region Коллизии
if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
		{
			spd = -spd;
		}
		if place_meeting(x+spd,y,obj_block)
		{
			while(!place_meeting(x+sign(spd),y,obj_block))
			{
				x = x+sign(spd);	
			}
			spd = -spd;
		}
		x = x+spd;
#endregion

#region CD Boomerang

if boom_timer > 0
{
    boom_timer -= 0.04;   
}

#endregion

#region ожидание/патруль

if state = 0
{
    t++;
    
        if spd > 0 
        {
            mov = 1   
        }
    
        if spd < 0 
        {
            mov = -1;   
        }
    
        if t = 120
        {
            spd = 0;
        }
    
        if t = 200
        {
            t = 0;
            image_index = 0;
            if mov = 1
            {
                spd = -0.25;
            } else spd = 0.25;
        }
        
        
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
	if dis < 140 
	{    
        state = 1;
        t = 0;
        mov = 0;
        spd = 0;
    }
    
        #region Anim
        if spd !=0 sprite_index = spr_bigskel_t2slowwalk; else sprite_index = spr_bigskel_t2idle;
        if spd > 0 image_xscale = -1;
        if spd < 0 image_xscale = 1;
        image_speed = 0.5;
        #endregion
 
}

#endregion

#region Преследование

if state = 1
{
    if instance_exists(obj_Player)
    {
        //if obj_Player.x < x spd = -1 else spd = 1;
        if abs(obj_Player.x - x) < 60 
        {
            if (y - obj_Player.y) > 48
            {
                state = 21;   
            } else state = 2;
            image_index = 0;
        }
            
        if abs(obj_Player.x - x) > 250 state = 31;
        
        if obj_Player.x < x
        {
            if place_meeting(x-10,y,obj_block) spd = 0 else spd = -1;            
        }
        if obj_Player.x > x
        {
            if place_meeting(x+10,y,obj_block) spd = 0 else spd = 1;            
        }
        
    }
    
    #region Anim
        sprite_index = spr_bigskel_t2run;
        image_speed = 1;
        if spd > 0 image_xscale = -1;
        if spd < 0 image_xscale = 1;
        if spd = 0 sprite_index = spr_bigskel_t2idle; else sprite_index = spr_bigskel_t2run;
    #endregion
    
}

#endregion

#region удар по земле

if state = 2
{
    image_speed = 0;
    sprite_index = spr_bigskel_t2attack;
    spd = 0;
    t_attack++;
    switch(t_attack)
    {
        case 1: 
            image_index = 0;   
            break;
        case 5: 
            image_index = 1;   
            break;
        case 10: 
            image_index = 2;   
            break;
        case 35: 
            image_index = 3; 
            if image_xscale = 1 
            {
                var fl = instance_create_depth(x-12,y-24,depth-1,obj_armor_skel_proj_f);   
                fl.hspd = -2;
            }
            if image_xscale = -1
            {
                var fr = instance_create_depth(x+12,y-24,depth-1,obj_armor_skel_proj_f);   
                fr.hspd = 2;
                fr.image_xscale = -1;
            }
            break;
        case 40: 
            image_index = 4;   
            break;
        case 75: 
            image_index = 5;   
            break;
        case 80: 
            state = 3;
            t_attack = 0;
            image_index = 0;;   
            break;
    }
}

#endregion

#region удар по воздуху

if state = 21
{
    image_speed = 0;
    sprite_index = spr_bigskel_t2attackup;
    spd = 0;
    t_attack++;
    switch(t_attack)
    {
        case 1: 
            image_index = 0;   
            break;
        case 5: 
            image_index = 1;   
            break;
        case 10: 
            image_index = 2;   
            break;
        case 35: 
            image_index = 3; 
            instance_create_depth(x,y-48,depth-1,obj_armor_skel_proj_up);
            break;
        case 40: 
            image_index = 4;   
            break;
        case 75: 
            image_index = 5;   
            break;
        case 80: 
            state = 3;
            t_attack = 0;
            image_index = 0;;   
            break;
    }
}

#endregion

#region ожидание после удара

if state = 3
{
    sprite_index = spr_bigskel_t2idle;
    image_speed = 0.5;
    t++;
    if t = 30
    { 
        state = 1;
        t = 0;
        image_index = 0;
    }
}

#endregion

#region Возвращение назад

if state = 31
{
    if x != start_x
    {
        if x < start_x spd =0.25;
        if x > start_x spd =-0.25;
    } else state = 0;
    
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
	if dis < 140 
	{    
        state = 1;
        t = 0;
        mov = 0;
        spd = 0;
    }
    
    
    #region Anim
    sprite_index = spr_bigskel_t2slowwalk;
    if spd > 0 image_xscale = -1;
    if spd < 0 image_xscale = 1;
    image_speed = 0.5;
    #endregion
}

#endregion

#region Переход в состояние без меча

if state = 4 
{
    sprite_index = spr_bigskel_t2transform;
    t++;
    switch(t)
    {
        case 1: 
            image_index = 0;
            break;         
        case 10: 
            image_index = 1;
            break;    
        case 20: 
            image_index = 2;
            break;
        case 30: 
            t = 0;
            state = 5;
            image_index = 0;
            break;       
    }
    image_speed = 0;
}

#endregion

#region удары по земле

if state = 5
{
    image_speed = 0;
    sprite_index = spr_bigskel_t1attack;
    t_attack++;
    switch(t_attack)
    {
        case 1: 
            image_index = 0;
            break;
        case 30: 
            image_index = 1;
            break;
        case 35: 
            image_index = 2;
            break;
        case 40: 
            image_index = 3;
            fnc_snd_play_onetime(snd_follower_ground_hit);
            instance_create_depth(x-14,y,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+14,y,depth-1,obj_sfx_dust_expl_small);
			
			if instance_exists(obj_Player){
				if obj_Player.x > x {
					instance_create_depth(x+14,y,depth-1,obj_armor_skel_boulder_at_player);
					instance_create_depth(x-14,y,depth-1,obj_armor_skel_boulder_left);
				} else {
					instance_create_depth(x-14,y,depth-1,obj_armor_skel_boulder_at_player);
					instance_create_depth(x+14,y,depth-1,obj_armor_skel_boulder_right);
				}
			}
            //instance_create_depth(x-14,y,depth-1,obj_armor_skel_boulder);
            //instance_create_depth(x+14,y,depth-1,obj_armor_skel_boulder);
            break;
        case 60: 
            image_index = 4;
            break;
        case 100: 
            image_index = 5;
            break;
        case 105: 
            t_attack = 0;
            break;
            
    }
    /*
    if t_attack = 100
    {
        t_attack=0;
        //создание камней
    }
    */
}

#endregion

#region переход в состояние без брони

if state = 6 
{
    t++;
    sprite_index = spr_bigskel_t0transf;
    image_speed = 1;
    //анимация перехода
    if t = 30
    {
        t = 0;
        state = 7;
        image_index = 0;
    }
}

#endregion

#region бегство

if state = 7
{
    enemy_hp = 1;
    /*
    if obj_Player.x < x spd = 3; else spd = -3;
    if spd > 0 && place_meeting(x+spd,y,obj_block) spd = 0;
    if spd < 0 && place_meeting(x-spd,y,obj_block) spd = 0;
    */
    if obj_Player.x < x spd = 3; else spd = -3;
    if place_meeting(x+spd,y,obj_block) spd = 0;
    
    if spd = 0 scare_t++ else scare_t = 0;
    
    if scare_t = 150 {
        instance_destroy();
        var scare_skel = instance_create_depth(x,y,depth,obj_armor_skel_def);
        scare_skel.image_xscale = image_xscale;
    }
    
    #region Anim
        if spd != 0 sprite_index = spr_bigskel_r0run; else sprite_index = spr_bigskel_t0hide;
        image_speed = 2;
        if spd > 0 image_xscale = -1;
        if spd < 0 image_xscale = 1;
        
    #endregion
}

#endregion

#region #takedmg

     // Атака

    //fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
    
        if (place_meeting(x,y,obj_hitbox)) && hit_cd = 0	
        {
            count_attack++;
    		hit_cd = 1;
    		enemy_hp -= 1;
            if obj_Player.x < x 
    		{
    			instance_create_depth(x-10,y+0,-1,obj_sfx_weapon_slash);
    		} else instance_create_depth(x+10,y+0,-1,obj_sfx_weapon_slash);
    	}
    
    
    // Удар вниз   

    //fnc_take_dmg_hitbox_down(0,-16,-1);
        
        if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
    	{
        
            if instance_exists(obj_hitbox_down)
            {
                count_attack++;
                
                hit_cd = 1;  
                enemy_hp -= 1;
            
                obj_Player.isAttackingdown = 0;
        		obj_Player.attackingdown_timer = 0;
        		obj_Player.vspd = -5;          
            }
    		instance_create_depth(x+0,y-16,-1,obj_sfx_weapon_slash);
    	}    
    
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    


// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

// Получение урона

    fnc_enemy_no_armor_dmg();

#endregion

#region смерть

if enemy_hp < 1 
{
    //achiev
    if count_attack >=12 && count_boomer = 0 {
        fnc_achiev_get("ACH26");
    }
    
    instance_destroy();   
    var d = instance_create_depth(x,y,depth,obj_armor_skel_dead);
    d.sprite_index = sprite_index;
    d.image_xscale = image_xscale;
    d.image_index = image_index;
}

#endregion