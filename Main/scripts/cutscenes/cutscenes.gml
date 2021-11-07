
function fnc_player_cutscene()
{
#region Conditions
//Направление спрайта
if image_xscale = 1 
{
	dir = 1;	
} else dir = -1;

if isGrounded = 0 
{
	jump_timer += 1;	
}
if isGrounded = 1 
{
	dash_counts = 1;
	jump_timer = 0;	
}
#endregion

#region Collision check

	fnc_Collision_player(obj_block);
	
#endregion	

#region Movement

// Move left-right


hspd = spd;
fspd = hspd + carryspd + afterhookspd + attackspd;
carryspd = 0;

#region afterhookspd


if afterhookspd !=0 
{
    if key_left || key_right || isGrounded = 1 || key_down || key_down_pressed || key_jump || key_up || isDashing = 1
    {
        afterhookspd = 0;  
    }
    afterhookspd = lerp(afterhookspd,0,0.05);
}


#endregion
#region attackspd
if attackspd != 0
{
    attackspd = lerp(attackspd,0,0.1); 
    if isGrounded = 0 || isAttacking = 0
    {
        attackspd = 0;   
    }
}

#endregion
#region движение влево

if key_left && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_xscale = -1;
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_run;
	} else sprite_index = spr_player_masked_run;
	image_speed = 1.25;
	
	if spd > 0 
	{
		spd = -2;
	}
	if spd <= 0 
	{
		if spd > -2
		{
			spd -=0.5;	
		}
	}
	hspd = spd;
	
}

#endregion
#region движение вправо

if key_right && isRecoil = 0 && isAfterhook = 0 &&  isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 &&  isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{ 
	image_xscale = 1;
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_run;
	} else sprite_index = spr_player_masked_run;
    image_speed = 1.25;
	
	if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
	
	hspd = spd;
	
}

#endregion
#region остановка

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingitem = 0 && isAfterhook = 0 && isRecoil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	hspd = 0;
	spd = 0;
	
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_on_place;
	} else sprite_index = spr_player_masked_idle;
	image_speed = 1.25;
	
}

#endregion
#region прыжок 

if place_meeting(x,y+1,obj_block) 
{
	isGrounded = 1;	
} else isGrounded = 0; 

if isGrounded = 0 && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingitem = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    if isDashing = 0
    {
    if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_jump;
	} else  {
                sprite_index = spr_player_masked_jump;
            }
        image_speed =0;
                if vspd > 0 
            	{
            		image_index = 1;
            	}
            	if vspd <= 0 
            	{
            		image_index = 2;	
            	}    
    }
			
		
		if key_jump_release && vspd < -4 
		{
			vspd = -3;
		}
		if vspd < 6 
			{
				vspd +=0.25;//0.25;
			}
}
if isGrounded  = 1
{
	jump_counts = 1;	
	coyote_timer = 1;
}


if jump_counts = 1 && isRecoil = 0 && isAirThrowingBomb = 0 && isAfterhook = 0 && key_jump && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
{
	audio_play_sound(snd_player_jump,0,0);
	jump_timer+=1;
	vspd = -6;	
	jump_counts -=1;
}

// Время койота

if !place_meeting(x,y+1,obj_block) && coyote_timer > 0 
{
	coyote_timer -= 0.2;	
}
#endregion
#endregion

#region Attack on ground

if key_attack && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isCarry = 0 && !instance_exists(obj_item_hook_masked) && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAttacking = 1;
	sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
	image_speed = 1;
    
    if key_right && dir = 1 
    {
        attackspd = 1;
    }
    
    if key_left && dir = -1
    {
        attackspd = -1;   
    }
    
    
}
if isAttacking = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}	
if isAttacking = 1 && image_index = 5
{
	isAttacking = 0;
    if attackbuffer = 1
    {
        
        if key_right = 1
        {
            image_xscale = 1;  
        }
        if key_left = 1
        {
            image_xscale = -1;
            dir = -1;   
        }
        image_index = 0;
    	isAttacking = 1;
    	sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
    	image_speed = 1;   
        attackbuffer = 0;
        if key_right && dir = 1 
        {
            attackspd = 1;
        }
    
        if key_left && dir = -1
        {
            attackspd = -1;   
        }
    }
}
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
if isAttacking = 1 && !place_meeting(x,y+1,obj_block)
{
	isAttacking = 0;	
    attackbuffer = 0;
}


// буфер атаки

if isAttacking = 1 && image_index > 2 && key_attack
{
    attackbuffer = 1;   
}

#endregion

#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && ((isAfterhook = 0) || (isAfterhook = 1 && !instance_exists(obj_hitbox_mask_hook)))  && !instance_exists(obj_item_hook_masked) && isAirattacking = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_masked_attack1;
	image_speed = 1;
    isAfterhook = 0;
}
if isAirattacking = 1 
{	
	if key_left
	{
		if spd > 0 
		{
			spd = -2;
		}
		if spd <= 0 
		{
			if spd > -2
			{
				spd -=0.5;	
			}
		}
	}
	if key_right 
	{
		if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
		
	}
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
	vspd += 0.25;	
}

if isAirattacking = 1 && jump_timer < 1
{
	spd = 0;	
}
if isAirattacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
if isAirattacking = 1 && image_index = 5
{
	isAirattacking = 0;	
    if airattackbuffer = 1
    {
        image_index = 0;
    	isAirattacking = 1;
    	sprite_index = spr_player_masked_attack1;
    	image_speed = 1;
        isAfterhook = 0;
        airattackbuffer = 0;
    }
}

// буфер атаки в воздухе

if isAirattacking = 1 && image_index > 2 && key_attack  
{
    airattackbuffer = 1;   
}

// буфер притяжки в воздухе


#endregion

#region Dashing
if key_dashing && isCarry = 0 && isAfterhook = 0 && !instance_exists(obj_item_hook_masked) && isRecoil = 0 && isUsingitem = 0 && isGrounded = 0 && isAttacking = 0 && isDashing = 0 && dash_counts > 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
	dash_counts --;
    sprite_index = spr_player_masked_dash;
    image_index = 0;
	isDashing = 1;
	vspd = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
    instance_create_depth(x,y,0,obj_hitbox_mask_dash);
}
if isDashing = 1
{
    sprite_index = spr_player_masked_dash;
    image_speed = 1.25;
	vspd = 0;
    fspd = 4*dir;
    if (image_index > image_number - 1) 
    {
        isDashing = 0;
    }
}

#endregion

#region Recoil
if isRecoil = 1
{
    //recoil_timer++;
    sprite_index = spr_player_masked_recoil;
    image_speed = 0.75;
    isDashing = 0;
    isAirattacking = 0;
    vspd = -1;
    fspd = -0.5*dir;
    
    if image_index  > 3 && key_item && HookEnabled = 1
    {
        hookingbuffer = 1;  
        dashingbuffer = 0;
        airattackbuffer = 0;
    }
    if image_index > 3  && key_dashing
    {
        dashingbuffer = 1; 
        airattackbuffer = 0;
        hookingbuffer = 0;
    }
            
    if image_index > 3  && key_attack
    {
        dashingbuffer = 0; 
        airattackbuffer = 1;
        hookingbuffer = 0;
    }
    
    if (image_index > image_number - 1) 
    {
        
        if hookingbuffer = 1
        {
            instance_create_depth(x+dir*4,y-16,depth,obj_item_hook_masked);   
            hookingbuffer = 0;
            dashingbuffer = 0; 
            airattackbuffer = 0;
            isRecoil = 0;
        }   else    
                        if airattackbuffer = 1
                        {
                            image_index = 0;
                            isAirattacking = 1;
                            sprite_index = spr_player_masked_attack1;
                            image_speed = 1;
                            isAfterhook = 0;
                            airattackbuffer = 0;
                            hookingbuffer = 0;
                            dashingbuffer = 0; 
                            isRecoil = 0;
                        }   else    
                                        if dashingbuffer = 1
                                        {   
                                            dash_counts --;
                                            sprite_index = spr_player_masked_dash;
                                            image_index = 0;
                                            isDashing = 1;
                                            vspd = 0;
                                            isAirattacking = 0;
                                            isAirThrowingBomb = 0;
                                            isAirUsingitem = 0;
                                            airattackbuffer = 0;
                                            hookingbuffer = 0;
                                            dashingbuffer = 0; 
                                            isAfterhook = 0;
                                            isRecoil = 0;
                                            instance_create_depth(x,y,0,obj_hitbox_mask_dash);
                            
                                        }
                        
                                       else     {
                                                    hookingbuffer = 0;
                                                    isRecoil = 0;
                                                }
                    
                    
    }
     /*
     if recoil_timer = 30
     {
        isRecoil = 0;   
        recoil_timer = 0;
     }
     */
}
#endregion

#region Hooking
    #region Hooking
        if HookEnabled = 1 && key_item && !instance_exists(obj_item_hook_masked) && isAfterhook = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isRecoil = 0 && isTakingdmg = 0 && (hook_iframes_timer > 15 || hook_iframes_timer = 0)
        {
            instance_create_depth(x+dir*4,y-16,depth,obj_item_hook_masked);
        }
        if isHooking = 1
        {
            sprite_index = spr_player_masked_hooked;
            vspd = 0;
            spd = 0
            fspd = hookspd;
            image_xscale = sign(fspd);
            if place_meeting(x+1,y,obj_block) || place_meeting(x-1,y,obj_block)
            {   
                if instance_exists(obj_item_hook_masked)
                {
                    instance_destroy(obj_item_hook_masked);   
                }
                isHooking = 0         
            }
        }
        #endregion
    #region Afterhook
    {

        if isHookiframes = 1 && isDashing = 0 && isTakingdmg = 0 && isAirattacking = 0 && isAttacking = 0
        {
               
        }
        if isAfterhook = 1
        {
                    if key_left
                	{
                		if spd > 0 
                		{
                			spd = -2;
                		}
                		if spd <= 0 
                		{
                			if spd > -2
                			{
                				spd -=0.5;	
                			}
                		}
                	}
        	if key_right 
        	{
        		if spd < 0 
        	{
        		spd = 2;
        	}
        	if spd >= 0 
        	{
        		if spd < 2
        		{
        			spd += 0.5;	
        		}
	        }
		
	}
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
	vspd += 0.2;	   
        }
        
        
             
    #region Выход из afterhook
        if isAfterhook = 1 && isGrounded = 1
        {
            isAfterhook = 0;     
        }    
        
        if isAfterhook = 1
        {
            image_speed = 1.5;
            sprite_index = spr_player_masked_afterhook;
            if image_index > 3  && key_dashing
            {
                dashingbuffer = 1; 
                airattackbuffer = 0;
            }
            
            if image_index > 3  && key_attack
            {
                dashingbuffer = 0; 
                airattackbuffer = 1;
            }
            if hspd != 0
            {
                image_xscale = sign(hspd);
            } 
            
            if (image_index > image_number - 1) 
            {
                if dashingbuffer = 1
                {   
                    dash_counts --;
                    sprite_index = spr_player_masked_dash;
                    image_index = 0;
                    isDashing = 1;
                    vspd = 0;
                    isAirattacking = 0;
                    isAirThrowingBomb = 0;
                    isAirUsingitem = 0;
                    dashingbuffer = 0;
                    isAfterhook = 0;
                    instance_create_depth(x,y,0,obj_hitbox_mask_dash);
                }   else    if airattackbuffer = 1
                            {
                                image_index = 0;
                            	isAirattacking = 1;
                            	sprite_index = spr_player_masked_attack1;
                            	image_speed = 1;
                                isAfterhook = 0;
                                airattackbuffer = 0;
                            }   else
                                {
                                    dashingbuffer = 0;
                                    airattackbuffer = 0;
                                    isAfterhook = 0;
                                }
            }
        }
        
    #endregion
    
    }
    #endregion

#region Hooking in air 
#endregion


#endregion

#region Taking dmg

if (place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_enemy_parent_object)) && damage_cd = 0 && isTakingdmg = 0 && isVulnerable = 1
{
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
	isTakingdmg = 1;
	damage_cd = 1;
    isRecoil = 0;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	attackingdown_timer = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
	isAirUsingitem = 0;
	isHooking = 0;
	isGravitate = 0;
	isPickup = 0
	pickup_timer = 0;
    isVulnerable = 0;
    //isHookiframes = 0;
    //hook_iframes_timer = 0

}

if place_meeting(x,y,obj_enemy_parent_object) && damage_cd = 0 && isTakingdmg = 0 && isAfterhook = 1
{
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
	isTakingdmg = 1;
	damage_cd = 1;
    isRecoil = 0;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	attackingdown_timer = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
	isAirUsingitem = 0;
	isHooking = 0;
	isGravitate = 0;
	isPickup = 0
	pickup_timer = 0;
    isVulnerable = 0;
    isHookiframes = 0;
    hook_iframes_timer = 0
    isAfterhook = 0;
}


if isTakingdmg = 1 
{
	image_blend = c_red;
	if !place_meeting(x,y+1,obj_block)
	{
		vspd+=0.2;	
	}
	sprite_index = spr_player_masked_hurt;
	if image_xscale  = 1
	{
		fspd = -1.5;	
	}
	if image_xscale = -1 
	{
		fspd = 1.5;	
	}
}

if damage_cd > 30 
{
    isVulnerable = 1;
	isTakingdmg = 0;
	image_blend = c_white;
}

if damage_cd > 0 		
{
	damage_cd ++;
	if round(damage_cd/5)*5 = damage_cd
	{
		if image_alpha = 1
		{
			image_alpha = 0.4;	
		} else image_alpha = 1;
	}

}
if damage_cd = 120 
{
	damage_cd = 0;
	image_alpha = 1;
}

#region бессмертие на крюке

    
    if isHookiframes = 1 
    {
        hook_iframes_timer +=1;
        isVulnerable = 0;
    }
    if hook_iframes_timer = 60 
    {
        hook_iframes_timer = 0;
        isVulnerable = 1;
        isHookiframes = 0;
    }
#endregion

#endregion

#region PickupBomb
{
	if isPickup = 1 
	{
		spd = 0;
		sprite_index = spr_player_pickup;
		pickup_timer +=1
		if pickup_timer = 5 
		{
			pickup_timer = 0;
			isPickup = 0;
			isCarry = 1;
		}
	}	
}
#endregion

#region Carry Bomb with teleport
if isCarry = 1 && (place_meeting(x,y,obj_room_transition_horizontal) || place_meeting(x,y,obj_room_transition_vertical))
{
	isCarry = 0;
	isAirThrowingBomb = 0;
	isThrowingBomb = 0;
}

#endregion

#region Carry Bomb attack on ground
if key_attack && isThrowingBomb = 0 && isCarry = 1 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isThrowingBomb = 1;
	sprite_index = spr_player_throw_bomb;
	image_speed = 0.5;
}
if isThrowingBomb = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}
if isThrowingBomb = 1 && image_index = 2
{
	isThrowingBomb = 0;	
	isCarry = 0;
}
if isThrowingBomb = 1 && image_index = 1
{
	var thrw_bomb = instance_create_depth(x,y-32,0,obj_bomb);
	thrw_bomb.hspd = 6*dir;
	thrw_bomb.isOn = 1;
}
if isThrowingBomb = 1 && !place_meeting(x,y+1,obj_block)
{
	isThrowingBomb = 0;
	isCarry = 0;
}
#endregion

#region Carry Bomb attack in air

if ((key_attack && isGrounded = 0 && isAirThrowingBomb = 0 && isCarry = 1) || (key_attack && key_jump && isGrounded = 1 && isCarry = 1)) && isAirThrowingBomb = 0 && isAirattacking = 0 && isCarry = 1 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirThrowingBomb = 1;
	sprite_index = spr_player_throw_bomb;
	image_speed = 0.5;
}
if isAirThrowingBomb = 1 
{	
	if key_left
	{
		if spd > 0 
		{
			spd = -2;
		}
		if spd <= 0 
		{
			if spd > -2
			{
				spd -=0.5;	
			}
		}
	}
	if key_right 
	{
		if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
		
	}
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
	vspd += 0.25;	
}

if isAirThrowingBomb = 1 && jump_timer < 1
{
	spd = 0;	
}
if isAirThrowingBomb = 1 && image_index = 1
{
	var thrw_bomb = instance_create_depth(x,y-32,0,obj_bomb);
	thrw_bomb.hspd = 6*dir;
	thrw_bomb.isOn = 1;
	isCarry = 0;
}
if isAirThrowingBomb = 1 && image_index = 2
{
	isAirThrowingBomb = 0;	
	isCarry = 0;	
}

#endregion

#region Test

if collision_line(x,y-8,x+64,y-8,obj_block,false,false)
{
    isMeeting = 1;   
} else isMeeting = 0;

#endregion

#region Dead
if global.hp <= 0
	{
		isDead = 1;	
		vspd = -2;
	}
#endregion

#region Искры

sprkl_timer_dash++;

    if sprkl_timer_dash = 10
    {
    	instance_create_depth(x+random_range(-16,16),y+random_range(-32,-16),depth+1,choose(obj_sfx_sparkle_1_player,obj_sfx_sparkle_2_player));
        sprkl_timer_dash = 0;
    }

if hooking_timer_count = 0 
{
    sprkl_timer_hook++;

    if  sprkl_timer_hook = 15
    {
    	instance_create_depth(x,y+random_range(-16,-8),depth+1,obj_sfx_sparkle_hook);
        
        sprkl_timer_hook = 0;
    }

}

#endregion

attackbuffer = 0;
airattackbuffer = 0;
dashingbuffer = 0;
hookingbuffer = 0;
if instance_exists(obj_item_hook_masked)
{
    instance_destroy(obj_item_hook_masked);   
}
}

function fnc_player_cutscene_hum()
{
#region Conditions
//Направление спрайта
if image_xscale = 1 
{
	dir = 1;	
} else dir = -1;

if isGrounded = 0 
{
	jump_timer += 1;	
}
if isGrounded = 1 
{
	dash_counts = 1;
	jump_timer = 0;	
}
#endregion

#region Collision check

	fnc_Collision_player(obj_block);
	
#endregion	

#region Movement

// Move left-right


hspd = spd;
fspd = hspd + carryspd + afterhookspd + attackspd;
carryspd = 0;

#region afterhookspd


if afterhookspd !=0 
{
    if key_left || key_right || isGrounded = 1 || key_down || key_down_pressed || key_jump || key_up || isDashing = 1
    {
        afterhookspd = 0;  
    }
    afterhookspd = lerp(afterhookspd,0,0.05);
}


#endregion
#region attackspd
if attackspd != 0
{
    attackspd = lerp(attackspd,0,0.1); 
    if isGrounded = 0 || isAttacking = 0
    {
        attackspd = 0;   
    }
}

#endregion
#region движение влево

if key_left && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_xscale = -1;
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_run;
	} else sprite_index = spr_player_run;
	image_speed = 1.25;
	
	if spd > 0 
	{
		spd = -2;
	}
	if spd <= 0 
	{
		if spd > -2
		{
			spd -=0.5;	
		}
	}
	hspd = spd;
	
}

#endregion
#region движение вправо

if key_right && isRecoil = 0 && isAfterhook = 0 &&  isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 &&  isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{ 
	image_xscale = 1;
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_run;
	} else sprite_index = spr_player_run;
    image_speed = 1.25;
	
	if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
	
	hspd = spd;
	
}

#endregion
#region остановка

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingitem = 0 && isAfterhook = 0 && isRecoil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	hspd = 0;
	spd = 0;
	
	if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_on_place;
	} else sprite_index = spr_player_idle;
	image_speed = 1.25;
	
}

#endregion
#region прыжок 

if place_meeting(x,y+1,obj_block) 
{
    dash_pad = 0;
	isGrounded = 1;
    if oleg = 1 
            {
                if isDashing = 0
                {
                    fnc_snd_play_onetime(snd_player_landing);
                }
                oleg = 0;
            }    
	isGrounded = 1;	
} else {
            isGrounded = 0; 
            oleg = 1;
        }

if isGrounded = 0 && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingitem = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    if isDashing = 0
    {
    if instance_exists(obj_item_hook_masked)
	{
		sprite_index = spr_player_masked_hooking_jump;
	} else  {
                sprite_index = spr_player_jump;
            }
        image_speed =0;
                if vspd > 0 
            	{
            		image_index = 1;
            	}
            	if vspd <= 0 
            	{
            		image_index = 2;	
            	}    
    }
			
		
		if key_jump_release && vspd < -4 
		{
			vspd = -3;
		}
		if vspd < 6 
			{
				vspd +=0.25;//0.25;
			}
}
if isGrounded  = 1
{
	jump_counts = 1;	
	coyote_timer = 1;
}


if jump_counts = 1 && isRecoil = 0 && isAirThrowingBomb = 0 && isAfterhook = 0 && key_jump && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
{
	audio_play_sound(snd_player_jump,0,0);
	jump_timer+=1;
	vspd = -6;	
	jump_counts -=1;
}

// Время койота

if !place_meeting(x,y+1,obj_block) && coyote_timer > 0 
{
	coyote_timer -= 0.2;	
}
#endregion
#endregion

#region Attack on ground

if key_attack && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isCarry = 0 && !instance_exists(obj_item_hook_masked) && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAttacking = 1;
	sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
	image_speed = 1;
    
    if key_right && dir = 1 
    {
        attackspd = 1;
    }
    
    if key_left && dir = -1
    {
        attackspd = -1;   
    }
    
    
}
if isAttacking = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}	
if isAttacking = 1 && image_index = 5
{
	isAttacking = 0;
    if attackbuffer = 1
    {
        
        if key_right = 1
        {
            image_xscale = 1;  
        }
        if key_left = 1
        {
            image_xscale = -1;
            dir = -1;   
        }
        image_index = 0;
    	isAttacking = 1;
    	sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
    	image_speed = 1;   
        attackbuffer = 0;
        if key_right && dir = 1 
        {
            attackspd = 1;
        }
    
        if key_left && dir = -1
        {
            attackspd = -1;   
        }
    }
}
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
if isAttacking = 1 && !place_meeting(x,y+1,obj_block)
{
	isAttacking = 0;	
    attackbuffer = 0;
}


// буфер атаки

if isAttacking = 1 && image_index > 2 && key_attack
{
    attackbuffer = 1;   
}

#endregion

#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && ((isAfterhook = 0) || (isAfterhook = 1 && !instance_exists(obj_hitbox_mask_hook)))  && !instance_exists(obj_item_hook_masked) && isAirattacking = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_masked_attack1;
	image_speed = 1;
    isAfterhook = 0;
}
if isAirattacking = 1 
{	
	if key_left
	{
		if spd > 0 
		{
			spd = -2;
		}
		if spd <= 0 
		{
			if spd > -2
			{
				spd -=0.5;	
			}
		}
	}
	if key_right 
	{
		if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
		
	}
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
	vspd += 0.25;	
}

if isAirattacking = 1 && jump_timer < 1
{
	spd = 0;	
}
if isAirattacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
if isAirattacking = 1 && image_index = 5
{
	isAirattacking = 0;	
    if airattackbuffer = 1
    {
        image_index = 0;
    	isAirattacking = 1;
    	sprite_index = spr_player_masked_attack1;
    	image_speed = 1;
        isAfterhook = 0;
        airattackbuffer = 0;
    }
}

// буфер атаки в воздухе

if isAirattacking = 1 && image_index > 2 && key_attack  
{
    airattackbuffer = 1;   
}

// буфер притяжки в воздухе


#endregion

#region Dashing
if key_dashing && isCarry = 0 && isAfterhook = 0 && !instance_exists(obj_item_hook_masked) && isRecoil = 0 && isUsingitem = 0 && isGrounded = 0 && isAttacking = 0 && isDashing = 0 && dash_counts > 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
	dash_counts --;
    sprite_index = spr_player_dash;
    image_index = 0;
	isDashing = 1;
	vspd = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
    instance_create_depth(x,y,0,obj_hitbox_mask_dash);
}
if isDashing = 1
{
    sprite_index = spr_player_dash;
    image_speed = 1.25;
	vspd = 0;
    fspd = 4*dir;
    if (image_index > image_number - 1) 
    {
        isDashing = 0;
    }
}

#endregion

#region Recoil
if isRecoil = 1
{
    //recoil_timer++;
    sprite_index = spr_player_masked_recoil;
    image_speed = 0.75;
    isDashing = 0;
    isAirattacking = 0;
    vspd = -1;
    fspd = -0.5*dir;
    
    if image_index  > 3 && key_item && HookEnabled = 1
    {
        hookingbuffer = 1;  
        dashingbuffer = 0;
        airattackbuffer = 0;
    }
    if image_index > 3  && key_dashing
    {
        dashingbuffer = 1; 
        airattackbuffer = 0;
        hookingbuffer = 0;
    }
            
    if image_index > 3  && key_attack
    {
        dashingbuffer = 0; 
        airattackbuffer = 1;
        hookingbuffer = 0;
    }
    
    if (image_index > image_number - 1) 
    {
        
        if hookingbuffer = 1
        {
            instance_create_depth(x+dir*4,y-16,depth,obj_item_hook_masked);   
            hookingbuffer = 0;
            dashingbuffer = 0; 
            airattackbuffer = 0;
            isRecoil = 0;
        }   else    
                        if airattackbuffer = 1
                        {
                            image_index = 0;
                            isAirattacking = 1;
                            sprite_index = spr_player_masked_attack1;
                            image_speed = 1;
                            isAfterhook = 0;
                            airattackbuffer = 0;
                            hookingbuffer = 0;
                            dashingbuffer = 0; 
                            isRecoil = 0;
                        }   else    
                                        if dashingbuffer = 1
                                        {   
                                            dash_counts --;
                                            sprite_index = spr_player_masked_dash;
                                            image_index = 0;
                                            isDashing = 1;
                                            vspd = 0;
                                            isAirattacking = 0;
                                            isAirThrowingBomb = 0;
                                            isAirUsingitem = 0;
                                            airattackbuffer = 0;
                                            hookingbuffer = 0;
                                            dashingbuffer = 0; 
                                            isAfterhook = 0;
                                            isRecoil = 0;
                                            instance_create_depth(x,y,0,obj_hitbox_mask_dash);
                            
                                        }
                        
                                       else     {
                                                    hookingbuffer = 0;
                                                    isRecoil = 0;
                                                }
                    
                    
    }
     /*
     if recoil_timer = 30
     {
        isRecoil = 0;   
        recoil_timer = 0;
     }
     */
}
#endregion

#region Using Items

#region choosing items
/*
if key_item_choose 
{
	global.choosed_item +=1;	
}
if global.choosed_item = 4
{
	global.choosed_item = 1;	
}
*/
#endregion

	if global.choosed_item = 1
	{	
		#region boomerang
	
		#region on ground
	
	
			if key_item && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && !instance_exists(obj_item_boomerang_dot) && isTakingdmg = 0
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isUsingitem = 1 && isGrounded = 1
			{
				hspd = 0;
			}	
			if isUsingitem = 1 && image_index = 5
			{
				isUsingitem = 0;	
			}
			if isUsingitem = 1 && image_index = 1
			{
				instance_create_depth(x+obj_Player.image_xscale*(150),y-16,1,obj_item_boomerang_dot);
				instance_create_depth(x,y-16,1,obj_item_boomerang);
			}
	
		#endregion
		#region in air
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && !instance_exists(obj_item_boomerang_dot) && isTakingdmg = 0
			{
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isAirUsingitem = 1 
			{	
				if key_left
				{
					if spd > 0 
					{
						spd = -2;
					}
					if spd <= 0 
					{
						if spd > -2
						{
							spd -=0.5;	
						}
					}
				}
				if key_right 
				{
					if spd < 0 
				{
					spd = 2;
				}
				if spd >= 0 
				{
					if spd < 2
					{
						spd += 0.5;	
					}
				}
		
				}
				if (!key_left && !key_right) || (key_left && key_right) 
				{
					hspd = 0;
					spd = 0;
				}
				vspd += 0.25;	
			}

			if isAirUsingitem = 1 && jump_timer < 1
			{
				hspd = 0;	
			}
			if isAirUsingitem = 1 && image_index = 1
			{
				instance_create_depth(x+obj_Player.image_xscale*(150),y-16,1,obj_item_boomerang_dot);
				instance_create_depth(x,y-16,1,obj_item_boomerang);
			}
			if isAirUsingitem = 1 && image_index = 5
			{
				isAirUsingitem = 0;	
			}
	
		#endregion
	}
#endregion
	
	if global.choosed_item = 2
	{
		#region axe
		
		
		#region on ground
        
			if key_item && isAirUsingitem = 0 && isUsingitem = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && global.mana > 0
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
				
			}
			if isUsingitem = 1 && isGrounded = 1
			{
				hspd = 0;
				spd = 0;
			}	
			if isUsingitem = 1 && image_index = 5
			{
				isUsingitem = 0;	
			}
			if isUsingitem = 1 && image_index = 1
			{
				global.mana -= 1;
				var itemAxe = instance_create_depth(x,y-32,0,obj_item_axe);
				if image_xscale = 1 
				{
					itemAxe.hspd = 2	
				} else itemAxe.hspd = -2;
			}		
			if isUsingitem = 1 && !place_meeting(x,y+1,obj_block)
			{
				isUsingitem = 0;	 
			}
		#endregion
		#region in air
		  
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 ) || (key_item && key_jump && isGrounded = 1)) && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && global.mana > 0 
			{
				
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isAirUsingitem = 1 
			{	
				if key_left
				{
					if spd > 0 
					{
						spd = -2;
					}
					if spd <= 0 
					{
						if spd > -2
						{
							spd -=0.5;	
						}
					}
				}
				if key_right 
				{
					if spd < 0 
				{
					spd = 2;
				}
				if spd >= 0 
				{
					if spd < 2
					{
						spd += 0.5;	
					}
				}
		
				}
				if (!key_left && !key_right) || (key_left && key_right) 
				{
					hspd = 0;
					spd = 0;
				}
				vspd += 0.25;	
			}

			if isAirUsingitem = 1 && jump_timer < 1
			{
				spd = 0;	
			}
			if isAirUsingitem = 1 && image_index = 1
			{
				global.mana -= 1;
				var itemAxe = instance_create_depth(x,y-32,0,obj_item_axe);
				if image_xscale = 1 
				{
					itemAxe.hspd = 2	
				} else itemAxe.hspd = -2;
			}
			if isAirUsingitem = 1 && image_index = 5
			{
				isAirUsingitem = 0;	
			}
	
		#endregion
		
#endregion
	}
	if global.choosed_item = 3
	{
		#region bomb
	
		#region on ground
			if key_item && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isUsingitem = 1 && isGrounded = 1
			{
				hspd = 0;
			}	
			if isUsingitem = 1 && image_index = 5
			{
				isUsingitem = 0;	
			}
			if isUsingitem = 1 && image_index = 1
			{
				var itemAxe = instance_create_depth(x,y-32,0,obj_item_bomb);
				if image_xscale = 1 
				{
					itemAxe.hspd = 2	
				} else itemAxe.hspd = -2;
			}		
		#endregion
		#region in air
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isAirUsingitem = 1 
			{	
				if key_left
				{
					if spd > 0 
					{
						spd = -2;
					}
					if spd <= 0 
					{
						if spd > -2
						{
							spd -=0.5;	
						}
					}
				}
				if key_right 
				{
					if spd < 0 
				{
					spd = 2;
				}
				if spd >= 0 
				{
					if spd < 2
					{
						spd += 0.5;	
					}
				}
		
				}
				if (!key_left && !key_right) || (key_left && key_right) 
				{
					hspd = 0;
					spd = 0;
				}
				vspd += 0.25;	
			}

			if isAirUsingitem = 1 && jump_timer < 1
			{
				hspd = 0;	
			}
			if isAirUsingitem = 1 && image_index = 1
			{
				var itemAxe = instance_create_depth(x,y-32,0,obj_item_bomb);
				if image_xscale = 1 
				{
					itemAxe.hspd = 2	
				} else itemAxe.hspd = -2;
			}
			if isAirUsingitem = 1 && image_index = 5
			{
				isAirUsingitem = 0;	
			}
	
		#endregion	
		
		#endregion
	}
	
/*
#region hook

if key_item && isHooking = 0 && isAirattacking = 0 && isAttacking = 0 && isClimbing = 0 && isAttackingdown = 0 && isDashing = 0 && isOutjump = 0 && isWallclimbing = 0
{
	isHooking = 1;
	if dir = -1 {
		var inst_left = instance_create_depth(x, y-16, -1, obj_item_hook);
		with inst_left 
		{
			left = 1;	
		}
	}
	if dir = 1 
	{
		var inst_right = instance_create_depth(x, y-16, -1, obj_item_hook);
		with inst_right 
		{
			right = 1;	
		}
		
	}
}
if isHooking = 1
{
	sprite_index = spr_player_hooking;
	hspd = 0;
	vspd = 0;
	spd = 0;	
	if isGravitate = 1 
	{
		sprite_index = spr_player_dash;
		if obj_item_hook_anchor.x > x 
		{
			hspd = 10;	
		}
		
		if obj_item_hook_anchor.x < x
		{
			hspd = -10;	
		}
		if place_meeting(bbox_left+sign(hspd),y,obj_block) || place_meeting(bbox_right+sign(hspd),y,obj_block)
		{
			isGravitate = 0;
			isHooking = 0;
		}
	}
}

#endregion
*/
#endregion

#region Taking dmg

if (place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_enemy_parent_object)) && damage_cd = 0 && isTakingdmg = 0 && isVulnerable = 1
{
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
	isTakingdmg = 1;
	damage_cd = 1;
    isRecoil = 0;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	attackingdown_timer = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
	isAirUsingitem = 0;
	isHooking = 0;
	isGravitate = 0;
	isPickup = 0
	pickup_timer = 0;
    isVulnerable = 0;
    //isHookiframes = 0;
    //hook_iframes_timer = 0

}

if place_meeting(x,y,obj_enemy_parent_object) && damage_cd = 0 && isTakingdmg = 0 && isAfterhook = 1
{
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
	isTakingdmg = 1;
	damage_cd = 1;
    isRecoil = 0;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	attackingdown_timer = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
	isAirUsingitem = 0;
	isHooking = 0;
	isGravitate = 0;
	isPickup = 0
	pickup_timer = 0;
    isVulnerable = 0;
    isHookiframes = 0;
    hook_iframes_timer = 0
    isAfterhook = 0;
}


if isTakingdmg = 1 
{
	image_blend = c_red;
	if !place_meeting(x,y+1,obj_block)
	{
		vspd+=0.2;	
	}
	sprite_index = spr_player_masked_hurt;
	if image_xscale  = 1
	{
		fspd = -1.5;	
	}
	if image_xscale = -1 
	{
		fspd = 1.5;	
	}
}

if damage_cd > 30 
{
    isVulnerable = 1;
	isTakingdmg = 0;
	image_blend = c_white;
}

if damage_cd > 0 		
{
	damage_cd ++;
	if round(damage_cd/5)*5 = damage_cd
	{
		if image_alpha = 1
		{
			image_alpha = 0.4;	
		} else image_alpha = 1;
	}

}
if damage_cd = 120 
{
	damage_cd = 0;
	image_alpha = 1;
}

#region бессмертие на крюке

    
    if isHookiframes = 1 
    {
        hook_iframes_timer +=1;
        isVulnerable = 0;
    }
    if hook_iframes_timer = 60 
    {
        hook_iframes_timer = 0;
        isVulnerable = 1;
        isHookiframes = 0;
    }
#endregion

#endregion

#region PickupBomb
{
	if isPickup = 1 
	{
		spd = 0;
		sprite_index = spr_player_pickup;
		pickup_timer +=1
		if pickup_timer = 5 
		{
			pickup_timer = 0;
			isPickup = 0;
			isCarry = 1;
		}
	}	
}
#endregion

#region Carry Bomb with teleport
if isCarry = 1 && (place_meeting(x,y,obj_room_transition_horizontal) || place_meeting(x,y,obj_room_transition_vertical))
{
	isCarry = 0;
	isAirThrowingBomb = 0;
	isThrowingBomb = 0;
}

#endregion

#region Carry Bomb attack on ground
if key_attack && isThrowingBomb = 0 && isCarry = 1 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isThrowingBomb = 1;
	sprite_index = spr_player_throw_bomb;
	image_speed = 0.5;
}
if isThrowingBomb = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}
if isThrowingBomb = 1 && image_index = 2
{
	isThrowingBomb = 0;	
	isCarry = 0;
}
if isThrowingBomb = 1 && image_index = 1
{
	var thrw_bomb = instance_create_depth(x,y-32,0,obj_bomb);
	thrw_bomb.hspd = 6*dir;
	thrw_bomb.isOn = 1;
}
if isThrowingBomb = 1 && !place_meeting(x,y+1,obj_block)
{
	isThrowingBomb = 0;
	isCarry = 0;
}
#endregion

#region Carry Bomb attack in air

if ((key_attack && isGrounded = 0 && isAirThrowingBomb = 0 && isCarry = 1) || (key_attack && key_jump && isGrounded = 1 && isCarry = 1)) && isAirThrowingBomb = 0 && isAirattacking = 0 && isCarry = 1 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirThrowingBomb = 1;
	sprite_index = spr_player_throw_bomb;
	image_speed = 0.5;
}
if isAirThrowingBomb = 1 
{	
	if key_left
	{
		if spd > 0 
		{
			spd = -2;
		}
		if spd <= 0 
		{
			if spd > -2
			{
				spd -=0.5;	
			}
		}
	}
	if key_right 
	{
		if spd < 0 
	{
		spd = 2;
	}
	if spd >= 0 
	{
		if spd < 2
		{
			spd += 0.5;	
		}
	}
		
	}
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
	vspd += 0.25;	
}

if isAirThrowingBomb = 1 && jump_timer < 1
{
	spd = 0;	
}
if isAirThrowingBomb = 1 && image_index = 1
{
	var thrw_bomb = instance_create_depth(x,y-32,0,obj_bomb);
	thrw_bomb.hspd = 6*dir;
	thrw_bomb.isOn = 1;
	isCarry = 0;
}
if isAirThrowingBomb = 1 && image_index = 2
{
	isAirThrowingBomb = 0;	
	isCarry = 0;	
}

#endregion

#region Test

if collision_line(x,y-8,x+64,y-8,obj_block,false,false)
{
    isMeeting = 1;   
} else isMeeting = 0;

#endregion

#region Dead
if global.hp <= 0
	{
		isDead = 1;	
		vspd = -2;
	}
#endregion


attackbuffer = 0;
airattackbuffer = 0;
airitemuse = 0;
dashingbuffer = 0;
hookingbuffer = 0;
if instance_exists(obj_item_hook_masked)
{
    instance_destroy(obj_item_hook_masked);   
}
}

function fnc_player_cutscene_boat_west_coast()
{
    x += hspd;
}



