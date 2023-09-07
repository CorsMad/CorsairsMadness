// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_player_state1()
{
    
 #region Alive
if isDead = 0 
{
    player_input();
#region Conditions
//Направление спрайта
if image_xscale = 1 
{
	dir = 1;	
} else dir = -1;
superdash_y = obj_Player.y;
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
    /*
	if clone_timer= 0
    {
        fnc_Collision_player(obj_block);
    } else fnc_Collision_player(obj_block_clone);
	*/
#endregion	

#region Movement

// Move left-right


hspd = spd;
fspd = hspd + carryspd + afterhookspd + attackspd + doublejumpspd;
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

if key_left && isRecoil = 0 && superdash_timer = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0 
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

if key_right && isRecoil = 0 && superdash_timer = 0 && isAfterhook = 0 &&  isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 &&  isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
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

if ((!key_left && !key_right) || (key_left && key_right) ) && superdash_timer = 0 && isUsingitem = 0 && isAfterhook = 0 && isRecoil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
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
    superdash_timer_count = 0;
    canDoubleJump = 1;
    doublejumpspd = 0;
    if oleg = 1 
            {
                if isDashing = 0
                {
                    fnc_snd_play_onetime(snd_player_landing);
                }
                oleg = 0;
            }  
} else 
        {
            isGrounded = 0; 
            oleg = 1;
        } 

if isGrounded = 0 && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingitem = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    if superdash_timer = 0
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
    }
		//TEST
        
        if key_jump_release && vspd < -4 && lanhit = 0
		{
			vspd = -3;
		}        
        
        /*
		if key_jump_release && superdash_timer = 0 && vspd < -4 
		{
			vspd = -3;
		}
        */
		if vspd < 6 && superdash_timer = 0  
		{
            
            
            //vspd+=0.25;
            
            if lanhit = 0 vspd+=0.25;
            
            
            /*
            if comboMeter < 4 
            {
			    vspd +=0.25;//0.25;
            } else vspd = 0;
            */
		}
}
if (y <= lanplace && lanhit = 1) lanhit = 0;

if isGrounded  = 1
{
    lanhit = 0;
	jump_counts = 1;	
	coyote_timer = 1;
}


if jump_counts = 1 && superdash_timer = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isAfterhook = 0 && key_jump && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
{
	audio_play_sound(snd_player_jump,0,0);
	jump_timer+=1;
	vspd = -6;	
	jump_counts -=1;
}

if jumpbuffer = 1 && superdash_timer = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isAfterhook = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
{
    audio_play_sound(snd_player_jump,0,0);
	jump_timer+=1;
	vspd = -6;	
	jump_counts -=1; 
    jumpbuffer = 0;
}

if key_jump && place_meeting(x,y+15,obj_block) && jumpbuffer = 0
{
    jumpbuffer = 1;   
}
if isGrounded = 1
{
    jumpbuffer = 0;   
}

// Время койота

if !place_meeting(x,y+1,obj_block) && coyote_timer > 0 
{
	coyote_timer -= 0.2;	
}
#endregion

#region комбо таймер и счетчик

if comboTimer > 0 
{
    comboTimer -= 1; 
}
if comboTimer <= 0
{
    comboTimer = 0;
    comboMeter = 0;
}


#endregion

#endregion

#region Attack on ground

if key_attack && isRecoil = 0 && isAfterhook = 0 && isAirThrowingBomb = 0 && isCarry = 0 && !instance_exists(obj_item_hook_masked) && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAttacking = 1;
    superdash_timer = 0;
            superdash_timer_count = 1;
            dash_vfx_timer = 0;
            superdash_power = 0;
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

if isAttacking = 1 && isGrounded = 0
{
    isAttacking = 0;   
}

/*
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
*/

#region Остановка атаки при комбо и без
if isAttacking = 1 && image_index = 3 && comboMeter < 4 //5
{
	isAttacking = 0;
    player_input_buffer_execute();
}

if isAttacking = 1 && image_index = 5 && comboMeter >= 4 //5
{
	isAttacking = 0;
    comboMeter = 0;
    player_input_buffer_jump(3);
    //player_input_buffer_execute();
}
#endregion



if isAttacking = 1 && image_index = 1
{
    switch(sprite_index)
    {
        case spr_player_masked_attack1: instance_create_depth(x,y,0,obj_hitbox_mask);break;
        case spr_player_masked_attack2: instance_create_depth(x,y,0,obj_hitbox_mask);break;
        case spr_player_masked_attack_finisher1: instance_create_depth(x,y,0,obj_hitbox_mask_finisher);break;
        case spr_player_masked_attack_finisher_forward: instance_create_depth(x,y,0,obj_hitbox_mask_finisher_forward);break;
        case spr_player_masked_attack_finisher_down: instance_create_depth(x,y,0,obj_hitbox_mask_finisher_down);break;
        case spr_player_masked_attack_finisher_up: instance_create_depth(x,y,0,obj_hitbox_mask_finisher_up);break;
    }
}

if isAttacking = 1 && key_jump && comboMeter < 4
{
    isAttacking = 0;
    isAirattacking = 1;
    vspd = -6;
}


#region буфферизация
if isAttacking = 1
{
    if comboMeter < 4
    {
        player_input_buffer_attack(0); //1
        player_input_buffer_dashing(0);
        player_input_buffer_item_hook(0);
    } 
    if comboMeter >= 4
    {
        player_input_buffer_jump(2);   
    }
}
#endregion


#endregion

#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && ((isAfterhook = 0) || (isAfterhook = 1 && !instance_exists(obj_hitbox_mask_hook)))  && !instance_exists(obj_item_hook_masked) && isAttacking = 0 && isAirattacking = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_masked_attack1;
	image_speed = 1;
    isAfterhook = 0;
	superdash_timer = 0;
            superdash_timer_count = 1;
            dash_vfx_timer = 0;
            superdash_power = 0;
    
}
if isAirattacking = 1 
{	
    if comboMeter < 4
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
    }
    
	if (!key_left && !key_right) || (key_left && key_right) 
	{
		hspd = 0;
		spd = 0;
	}
    
    /*
    if vspd < 6 && comboMeter < 4
	{
		vspd +=0.25;//0.25;
	} else vspd = 0;
	*/
    
    if vspd < 6 && comboMeter < 4
	{
		if lanhit = 0 vspd +=0.25;//0.25;
	} else if comboMeter >=4 vspd = 0;
    
}

if isAirattacking = 1 && jump_timer < 1
{
	spd = 0;	
}
/*
if isAirattacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
*/
if isAirattacking = 1 && image_index = 1
{
    switch(sprite_index)
    {
        case spr_player_masked_attack1: instance_create_depth(x,y,0,obj_hitbox_mask);break;
        case spr_player_masked_attack2: instance_create_depth(x,y,0,obj_hitbox_mask);break;
        case spr_player_masked_attack_finisher1: instance_create_depth(x,y,0,obj_hitbox_mask_finisher);break;
        case spr_player_masked_attack_finisher_down: instance_create_depth(x,y,0,obj_hitbox_mask_finisher_down);break;
    }
}

if isAirattacking = 1
{
   // player_input_buffer_dashing(1);
}    



#region Остановка атаки при комбо и без
if isAirattacking = 1 && image_index = 3 && comboMeter < 4
{
	isAirattacking = 0;	
    player_input_buffer_execute();
}

if isAirattacking = 1 && image_index = 5 && comboMeter >= 4
{
	isAirattacking = 0;	
    comboMeter = 0;
    player_input_buffer_execute();
}
#endregion

if isAirattacking = 1
{
    if key_jump_release && vspd < -4 && lanhit = 0
		{
			vspd = -3;
		}
}

#region Буфферизация
if isAirattacking = 1
{
    if comboMeter < 4
    {
        player_input_buffer_attack(0);//1
        player_input_buffer_airattack(0);
        player_input_buffer_dashing(1);
        player_input_buffer_item_hook(0);
    }
}   

#endregion

#endregion

#region Dashing
if key_dashing && dashing_timer_count = 0 && isCarry = 0 && isAfterhook = 0 && !instance_exists(obj_item_hook_masked) && isRecoil = 0 && isUsingitem = 0 && isAttacking = 0 && isDashing = 0  && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
    audio_play_sound(snd_player_dash_masked,0,0);
    dashingbuffer = 0;
    sprite_index = spr_player_masked_dash;
    image_index = 0;
	isDashing = 1;
    doublejumpspd = 0;
	vspd = 0;
    lanhit = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
    comboMeter = 0;
    comboTimer = 0;
    instance_create_depth(x,y,0,obj_hitbox_mask_dash);
    if key_right = 1
    {
        image_xscale = 1;  
    }
    if key_left = 1
    {
        image_xscale = -1;
        dir = -1;   
    }
	superdash_timer = 0;
            superdash_timer_count = 1;
            dash_vfx_timer = 0;
            superdash_power = 0;
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
        dashing_timer_count  = 1;
        player_input_buffer_execute();
    }
#region Буфферизация
if isDashing = 1
{  
    player_input_buffer_attack(1);
    player_input_buffer_airattack(1);
    switch(SpecAbilMask)
    {
        case 1: player_input_buffer_item_hook(1);break;
        case 2: break;
    }
        
}
#endregion
#region помощь при углах
// подъем
    if fspd > 0
    {
        if place_meeting(x+1,y,obj_block)
        {
            var lox1 = instance_place(x+1,y,obj_block);
            var lox2 = abs(obj_Player.y-lox1.y);
            var lox3 = abs((obj_Player.y-32)-lox1.bbox_bottom);
            if lox2 <= 12
            {
                with(lox1)
                {
                    if !place_meeting(x,y-1,obj_block)
                    {
                        obj_Player.y-=lox2;   
                    } 
                }
            } 
            if lox3 <= 12
            {
                with(lox1)
                {
                    if !place_meeting(x,y+1,obj_block)
                    {
                        obj_Player.y+=lox3+1;   
                    } 
                }
            }
        }
    }
    
    if fspd < 0
    {
        if place_meeting(x-1,y,obj_block)
        {
            var lox1 = instance_place(x-1,y,obj_block);
            var lox2 = abs(obj_Player.y-lox1.y);
            var lox3 = abs((obj_Player.y-32)-lox1.bbox_bottom);
            if lox2 <= 12
            {
                with(lox1)
                {
                    if !place_meeting(x,y-1,obj_block)
                    {
                        obj_Player.y-=lox2;   
                    }
                }
            }
            if lox3 <= 12
            {
                with(lox1)
                {
                    if !place_meeting(x,y+1,obj_block)
                    {
                        obj_Player.y+=lox3+1;   
                    } 
                }
            }
        }
    } 
#endregion    

}

if dashing_timer_count  = 1
{
    dashing_timer++;
    if dashing_timer = 90
    {
        instance_create_depth(x,y-16,depth+1,obj_sfx_dash_sparkle);
        dashing_timer = 0;
        dashing_timer_count = 0;
    }
} 


#endregion

#region Recoil
if isRecoil = 1
{
    doublejumpspd = 0;
    lanhit = 0;
    //recoil_timer++;
    sprite_index = spr_player_masked_recoil;
    image_speed = 0.75;
    isDashing = 0;
    isAirattacking = 0;
    //vspd = -1;
    #region movement
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
        		   
     #endregion   
    
    //fspd = -0.5*dir;

    if (image_index > image_number - 1) 
    {
        isRecoil = 0;
        player_input_buffer_execute();
    }
    
    #region Буфферизация
    if isRecoil = 1
    {
        player_input_buffer_attack(1);
        player_input_buffer_airattack(1);
        player_input_buffer_dashing(1);
        player_input_buffer_item_hook(1);   
    }
    #endregion
}
#endregion

#region Spec Abilities

#region Hooking
    #region Hooking
        if HookEnabled = 1 && SpecAbilMask = 1 && key_item && hooking_timer_count = 0 && !instance_exists(obj_item_hook_masked) && isAfterhook = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isRecoil = 0 && isTakingdmg = 0 && (hook_iframes_timer > 15 || hook_iframes_timer = 0)
        {
            lanhit = 0;
            instance_create_depth(x+dir*4,y-16,depth,obj_item_hook_masked);
            hooking_timer_count = 1;
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
            
            if hspd != 0
            {
                image_xscale = sign(hspd);
            } 
            
            if (image_index > image_number - 1) 
            { 
                isAfterhook = 0;
                player_input_buffer_execute();
            }
        }
        
        if isAfterhook = 1
        {
            player_input_buffer_attack(1);
            player_input_buffer_airattack(1);
            player_input_buffer_dashing(1);
            player_input_buffer_item_hook(1);   
        }
        
    #endregion
    
    }
    #endregion  
    
    #region Hooking Timer
    if hooking_timer_count  = 1
    {
        hooking_timer++;
        if hooking_timer = 90
        {
            instance_create_depth(x,y-24,depth+1,obj_sfx_hook_sparkle);
            hooking_timer = 0;
            hooking_timer_count = 0;
        }
    } 
    
    #endregion
    
#endregion

#region Teleport Cloud

    if key_item && spectp_timer_count = 0 && !instance_exists(obj_teleport_cloud) && SpecAbilMask = 2 && isTakingdmg = 0 && (damage_cd > 30 || damage_cd = 0) && isDashing = 0
    {
        var tp_cr = instance_create_depth(x,y,depth-1,obj_teleport_cloud);
        tp_cr.spd = 2*sign(image_xscale);  
        tp_cr.image_xscale = sign(image_xscale);
        spectp_timer_count = 1;
    }

    if  instance_exists(obj_teleport_cloud) && obj_teleport_cloud.moving = 1 && obj_teleport_cloud.teleport_delay_timer > 10 && obj_teleport_cloud.pressed = 0
    {
        if key_item_pressed cloud_exist_timer++;
        if cloud_exist_timer = 50 
            {
                obj_teleport_cloud.isDead = 1;
                spectp_timer = 70;     
            }
        else if key_item_released {obj_teleport_cloud.pressed = 1;cloud_exist_timer= 0} 
    }

    if !instance_exists(obj_teleport_cloud) cloud_exist_timer = 0;

    #region Clone Timer
    if spectp_timer_count  = 1
    {
        if !instance_exists(obj_teleport_cloud) spectp_timer++;
        if spectp_timer = 90
        {
            instance_create_depth(x,y-24,depth+1,obj_sfx_hook_sparkle);
            spectp_timer = 0;
            spectp_timer_count = 0;
        }
    } 
    
    #endregion

#endregion

#region Superdash

if isRecoil = 0 && key_item_pressed && SpecAbilMask = 3 && superdash_timer_count = 0 && isTakingdmg = 0 && (damage_cd > 30 || damage_cd = 0) && isAttacking = 0
{
    isDashing = 0;
    isAttacking = 0;
    isAirattacking = 0;
    doublejumpspd = 0;
    
    #region Анимация
    
    
    #endregion
    
    if superdash_timer < 62 
    {
        superdash_timer++; 
    }
    
    dash_vfx_timer ++
    {
        if dash_vfx_timer = 15
        {
            dash_vfx_timer = 0;
            var dash_vfx = instance_create_depth(x,y,depth-1,obj_superdash_vfx);
            dash_vfx.image_xscale = image_xscale;
            switch(superdash_power)
            {
                case 0: dash_vfx.sprite_index = spr_superdash_vfx_1;break;
                case 1: dash_vfx.sprite_index = spr_superdash_vfx_2;break;
                case 2: dash_vfx.sprite_index = spr_superdash_vfx_3;break;
            }
        }
    }
    
    
    switch(superdash_timer) 
    {
        case 1:  sprite_index = spr_player_masked_presuperdash1;break;
        case 30: sprite_index = spr_player_masked_presuperdash2;superdash_power = 1;break;   
        case 60: sprite_index = spr_player_masked_presuperdash3;superdash_power = 2;break;
    }
    if superdash_timer!= 0 
    {
        image_speed = 1;
        fspd = 0;
        attackspd = 0;
        hspd = 0;
        vspd = 0;
    }
    
    if isTakingdmg 
    {
        superdash_timer = 0;
        superdash_power = 0;
    }
    
}
 if (key_item_released) 
    {
        if superdash_timer>=60
        {
            superdash_timer = 0;
            isDead = 12;
            instance_create_depth(x,y,depth,obj_hitbox_mask_superdash);
            superdash_timer_count = 1;
            var superdash_vfx = instance_create_depth(x,y,depth-1,obj_superdash_stream);
            switch(superdash_power)
            {
                case 0: superdash_vfx.sprite_index = spr_superdash_stream1;break;
                case 1: superdash_vfx.sprite_index = spr_superdash_stream2;break;
                case 2: superdash_vfx.sprite_index = spr_superdash_stream3;break;
            }
        } else 
        {
            superdash_timer = 0;
            superdash_timer_count = 1;
            dash_vfx_timer = 0;
            superdash_power = 0;
        }
    }
    

#endregion

#region DoubleJump

if isGrounded = 0 && key_jump_pressed && !instance_exists(obj_doublejump) && SpecAbilMask = 4 && isDashing = 0
{  
        if place_meeting(x,y,obj_doublejump_reset) || place_meeting(x,y,obj_doublejump_aoe_reset)         
        {
            instance_destroy(obj_doublejump_wings);
            doublejumpspd = 0;
            instance_create_depth(x,y,depth,obj_doublejump);
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
            canDoubleJump = 0; 
        }   
    
        var DJumpHoriz = instance_place(x,y,obj_doublejump_forward)
        var DJumpUp = instance_place(x,y,obj_doublejump_up)
    
        if DJumpHoriz != noone
        {
            doublejumpspd = DJumpHoriz.hspd;   
            vspd = DJumpHoriz.vspd;  
            x = DJumpHoriz.x;
            y = DJumpHoriz.y;
            canDoubleJump = 0; 
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        } else 
        if DJumpUp != noone
        {
            x = DJumpUp.x;
            y = DJumpUp.y;
            canDoubleJump = 0; 
            vspd = DJumpUp.vspd; 
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        } else
        {
            if canDoubleJump = 1
            {
                doublejumpspd = 0;
                instance_create_depth(x,y,depth,obj_doublejump);
                instance_create_depth(x,y,depth+1,obj_doublejump_wings);
                instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
                canDoubleJump = 0;   
            } 
        }
    
    
    /*
    if instance_exists(obj_doublejump_wings)
    {
        if place_meeting(x,y,obj_doublejump_reset) || place_meeting(x,y,obj_doublejump_aoe_reset)         
        {
            instance_destroy(obj_doublejump_wings);
            doublejumpspd = 0;
            instance_create_depth(x,y,depth,obj_doublejump);
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
            canDoubleJump = 0; 
        }   
    
        var DJumpHoriz = instance_place(x,y,obj_doublejump_forward)
        var DJumpUp = instance_place(x,y,obj_doublejump_up)
    
        if DJumpHoriz != noone
        {
            doublejumpspd = DJumpHoriz.hspd;   
            vspd = DJumpHoriz.vspd;  
            x = DJumpHoriz.x;
            y = DJumpHoriz.y;
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        } else 
        if DJumpUp != noone
        {
            x = DJumpUp.x;
            y = DJumpUp.y;
            vspd = DJumpUp.vspd; 
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        }                
    } else
        if canDoubleJump = 1
        {
            doublejumpspd = 0;
            instance_create_depth(x,y,depth,obj_doublejump);
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
            canDoubleJump = 0;   
        }   
    
    */
    
} 

/*
if isGrounded = 0 && key_jump_pressed && !instance_exists(obj_doublejump) && SpecAbilMask = 4 && isDashing = 0
{
    if instance_exists(obj_doublejump_wings)
    {
        if place_meeting(x,y,obj_doublejump_reset) || place_meeting(x,y,obj_doublejump_aoe_reset)
        {
           instance_destroy(obj_doublejump_wings);
            doublejumpspd = 0;
            instance_create_depth(x,y,depth,obj_doublejump);
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
            canDoubleJump = 0; 
        }   
    } else {
        var DJumpHoriz = instance_place(x,y,obj_doublejump_forward)
        var DJumpUp = instance_place(x,y,obj_doublejump_up)
    
        if DJumpHoriz != noone
        {
            doublejumpspd = DJumpHoriz.hspd;   
            vspd = DJumpHoriz.vspd;  
            x = DJumpHoriz.x;
            y = DJumpHoriz.y;
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        } else 
        if DJumpUp != noone
        {
            x = DJumpUp.x;
            y = DJumpUp.y;
            vspd = DJumpUp.vspd; 
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
        } else
        if canDoubleJump = 1
        {
            doublejumpspd = 0;
            instance_create_depth(x,y,depth,obj_doublejump);
            instance_create_depth(x,y,depth+1,obj_doublejump_wings);
            instance_create_depth(x,y-24,depth-1,obj_teleport_boom);
            canDoubleJump = 0;   
        }   
    }      
} 

*/

#endregion

#region Clone

if key_item && SpecAbilMask = 5 && !instance_exists(obj_masked_clone)
{
    isDead = 131;
    sprite_index = spr_player_masked_clone_use;
    image_index = 0;

}

if clone_timer!=0
{
    clone_timer++;  
    if key_item && SpecAbilMask = 5
    {
        clone_timer = 0;
        isDead = 132;
        sprite_index = spr_player_masked_clone_use;
        image_index = 4;   
    }
    
}

if clone_timer = 300
{
    clone_timer = 0;
    isDead = 132;
    sprite_index = spr_player_masked_clone_use;
    image_index = 4;
}

#endregion

#region Taking dmg

if (place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_enemy_parent_object)) && damage_cd = 0 && isTakingdmg = 0 && isVulnerable = 1
{
    fnc_snd_play_onetime(snd_player_take_dmg);  
	global.hp -= 1;
    doublejumpspd = 0;
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
    superdash_timer = 0;
    superdash_power = 0;
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

if dashing_timer_count = 0
{
    sprkl_timer_dash++;

    if sprkl_timer_dash = 10
    {
    	instance_create_depth(x+random_range(-16,16),y+random_range(-32,-16),depth+1,choose(obj_sfx_sparkle_1_player,obj_sfx_sparkle_2_player));
        sprkl_timer_dash = 0;
    }
}
if hooking_timer_count = 0 && HookEnabled = 1 && SpecAbilMask = 1
{
    sprkl_timer_hook++;

    if  sprkl_timer_hook = 15
    {
    	instance_create_depth(x,y+random_range(-16,-8),depth+1,obj_sfx_sparkle_hook);
        
        sprkl_timer_hook = 0;
    }

}

if spectp_timer_count = 0 && SpectpEnabled = 1 && SpecAbilMask = 2
{
    sprkl_timer_hook++;

    if  sprkl_timer_hook = 15
    {
    	instance_create_depth(x,y+random_range(-16,-8),depth+1,obj_sfx_sparkle_hook);
        
        sprkl_timer_hook = 0;
    }   
}


#endregion

}
#endregion

#endregion


#region Dead

if isDead = 1
{	
    fnc_msc_stop_play();
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
	isAirUsingitem = 0;
	isHooking = 0;
	isGravitate = 0;
	isTakingdmg = 0;
	jump_timer = 0;
	attackingdown_timer = 0;
	wallclimb_timer = 0;
	climbing_timer = 0;
	coyote_timer = 0;
	damage_cd = 0;
    isVulnerable = 1;
    
    #region Остановка музыки
    if instance_exists(obj_music_controller_temple)
    {
        instance_destroy(obj_music_controller_temple);   
    } 
    audio_stop_sound(msc_Temple1);
    #endregion 
    
	y+=vspd;
	vspd = lerp(vspd,0,0.05);
	death_timer++;
	switch(death_timer)
	{
    	case 1:     instance_create_depth(x,y-24,-1,obj_sfx_player_dead_emitter);
                    audio_play_sound(snd_player_death,0,false);
    				sprite_index = spr_player_masked_hurt;
    				break;
		case 55:    sprite_index = spr_player_masked_death;break;
		case 80:    image_alpha = 0;break;
		case 200:   instance_create_depth(x,y-24,-1,obj_room_transition_to_loading);
                    global.gold = global.money_saved;
                    global.darkessence = global.darkessence_saved;break;
	}
}
#endregion
    #region Cutscene
    if isDead = 2
    {
        fnc_player_cutscene();
    }
    if isDead = 2.1 // После разгновора
    {
        t_dia ++;
        if t_dia = 5
        {
            t_dia = 0;
            isDead = 0;
        }
    }
    #endregion
    #region применение телепорта
    if isDead = 11
    {
        #region создание блобов
        
        blob_cr++;        
        if blob_cr mod 2 = 0
        {
            instance_create_depth(x,y-8,depth+1,obj_teleport_blob);    
        }
        
        #endregion
        if movespeed_intp = 0 && sprite_index = spr_player_masked_transform_to_cloud
        {
            image_index = 0;   
        }
        if image_index > 8
        {
            image_index = 4;   
        }
         ;
        if move_to_cloud = 0 && instance_exists(obj_teleport_cloud)
        {
                image_speed = 2;
                var dist =point_distance(x,y,obj_teleport_cloud.x,obj_teleport_cloud.y);
                var direct=point_direction(x,y,obj_teleport_cloud.x,obj_teleport_cloud.y);
                
                if movespeed_intp < 6 {movespeed_intp+=0.5;}
                if dist>movespeed_intp 
                { 
                    
                    x+=lengthdir_x (movespeed_intp,direct);
                    y+=lengthdir_y (movespeed_intp,direct);
                } else  {
                            x=obj_teleport_cloud.x;y=obj_teleport_cloud.y;
                        }
                        
                if (obj_Player.x = obj_teleport_cloud.x) && (obj_Player.y = obj_teleport_cloud.y)
                {
                    move_to_cloud = 0;
                    instance_destroy(obj_teleport_cloud);
                    pos_teleport_turn_timer = 0;
                    revive_timer = 1;
                    movespeed_intp = 0;
                    image_index = 0;
                    instance_create_depth(x,y-16,depth-1,obj_teleport_boom);
                    
                    //isDead = 0;
                }
              /*     
            if position_meeting(obj_teleport_cloud.x,obj_teleport_cloud.y,obj_teleport_cloud)
            {
                move_to_cloud = 0;
                isDead = 0;
                pos_teleport_turn_timer = 0;
            }*/
        }
        if revive_timer!= 0 
        {
            sprite_index = spr_player_masked_revive_from_cloud;
            revive_timer++;
        }
        if revive_timer = 15
        {
            isDead = 0;  
            revive_timer = 0;
            blob_cr = 0;
            vspd = 0;
        }

        // перемещение в точку
        
        // после попадания в точку isdead = 0
    }
    #endregion
    #region применение супердеша
    if isDead = 12
    {
		
		
		y = lerp(y,superdash_y,1);
		
        vspd =0 ;
        sprite_index = spr_player_masked_superdash;
        image_speed = 1;
        fnc_Collision_player(obj_block);
        switch(superdash_power)
        {
            case 0: fspd = sign(image_xscale)*4;
                    dash_timer++;
                    break;
            case 1: fspd = sign(image_xscale)*6;break;
            case 2: fspd = sign(image_xscale)*10;break;
        }  
        if dash_timer >= 30
        {
            dash_timer = 0;
            isDead = 0;
            superdash_power = 0;
        }
        if place_meeting(x+1,y,obj_block) || place_meeting(x-1,y,obj_block) 
        {
            isDead = 0;
            superdash_power = 0;
        }
    }
    #endregion
    #region применение клона
    if isDead = 131
    {
        image_speed = 1;
        turn_in_clone_timer++;
        if turn_in_clone_timer = 30
        {
            instance_create_depth(x,y-16,depth-1,obj_teleport_boom);   
        }
        if turn_in_clone_timer = 40//10 
        {
            
            vspd = 0;
            fspd = 0;
            turn_in_clone_timer = 0;
            clone_timer = 1;
            isDead = 0;

            instance_create_depth(x,y,depth+1,obj_masked_clone);
            instance_create_depth(x,y,depth+2,obj_masked_clone_length);
        }
    }
    
    if isDead = 132
    {
        if turn_out_clone_timer < 30 {turn_out_clone_timer++;}
        if turn_out_clone_timer = 30//10
        {
            image_index = 2;
            if obj_masked_clone.x > obj_Player.x
            {
                image_xscale = -1;   
            } else image_xscale = 1;
            var dist_toClone = point_distance(x,y,obj_masked_clone.x,obj_masked_clone.y);
            var direct_toClone = point_direction(x,y,obj_masked_clone.x,obj_masked_clone.y);
                
            if dist_toClone > movespeed_inclone 
            { 
                    
                x+=lengthdir_x (movespeed_inclone,direct_toClone);
                y+=lengthdir_y (movespeed_inclone,direct_toClone);
            } else  {
                        x=obj_masked_clone.x;y=obj_masked_clone.y;
                    }   
            if (obj_Player.x = obj_masked_clone.x) && (obj_Player.y = obj_masked_clone.y)
            {
                turn_out_clone_timer = 0;
                instance_destroy(obj_masked_clone);
                isDead = 0;
                vspd = 0;
                fspd = 0;
            }
        }
    }
    #endregion
}