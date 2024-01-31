/// @description Insert description here
// You can write your code in this editor

#region Передвижение
if state != 0
{
    if place_meeting(x,y+1,obj_block_flw)
    {
        isGrounded = 1;   
    } else isGrounded = 0;

	if place_meeting(x+hspd, y, obj_block_flw)
	{
		while (!place_meeting(x+sign(hspd), y, obj_block_flw )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_block_flw) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block_flw )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block_flw)
	{
		vspd +=0.2;	
	}
}	

#endregion

#region Появление

if state = 0
{   
    if vspd > 0 && place_meeting(x,y+vspd,obj_block_flw)
    {
        state = 2; 
        vspd = 0;     
    }
    y+=vspd;
    vspd+=0.2;
}

#endregion

#region Ожидание после приземления
if state = 2
{
    sprite_index = spr_follower_grounded_landing;
    t++;
    image_speed = 0.5;
    if t = 1
    {
        fnc_snd_play_onetime(snd_follower_landing);   
    }
    if t = 5
    {
        instance_create_depth(x+16,y-8,depth-1,obj_sfx_dust_expl_small);
        instance_create_depth(x-16,y-8,depth-1,obj_sfx_dust_expl_small);
        instance_create_depth(x,y,depth-1,obj_sfx4);    
    }
    if t = 20
    {
        t = 0;
        image_index = 0;
        state = 3;
    }
}
#endregion 

#region Перед 1 разговором
if state = 3
{
    t++;
    if t = 120
    {
        image_index = 0;
        sprite_index = spr_follower_grounded_to_talk;
        t = 0;
        state = 4;
    }
}
#endregion

#region to talk
if state = 4 
{
    image_speed = 0.5;
    t++;
    if t = 40
    {
        instance_create_depth(0,0,0,obj_text_f1_r33_cutscene1);
        state = 5;
        sprite_index = spr_follower_grounded_talk;
        image_index = 0;
        t = 0;
    }
} 

#endregion

#region Talk

if state = 5
{
    image_speed = 0.5;   
}

#endregion

#region Fade away

if state = 7
{
    t++;
    if t = 1
    {
        fnc_msc_stop_play_slow();
        sprite_index = spr_follower_grounded_jump;
        hspd = -4;
    	vspd = -6;  
        isOnMsc = 1;
    }
   
}

#endregion

#region Получение урона

if isVulnerable = 1
{

#region hit_cd
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0	
{
    instance_create_depth(x,y-choose(16,32),depth-1,obj_sfx_weapon_slash);
	hit_cd = 1;
	hits += 1;
}
if hit_cd > 0 
{
	hit_cd+=1;	
}
if hit_cd > 20 
{
	hit_cd = 0;	
}

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0	
{
    instance_create_depth(x,y-choose(32,48),depth-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
	hit_cd = 1;
	hits += 1;
}
if hit_cd > 0 
{
	hit_cd+=1;	
}
if hit_cd > 20 
{
	hit_cd = 0;	
}


#endregion

}


#endregion


if hits >= 5 && state != 7
{
    isVulnerable = 0;
    state = 6;
    if instance_exists(obj_cutscene_f1_r33_1)
    {
        obj_cutscene_f1_r33_1.state = 2;
    }
    if instance_exists(obj_Player)
    {
		obj_Player.isDead = 2; 
        obj_Player.attackbuffer = 0;
        obj_Player.airattackbuffer = 0;
        obj_Player.dashingbuffer = 0;
        obj_Player.hookingbuffer = 0; 
        obj_Player.fspd = 0;
        obj_Player.hspd = 0;
        obj_Player.carryspd = 0;
        obj_Player.afterhookspd = 0;
        obj_Player.attackspd = 0;
        obj_Player.isAttacking = 0;
        obj_Player.isAirattacking = 0;
        obj_Player.isAirattacking_timer = 0;
        obj_Player.spd = 0;
        obj_Player.key_left = 0;
        obj_Player.key_right = 0;
        obj_Player.isDashing = 0;
        obj_Player.isHooking = 0;
        obj_Player.isRecoil = 0;
		obj_Player.attackbuffer = 0;
        obj_Player.airattackbuffer = 0;
        obj_Player.dashingbuffer = 0;
        obj_Player.hookingbuffer = 0;
		obj_Player.comboMeter = 0;
		
    }
    
}

#region Анимация
if state!= 7
{
    if hspd!= 0
    {
        image_xscale  = sign(hspd); 
    }
}

if state != 0
{
    bl_t++;
    if bl_t = 10
    {
        bl_t = 0;
        if state = 23 
        {
            if image_xscale = 1
            {
                instance_create_depth(x+random_range(16,24),y+random_range(-32,-16),depth+1,obj_follower_grounded_blob);    
            }   else    instance_create_depth(x+random_range(-24,-16),y+random_range(-32,-16),depth+1,obj_follower_grounded_blob);    
        }
        instance_create_depth(x+random_range(-8,8),y+random_range(-32,-16),depth+1,obj_follower_grounded_blob);
    }
}

if state = 0
{
    sprite_index = spr_follower_grounded_jump;   
}

if state = 1
{
    if isGrounded = 1
    {
        sprite_index = spr_follower_grounded_walk;
        if abs(hspd) = 2.5
        {
            image_speed = 1;   
        } else image_speed = 1.5;
    } else sprite_index = spr_follower_grounded_jump;
}

if state = 3
{
    sprite_index = spr_follower_grounded_idle;
    image_speed = 1;
}

if state = 7
{
    sprite_index = spr_follower_grounded_jump;  
    if instance_exists(obj_Player)
    {
        
        obj_Player.isDead = 0;   
    }
}

#endregion

#region Прыжок
        if place_meeting(x,y, obj_block_jump_small_flw) && state = 1 && isGrounded = 1 && state !=21 && state !=22 && state !=23 && state !=3 && state !=4
    	{
            hspd = sign(hspd)*2.5;
    		vspd = -6;	
    	}
    
        if place_meeting(x,y,obj_block_jump_big_flw) && state = 1 && isGrounded = 1 && state !=21 && state !=22 && state !=23 && state !=3 && state !=4
        {
            hspd = sign(hspd)*3.75;
            vspd = -6;
        }
        
        if place_meeting(x,y,obj_block_jump_verysmall_flw) && state = 1 && isGrounded = 1 && state !=21 && state !=22 && state !=23 && state !=3 && state !=4
        {
            hspd = sign(hspd)*1.75;;
            vspd = -6;
        }
        
        
#endregion


#region удаление

if x < -320
{
    instance_destroy();   
}

#endregion