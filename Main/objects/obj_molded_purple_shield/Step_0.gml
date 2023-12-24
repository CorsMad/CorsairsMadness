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

    	if !place_meeting(x,y+vspd, obj_block) && flip = 0
    	{
    		vspd +=0.1;	
    	}    
		
    #endregion
/*
0 - патруль
1 - поход к игроку
2 - удар щитом
3 - удар вокруг
4 - получение урона от автоатак
5 - стан
6 - получение урона от суперов
*/

oleg++;
if oleg = 50{
   if state = -1 state = 1;
   oleg = 0;
}

#region anim



if state = 0
{
    sprite_index = spr_molded_purple_shielder_idle;
    image_speed = 1;
}

if state = 1
{
    if place_meeting(x,y+1,obj_block)
    {
        image_speed = 1;
        sprite_index = spr_molded_purple_shielder_walk;
        if hspd > 0 image_xscale = -1; 
        if hspd < 0 image_xscale = 1;
    } else
    {
        sprite_index = spr_molded_purple_shielder_jump;
        image_speed = 0;
        if vspd > 0 image_index = 1 else image_index = 0
    }
}

if state = 2
{
    switch(t)
    {
        case 1:
            sprite_index = spr_molded_purple_shielder_idle
            image_speed = 1;
            break;
        case 50:
            sprite_index = spr_molded_purple_shielder_attack1;
            image_speed = 0;
            image_index = 0;
            break;
        case 55:image_index = 1;break;
        case 60:image_index = 2;break;
        case 65:image_index = 3;break;
        case 100:image_index = 4;break;
        case 105:image_index = 5;break;
        case 110:image_index = 6;break;
        case 115:image_index = 7;break;        
        case 120:
            sprite_index = spr_molded_purple_shielder_idle
            image_speed = 1;
            break;
    }   
}

if state = 3
{
    switch(t)
    {
        case 1:
            sprite_index = spr_molded_purple_shielder_idle
            image_speed = 1;
            break;
        case 50:
            sprite_index = spr_molded_purple_shielder_attack2;
            image_speed = 0;
            image_index = 0;
            break;
        case 55:image_index = 1;break;
        case 120:image_index = 2;break;
        case 125:image_index = 3;break;
        case 130:image_index = 4;break;
        case 135:image_index = 5;break;
        case 140:image_index = 6;break;
        case 145:image_index = 7;break;        
        case 150:image_index = 8;break; 
        case 155:
            sprite_index = spr_molded_purple_shielder_idle
            image_speed = 1;
            break;
    }   
}

if state = 5
{
    sprite_index = spr_molded_purple_shielder_stun;
    image_speed =1;
}

#endregion

if state = 0 // патруль 
{
	if instance_exists(obj_Player)	
    {
        if abs(obj_Player.x-x) < 128
        {
            state = 1;   
        }
    }
}

if state = 1 // подход к игроку
{
	if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{	
			if (obj_Player.x < x && abs(obj_Player.x - x) > 32) hspd = -1;

		
			if (obj_Player.x > x  && abs(obj_Player.x - x) > 32) hspd = 1;
	
			if collision_line(x,y-16,x+hspd*32,y-16,obj_block,false,false) {vspd = -4;};
            
			
			if ((abs(obj_Player.x - x) < 48) && (abs(obj_Player.y - y) < 8)) {state = choose(2,3);hspd = 0;vspd = 0;}
		}
	}
}

if state = 2 // атака щитом по земле
{
	t++;
    if t = 105
    {
        fnc_snd_play_onetime(snd_follower_ground_hit);
        instance_create_depth(x-24,y,depth-1,obj_sfx4)
        instance_create_depth(x+24,y,depth-1,obj_sfx4)
        var w1 = instance_create_depth(x-24,y,depth-1,obj_molded_purple_wave)   
        var w2 = instance_create_depth(x+24,y,depth-1,obj_molded_purple_wave)   
        w1.hspd = -2;
        w2.hspd = 2;
    }
	if t = 150
	{
		t = 0;
		state = 1;	
	}
}

if state = 3 // круговая атака
{
	t++;   
    if t=125
    {
        var a2 = instance_create_depth(x,y,depth,obj_molded_purple_shield_aoe);
        a2.image_xscale  =image_xscale;
    }
	if t = 190
	{
		t = 0;
		state = 1;	
	}
}

#region получение урона

if hit_cd!= 0 hit_cd++;
if hit_cd = 10 hit_cd = 0;

if hits_cd!= 0 hits_cd++;
if hits_cd = 10 hits_cd = 0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red = 5 {t_red = 0;image_blend =c_white;}



#region урон от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    hit_cd = 1;
    fnc_superattack_gain_specattack();
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_hit(2);
    enemy_hp-=1;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    hit_cd = 1;
    fnc_superattack_gain_specattack();
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_down(2);
    enemy_hp-=1;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    hit_cd = 1;
    fnc_superattack_gain_specattack();
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(2);
    enemy_hp-=1;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    hit_cd = 1;
    fnc_superattack_gain_specattack();
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_up(2);
    enemy_hp-=1;
    t_red = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}   
}


#endregion

#region урон от суперов

if hits_cd = 0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) || place_meeting(x,y,obj_hitbox_mask_superattack_aoe)){
    hit_stored = 0;
	hit_cd = 1;
    hits_cd = 1;
    t =0 ;
	state = 5;
    fnc_molded_blood_forward(2);
    fnc_molded_blood_up(2);
    fnc_molded_blood_forward(2);
    fnc_molded_blood_up(2);
    enemy_hp-=10;   
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_blood_forward(2);
        fnc_molded_blood_up(2);
        enemy_hp-=5;
    }

#endregion

#region от дэша
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 
{
	hit_cd = 1;
    fnc_superattack_gain_attack_dash();
	if instance_exists(obj_masked_clone)
	{
		hit_stored++;
	}
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;

    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(2);
    enemy_hp-=1;
    t_red = 1;
}
#endregion

#region от атаки

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
	hit_cd = 1;
    fnc_superattack_gain_attack_dash();
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
    enemy_hp-=1;
    t_red = 1;
}

#endregion


#endregion

#region урон от клона

if hit_stored > 0
{
    if instance_exists(icon) && state != 5  {
        if (hit_stored >=14 && icon.state = 0) {icon.state = 1;fnc_snd_play_over(snd_boat_parrot);}
    }
    
	if obj_Player.isDead = 132
	{
		if hit_stored >= 14
		{
			hit_stored = 0;
			hit_cd = 1;
			state = 5;
            if instance_exists(icon) {icon.state = 2;fnc_snd_play_over(snd_skate_human);}
    
            icon.image_alpha = 1;
			t = 0;
		} else {hit_stored = 0;t=0;hit_cd =1;}
	}
}

#endregion

#region СТАН
if state = 5
{
	t++;
	hspd = 0;
    
    if t mod 20 = 0 instance_create_depth(x+random_range(-10,10),y-random_range(20,28),depth-1,obj_sfx_boss1_stars);
	if t = 200 
	{
		t = 0;
		state = 1;
	}
}
#endregion

#region смерть

if enemy_hp <= 0 || y > room_height+32
{
    fnc_molded_dark_essence_none();
    var death = instance_create_depth(x,y,depth,obj_molded_purple_shielder_death)   ;
    death.image_xscale = image_xscale;
    instance_destroy();
}
#endregion