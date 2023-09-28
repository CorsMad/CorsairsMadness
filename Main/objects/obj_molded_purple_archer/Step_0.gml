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
1 - Ожидание 1
2 - прыжок + выстрел
3 - ожидание 2
4 - выстрел
5 - получение урона от атак
6 - получение урона от дэша
7 - стан от клонурона

*/

#region anim

if hit_cd != 0
{
    if state!=6 && state!=6.5
    {
        if place_meeting(x,y+1,obj_block) 
        {
            image_speed = 0;
            image_index = 0;
            sprite_index = spr_molded_purple_lancethrower_dmgground;
        } else 
        {
            image_speed = 0;
            image_index = 0 
            sprite_index = spr_molded_purple_lancethrower_dmgair;
        }   
    } else 
    {
        if state = 6
        {
            if hspd!=0 
            {
                sprite_index = spr_molded_purple_lancethrower_dmgthrowhoriz ;
                if vspd < 0 image_index = 0 else image_index = 1;
            } else 
            {
                sprite_index = spr_molded_purple_lancethrower_dmgthrowvert  
                if !place_meeting(x,y+1,obj_block)
                {
                    if vspd < 0 image_index = 2 else image_index = 0;   
                } else image_index = 1;
            }
            image_speed = 0;
    
        }
        if state = 6.5
    {
        if t < 35 
        {
            sprite_index = spr_molded_purple_lancethrower_dmgthrowvert  
            image_index = 1; image_speed = 0;
        } else {image_speed = 1;sprite_index = spr_molded_purple_lancethrower_getup ;}   
    }   
    }
} else 
{

if state!=0 && state!=6 && state!=6.5 && state!=7
{
    if state = 1 // на земле ждет прыжка
    {   
        if obj_Player.x < x image_xscale = 1 else image_xscale = -1;
        
        if t < 60
        {
            image_speed = 1;
            sprite_index = spr_molded_purple_lancethrower_idle;
        }
        if t >=60
        {
            image_speed = 0;
            sprite_index = spr_molded_purple_lancethrower_jump;
            switch(t)
            {
                case 61: image_index = 0; break;  
                case 65: image_index = 1; break;  
                case 70: image_index = 2; break;  
            }
        }
    } else 
    {
          
        if t_attack!=0 // начинает атаку
        {
            image_speed = 0; 
            if place_meeting(x,y+1,obj_block) {
                sprite_index = spr_molded_purple_lancethrower_throwonground;
                if instance_exists(obj_Player){                
                    if obj_Player.x < x image_xscale = 1 else image_xscale = -1;
                }
            }
            if !place_meeting(x,y+1,obj_block) 
            {
                
                if hspd < 0 
                {
                    image_xscale = 1; 
                    if obj_Player.x < x sprite_index = spr_molded_purple_lancethrower_throwairleft;
                    else sprite_index = spr_molded_purple_lancethrower_throwairright;
                }
                if hspd > 0 
                {
                    image_xscale = -1; 
                    if obj_Player.x < x sprite_index = spr_molded_purple_lancethrower_throwairright;
                    else sprite_index = spr_molded_purple_lancethrower_throwairleft;
                }
                
                
            }
            switch(t_attack)
            {
                case 1: image_index = 0;break;   
                case 5: image_index = 1;break;   
                case 10:image_index = 2;break;   
                case 40:image_index = 3;break;   
                case 45:image_index = 4;break;   
                case 50:image_index = 5;break;   
                case 55:image_index = 6;break;   
            }
        } else
        {
            if !place_meeting(x,y+1,obj_block) 
            {
                image_speed = 0;
                sprite_index = spr_molded_purple_lancethrower_jump;
                image_index = 3;
                
            }
            if place_meeting(x,y+1,obj_block)
            {
                if obj_Player.x < x image_xscale = 1 else image_xscale = -1;
                sprite_index = spr_molded_purple_lancethrower_idle;
                image_speed = 1;
            }
        }
    }
    
    } else {
        sprite_index = spr_molded_purple_lancethrower_idle;
        image_speed = 1;   
    }

if state = 6
{
    if hspd!=0 
    {
        sprite_index = spr_molded_purple_lancethrower_dmgthrowhoriz ;
        if vspd < 0 image_index = 0 else image_index = 1;
    } else 
    {
        sprite_index = spr_molded_purple_lancethrower_dmgthrowvert  
        if !place_meeting(x,y+1,obj_block)
        {
            if vspd < 0 image_index = 2 else image_index = 0;   
        } else image_index = 1;
    }
    image_speed = 0;
    
}
if state = 6.5
{
    if t < 35 
    {
        sprite_index = spr_molded_purple_lancethrower_dmgthrowvert  
        image_index = 1; image_speed = 0;
    } else {image_speed = 1;sprite_index = spr_molded_purple_lancethrower_getup ;}   
}
if state = 7
{
    sprite_index = spr_molded_purple_lancethrower_death;
    image_speed = 0;
    image_index = 0;
}
}
#endregion

if t_attack!= 0 t_attack++;
    if t_attack = 40 {instance_create_depth(x,y-24,depth-1,obj_molded_purple_archer_projectile)} //выстрел}
if t_attack >= 80 t_attack=0;

if state = 0
{
	if abs(obj_Player.x - x) < 200 
    {
        image_index = 0;
        state = 1;	
    }
}

if state = 1 // ожидание1
{
	t++;
    
	if t = 100
	{		
		t_attack = 1;
		t = 0;
		vspd = choose(-4,-5);
		y-=1;
		if collision_line(x,y-16,x+128,y-16,obj_block,false,false) hspd = choose(-2,-3,-1); else
		if collision_line(x,y-16,x-128,y-16,obj_block,false,false) hspd = choose(1,2,3); else
		hspd = choose(-1,-2,-3,1,2,3);
		state = 2;
	}	
}

if state = 2 // прыжок и выстрел
{
	if!place_meeting(x,y+1,obj_block)
	{
		if place_meeting(x+hspd,y,obj_block) hspd = -hspd/2;	
	}
	if place_meeting(x,y+1,obj_block)
	{
		hspd = 0;	
	}
	if place_meeting(x,y+1,obj_block) && t_attack = 0
	{
	state = 3;	
	}
}

if state = 3 // ожидание 2
{
	t++;
	if t >= 50
	{
		t = 0;
		state = 4;
		t_attack = 1;
	}
	
}

if state = 4 // выстрел на месте
{
	if t_attack = 0
	{
		state = 1;	
	}
}

#region получние урона

if hit_cd!=0 hit_cd ++;
if hit_cd = 10 hit_cd = 0;

if hits_cd!=0 hits_cd ++;
if hits_cd = 10 hits_cd = 0;

if flip!=0 flip++;
if flip = 10 flip = 0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red = 5 {t_red = 0;image_blend =c_white;}

#region от Дэша

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd=0
{
    if place_meeting(x,y+1,obj_block) t_attack = 0;
	if instance_exists(obj_masked_clone) hit_stored++;
	hit_cd = 1;
	state = 6
    fnc_superattack_gain_attack_dash();
	t = 0;
	t_attack = 0;
    enemy_hp-=1;
    t_red = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(2);
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	bounce = 1;
	hspd = sign(obj_Player.dir)*4;
	if place_meeting(x,y+1,obj_block) 
	{		
		vspd = -2;
		y-=1;
	}
}

if state = 6
{
    if place_meeting(x,y+1,obj_block) t_attack = 0;
	if place_meeting(x+hspd,y,obj_block)
	{
		hspd = -sign(hspd);	
	}
	if place_meeting(x,y+1,obj_block) 
	{
		if bounce = 1
		{
			bounce = 0;
			vspd = -2;
			hspd = 0;
		}  else {hspd = 0;state = 6.5;t=0;}
	}
}

if state = 6.5
{
	t++;	
	if t= 50
	{
		t = 0;
		state = 1;
	}
}

#endregion

#region от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
    t_attack = 0;
	hspd = sign(obj_Player.dir)*2;
	vspd = -2;
    fnc_superattack_gain_specattack();
	if place_meeting(x,y+1,obj_block) y-=1;
	//bounce = 1;
	state = 6;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_hit(2);
    enemy_hp-=1;
    t_red = 1;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
    t_attack = 0;
    fnc_superattack_gain_specattack();
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	if place_meeting(x,y+1,obj_block) y-=1;
	//bounce = 1;
	state = 6;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(2);
    enemy_hp-=1;
    t_red = 1;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
    fnc_superattack_gain_specattack();
	//hspd = sign(obj_Player.dir)=2;
	vspd = -4;
	if place_meeting(x,y+1,obj_block) y-=1;
	bounce = 1;
	state = 6;
    t_attack = 0;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_up(2);
    enemy_hp-=1;
    t_red = 1;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
    fnc_superattack_gain_specattack();
	//hspd = sign(obj_Player.dir)=2;
	if !place_meeting(x,y+1,obj_block)
	{
		vspd = 6;bounce =1;
	} else vspd = -2;
	if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_down(2);
    enemy_hp-=1;
    t_red = 1;
	bounce = 1;
    t_attack = 0;
	state = 6;
}
    
#endregion

#region от Суперов

if hits_cd = 0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) || place_meeting(x,y,obj_hitbox_mask_superattack_h2) ||
place_meeting(x,y,obj_hitbox_mask_superattack_aoe)) {
    if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
    t_attack = 0;
    hits_cd = 1;
    fnc_superattack_gain_specattack();
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	if place_meeting(x,y+1,obj_block) y-=1;
	//bounce = 1;
	state = 6;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(2);
    fnc_molded_blood_forward(2);
    fnc_molded_blood_up(2);
    fnc_molded_blood_up(2);
    enemy_hp-=10;
    t_red = 1;  
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_blood_forward(2);
        fnc_molded_blood_up(2);
        enemy_hp-=5;
    }

#endregion

#region обычная атака
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
    if place_meeting(x,y+1,obj_block) t_attack = 0;
	if instance_exists(obj_masked_clone) hit_stored++;
	hit_cd = 1;
    fnc_superattack_gain_attack_dash();
    enemy_hp-=1;
    t_red = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.2;
    }  
	if state = 6 {vspd = 0;hspd = 0;flip = 1;}
}
#endregion

#region клонаатк

if obj_Player.isDead = 132
{
	if hit_stored >=14
	{
		hit_stored = 0;
		state = 7;
		hspd = 0;
		vspd = 0;
		hit_stored = 0;
		t = 0;
		t_attack = 0;
        enemy_hp-=10
        t_red = 1;
	} else hit_stored = 0
}

if state = 7
{
	t++;
    if t mod 20 = 0 instance_create_depth(x+random_range(-10,10),y-random_range(20,28),depth-1,obj_sfx_boss1_stars);
	if t >= 200 && place_meeting(x,y+1,obj_block)
	{
		t = 0;	
		state = 2;
	}
}


#endregion

#region смерть
if enemy_hp <=0 || y > room_height+32
{
    var death = instance_create_depth(x,y,depth,obj_molded_purple_archer_death)   ;
    death.image_xscale = image_xscale;
    instance_destroy();
}
#endregion



#endregion