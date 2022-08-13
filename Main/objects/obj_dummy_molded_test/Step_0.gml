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
    		vspd +=0.2;	
    	}    
    #endregion

#region Получение урона от добиваний
if delay > 0 
{
    delay -=0.5;   
}
if flip > 0
{
    flip -=0.05;   
}

#region от обычного добивания
if place_meeting(x,y,obj_hitbox_mask_finisher)  && hit_cd = 0 //&& getKicked = 0
{
    vspd = -2;
    hspd = sign(obj_Player.dir)*1;
    getKicked = 1;
    delay = 1;  
    hit_cd = 1;
}
if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 1
    {
        getKicked = 0;
        hspd = 0;
        vspd = 0;
    }
#endregion

#region от выпада 
if place_meeting(x,y,obj_hitbox_mask_finisher_forward)  && hit_cd = 0 //&& getKicked = 0
{
    vspd = -3;
    hspd = sign(obj_Player.dir)*4;
    getKicked = 2;
    delay = 1;   
    hit_cd = 1;
    getBounced = 0;
}
if place_meeting(x-hspd,y,obj_block)  && getBounced = 0 && getKicked = 2
{
    vspd = -2;
    hspd = 1;
    getBounced = 1;
}
if place_meeting(x+hspd,y,obj_block)  && getBounced = 0 && getKicked = 2
{
    vspd = -2;
    hspd = -1;
    getBounced = 1;
}

if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 2
    {
        getKicked = 0;
        hspd = 0;
        vspd = 0;
        getBounced = 0;
    }
#endregion

#region от подброса

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0 // && getKicked = 0
{
    vspd = -6;
    getKicked = 3;
    delay = 1;  
    getBounced = 1;
    hit_cd = 1;
}

if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 3
{
    if getBounced = 1 
    {
        getBounced = 0;
        vspd = -2;
        delay = 1;
    } else 
    {
        vspd = 0;
        getBounced = 0;
        getKicked = 0
    }
}

#endregion

#region от удара вниз

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 //&& getKicked = 0 
{
    vspd = 6;
    getKicked = 4;
    delay = 1;  
    getBounced = 1;
}
if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 4
{
    
    if getBounced = 1 
    {
        getBounced = 0;
        vspd = -4;
        getKicked = 4;
        delay = 1;
    } else 
    {
        vspd = 0;
        getBounced = 0;
        getKicked = 0
    }
}

#endregion

#endregion



#region Получение урона

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 && obj_Player.comboMeter < 4
        {
        	obj_Player.vspd = -1.8;
        }  
        hit_cd = 1;
        enemy_hp -= 1;
        state = 4;
        if obj_Player.x < x 
        {
        	instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        } else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
        
        if !place_meeting(x,y+1,obj_block) && flip = 0
        { 
            flip = 1;   
            vspd = 0;
        }
        
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
            obj_Player.isRecoil = 1;
            obj_Player.dashing_timer_count = 1;
            
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
                state = 4;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
            }   image_speed = 0;    
        }


#region hit_cd 

if hit_cd != 0
{
    hit_cd ++;   
}
if hit_cd = 10
{
    hit_cd = 0;   
}

#endregion

#region получение урона

if state = 4
{

    image_speed = 0;
    if hit_cd = 0
    {
        state = 3;
        t = 0;
    }   
}

#endregion

#endregion

#region Смерть
if enemy_hp <= 0
{
    var i = instance_create_depth(x,y,depth,obj_firing_molded_dead);
    i.image_xscale = image_xscale;
    instance_destroy();
}
#endregion