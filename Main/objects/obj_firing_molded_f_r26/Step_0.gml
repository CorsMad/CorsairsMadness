/// @description Insert description here
// You can write your code in this editor

#region ожидание
if state = 1
{	
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        fnc_image_xscale_to_player();
        sprite_index = spr_molded_firing_idle;
        image_speed = 1;
    	if instance_exists(obj_Player)
            {
                var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        	    if dis < 200 
        		{
                    attack_counter =0;
                    image_index = 0;
        	        state = 2;
        	    }   
            }
    }  else  image_speed = 0;
}
#endregion

#region подготовка и выстрел
if state = 2
{
    sprite_index = spr_molded_firing_attack;
    image_speed = 0;
    if !place_meeting(x,y,obj_item_hook_masked)
    {
    	t++;
    	switch(t)
    	{
            case 5:     image_index = 1;break;
            case 10:    image_index = 2;break;
            case 15:    image_index = 3;break;
            case 20:    image_index = 4;
                        fnc_image_xscale_to_player();
                        attack_counter+=1;
                        if image_xscale = 1
                        {
                            instance_create_depth(x+22,y-24,depth,obj_firing_molded_projectile);
                        } else instance_create_depth(x-22,y-24,depth,obj_firing_molded_projectile);
                        break;
            case 25:    image_index = 5;break;
            case 30:    image_index = 6;break;
            case 35:    image_index = 0;break;
            case 50:    if attack_counter = 3 
                        {
                        
                            state = 3;
                            image_index = 0;
                            t = 0;
                            attack_counter = 0;
                        } else  fnc_image_xscale_to_player(); t = 0;
                      
                        break;
    	}	
    }
}	
#endregion

#region ожидание
if state = 3
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        sprite_index = spr_molded_firing_idle;
        image_speed = 1;
        fnc_image_xscale_to_player();
        if image_index == image_number
        {
            attack_counter = 0;
            t = 0;
            image_index = 0;
            if instance_exists(obj_Player)
            {
                var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        	    if dis < 200 
        		{  
        	        state = 2;
        	    }   else state = 1;
            }
        }
    }   else image_speed = 0;
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
            obj_Player.isRecoil = 1;
            if (obj_Player.dash_counts = 0) obj_Player.dash_counts = 1;
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
if hit_cd = 20
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
    if instance_exists(obj_wall_trigger_close1_f1_r26)
    {
        obj_wall_trigger_close1_f1_r26.state = 2;
        obj_wall_trigger_close1_f1_r26.t = 0;   
    }
}
#endregion