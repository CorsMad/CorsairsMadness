// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_player_state1()
{
    #region Alive
if isDead = 0 
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
fspd = hspd + carryspd + afterhookspd;
carryspd = 0;

if isGrounded = 1 || place_meeting(x+1,y,obj_block) || place_meeting(x-1,y,obj_block) || isDashing = 1 || isHooking = 1
{
    afterhookspd = 0;   
}
if afterhookspd > 0 
{
    if key_left
    {
        afterhookspd = 0;   
    }
}
if afterhookspd < 0
{
    if key_right
    {
        afterhookspd = 0;   
    }
}

if afterhookspd = 0
{
    if fspd > 2
    {
    	fspd = 2;	
    }
    if fspd < -2
    {
    	fspd = -2;	
    }
}
#region движение влево

if key_left && isRecoil = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_xscale = -1;
	if isCarry = 0
	{
		sprite_index = spr_player_masked_run;
	} else sprite_index = spr_player_run_carry;
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

if key_right && isRecoil = 0 &&  isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 &&  isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{ 
	image_xscale = 1;
	if isCarry = 0
	{
		sprite_index = spr_player_masked_run;
	} else sprite_index = spr_player_run_carry;
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

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingitem = 0 && isRecoil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	hspd = 0;
	spd = 0;
	
	if isCarry = 0
	{
		sprite_index = spr_player_masked_idle;
	} else sprite_index = spr_player_idle_carry;
	image_speed = 1.25;
	
}

#endregion
#region прыжок 

if place_meeting(x,y+1,obj_block) 
{
	isGrounded = 1;	
} else isGrounded = 0; 

if isGrounded = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingitem = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    if isDashing = 0
    {
    	if isCarry = 0
    	{
    		sprite_index = spr_player_masked_jump;
    	} else sprite_index = spr_player_jump_carry;
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


if jump_counts = 1 && isRecoil = 0 && isAirThrowingBomb = 0 && key_jump && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
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

if key_attack && isRecoil = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAttacking = 1;
	sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
	image_speed = 1;
}
if isAttacking = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}	
if isAttacking = 1 && image_index = 3
{
	isAttacking = 0;	
}
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox_mask);
}
if isAttacking = 1 && !place_meeting(x,y+1,obj_block)
{
	isAttacking = 0;	
}
#endregion

#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirattacking = 0 && isRecoil = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_masked_attack1;
	image_speed = 1;
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
if isAirattacking = 1 && image_index = 3
{
	isAirattacking = 0;	
}

#endregion

#region Dashing
if key_dashing && isCarry = 0 && isRecoil = 0 && isUsingitem = 0 && isGrounded = 0 && isAttacking = 0 && isDashing = 0 && dash_counts > 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
	dash_counts --;
    sprite_index = spr_player_masked_dash;
    image_index = 0;
	isDashing = 1;
	vspd = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
	dashing_timer = 1;
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


/*
if isDashing = 1 
{
	if dashing_timer = 0
	{
		isDashing = 0;	
	}
}

// Таймеры и выход 

if dashing_timer > 0 
{
	dashing_timer ++;
}	
if dashing_timer = 20 
{
	dashing_timer = 0;	
}
*/
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
    if (image_index > image_number - 1) 
    {
        isRecoil = 0;
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
    if key_item && !instance_exists(obj_item_hook_masked) && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isTakingdmg = 0 && (hook_iframes_timer > 15 || hook_iframes_timer = 0)
    {
        instance_create_depth(x,y-16,depth,obj_item_hook_masked);
    }
    if isHooking = 1
    {
        vspd = 0;
        spd = 0
        fspd = 6*dir;
       if place_meeting(x+1,y,obj_block) ||place_meeting(x-1,y,obj_block)
       {   
            if instance_exists(obj_item_hook_masked)
            {
                instance_destroy(obj_item_hook_masked);   
            }
            isHooking = 0
            
       }
    }

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
    isHookiframes = 0;
    hook_iframes_timer = 0
    
	if isCarry = 1
	{
		isCarry = 0;
		var b_cr = instance_create_depth(x,y-32,1,obj_bomb);
		b_cr.isOn = 1;
	}
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
    if hook_iframes_timer = 50 
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

}
#endregion
    #region Dead

if isDead = 1
{	
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
	dashing_timer = 0;
	jump_timer = 0;
	attackingdown_timer = 0;
	wallclimb_timer = 0;
	climbing_timer = 0;
	coyote_timer = 0;
	damage_cd = 0;
    isVulnerable = 1;
	
	
	
	y+=vspd;
	vspd = lerp(vspd,0,0.05);
	death_timer++;
	switch(death_timer)
	{
		case 1: instance_create_depth(x,y-24,-1,obj_sfx_player_dead_emitter);
				sprite_index = spr_player_masked_hurt;
				break;
		case 55:sprite_index = spr_player_masked_death;break;
		case 80: image_alpha = 0;break;
		case 200: instance_create_depth(x,y-24,-1,obj_room_transition_to_loading);break;
	}
}
#endregion
}