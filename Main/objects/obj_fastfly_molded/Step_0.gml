/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_item_hook_masked)
{
#region Патрулирование

if state = 1
{
    sprite_index = spr_fastfly_molded_idle;
    if instance_exists(obj_Player)
    {
        var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        if dis < 180 
        {
            state = 2;
            
        }   
    }
}

#endregion

#region Ожидание после встречи

if state = 2
{
    t++;
    switch(t)
    {
        case 1: image_index = 1;break;
        case 10:image_index = 2;break;
        case 20:image_index = 3;break;
        case 30:image_index = 4;break;
        case 40:image_index = 5;break;
        case 50:image_index = 6;break;
    }
    if t = 60
    {
        spd = 3;
        t = 0;
        state = 3;   
    }
}

#endregion

#region Преследование

if state = 3
{
    if instance_exists(obj_Player) 
    {
        var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    }
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
    
    if abs(hspeed) > 1 
    {
        sprite_index = spr_fastfly_molded_fastfly;   
    } else sprite_index = spr_fastfly_molded_slowfly;
    if hspeed !=0
    {
        image_xscale = sign(hspeed)
    }
    
    #region встреча с игроком
        if instance_exists(obj_Player)
        {
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
            if dis < 96 
            {
            	state = 4;
            }   
        }
    #endregion
    
}

#endregion

#region После столкновением с игроком

if state = 4
{
    t++;
    if t > 30
    {
        hspeed = lerp(hspeed,0,0.05)
        vspeed = lerp(vspeed,0,0.1);
    }
    if abs(hspeed) < 0.1 && abs(vspeed) < 0.1 && t > 30
    {
        hspeed = 0;
        vspeed = 0;
        t = 0;
        state = 5;
        spd = 0;
    }
    if abs(hspeed) > 1 
    {
        sprite_index = spr_fastfly_molded_fastfly;   
    } else sprite_index = spr_fastfly_molded_slowfly;
    if hspeed !=0
    {
        image_xscale = sign(hspeed)
    }
    
 
}

#endregion

#region Остановка и ожидание

if state = 5
{
    t++;
    sprite_index = spr_fastfly_molded_idle;
    image_index = 4;
    if t = 60
    {
        spd = 3;
        t = 0;
        state = 3;  
    }
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
               // sprite_index = spr_molded_firing_takedmg;    
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
            //sprite_index = spr_molded_firing_takedmg;
            hit_cd = 1;
            state = 4;
            enemy_hp -=1;
            vspd = -1.5;
            obj_Player.isDashing = 0;
            obj_Player.vspd = -1;
            obj_Player.isRecoil = 1;
    		obj_Player.image_index = 0;
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
               // sprite_index = spr_molded_firing_takedmg;    
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
                //sprite_index = spr_molded_firing_takedmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 4;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
            }   image_speed = 0;    
        }

if place_meeting(x,y,obj_hitbox_mask_superdash)
{
    enemy_hp = 0;   
}

if place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) ||
place_meeting(x,y,obj_hitbox_mask_superattack_aoe) ||
place_meeting(x,y,obj_hitbox_mask_superattack_missle){
    enemy_hp = 0;   
}
#endregion

}   else 
{
    hspeed = 0;
    vspeed = 0;
}
#region Смерть

if enemy_hp <= 0 
{

    instance_destroy();
    instance_destroy(mask);
    var i = instance_create_depth(x,y,depth,obj_fastfly_molded_dead);
    i.hspeed = hspeed;
    i.vspeed = vspeed;
}

#endregion
    