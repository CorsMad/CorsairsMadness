/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_item_hook_masked)
{
#region Movement

if place_meeting(x+fspd, y, obj_block)
    {
        while (!place_meeting(x+sign(fspd), y, obj_block )) 
        {
        	x+= sign(fspd);
        }
        fspd = -fspd;   
    }
    x += fspd;

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
if spd!=0
{
    fspd = sign(fspd)*spd;
}

if fspd > 0
{
    image_xscale = 1   
}
if fspd < 0 
{
    image_xscale = -1;   
}

if place_meeting(x,y+1,obj_block)
{
    isGrounded = 1;   
} else isGrounded = 0;



#endregion

#region Передвижение

if isGrounded = 1
{
    if ((abs(obj_Player.y-y) < 48) && (abs(obj_Player.x-x) < 256))
    {
        spd = 2.5;   
    } else spd = 1;
}
   

#endregion

#region Прыжок

    if (abs(obj_Player.x-x) < 128) && isGrounded = 1 && t = 0
    {
        t = 1;
        if (fspd < 0 && obj_Player.x < x) || (fspd > 0 && obj_Player.x > x )
        {
            vspd = -4;   
        }
    }

    if t!= 0
    {
        t++; 
    }
    if t = 100
    {
        t = 0;   
    }
#endregion

#region Получение урона
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
        		if obj_Player.isGrounded = 0 
        		{
        			obj_Player.vspd = -3.2;
        		}
                sprite_index = spr_molded_firing_takedmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 4;
                fnc_superattack_gain_attack_dash();
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
            }   image_speed = 0;
            
        }
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
    	{
            sprite_index = spr_molded_firing_takedmg;
            hit_cd = 1;
            state = 4;
            enemy_hp -=1;
            vspd = -1.5;
    		obj_Player.image_index = 0;
            obj_Player.isDashing = 0;
            obj_Player.vspd = -1;
            obj_Player.isRecoil = 1;
            obj_Player.dashing_timer_count = 1;
            fnc_superattack_gain_attack_dash();
    		if obj_Player.x < x 
    		{
    			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
    		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    	}   
if place_meeting(x,y,obj_hitbox_mask_hook) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
        		if obj_Player.isGrounded = 0 
        		{
        			obj_Player.vspd = -3.2;
        		}
                sprite_index = spr_molded_firing_takedmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 4;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                vspd = -1.5;

            } else  image_speed = 0;
        
        }

if place_meeting(x,y,obj_firing_molded_projectile_reverse) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                sprite_index = spr_molded_firing_takedmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 4;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
            }   image_speed = 0;    
        }

if place_meeting(x,y,obj_firing_molded_projectile_reverse) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                var1 = instance_place(x,y,obj_firing_molded_projectile_reverse) 
                {
                    with var1 
                        {
                        instance_destroy();
                        }
                }
                sprite_index = spr_molded_firing_takedmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
            }   image_speed = 0;    
        }

if place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) ||
place_meeting(x,y,obj_hitbox_mask_superattack_aoe) ||
place_meeting(x,y,obj_hitbox_mask_superattack_missle){
    enemy_hp = 0;   
}

#region hit_cd 

if hit_cd != 0
{
    hit_cd ++;   
}
if hit_cd = 20
{
    hit_cd = 0;   
}

#endregion

#endregion

#region Анимация
if isGrounded = 1
{
    sprite_index = spr_molded_crawling_run;
    if spd = 1 
    {
        image_speed = 1;   
    } else image_speed = 2;
}

if isGrounded = 0
{
    sprite_index = spr_molded_crawling_jump;   
}
#endregion

} 

#region Смерть

if enemy_hp <= 0
{
    
    instance_destroy();
    instance_destroy(mask);
    
    var i = instance_create_depth(x,y,depth,obj_crawling_molded_dead);
    i.hspd = fspd;
}
if place_meeting(x,y,obj_hitbox_mask_superdash)
{
    enemy_hp = 0;   
}
#endregion