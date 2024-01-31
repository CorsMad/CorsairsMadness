// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function fnc_player_state01()
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
fspd = hspd + carryspd + sspd;
carryspd = 0;

if isSkating = 0 
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

if key_left && isSkating = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isUsingabil = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_xscale = -1;
	if isCarry = 0 && isFlueting = 0
	{
		sprite_index = spr_player_run;
	} else  if  isCarry = 1 
    {
        sprite_index = spr_player_run_carry;   
    } else  if  isFlueting = 1
    {
        sprite_index = spr_player_fluet_run;   
    }
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

if key_right && isSkating = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingabil = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{ 
	image_xscale = 1;
	if isCarry = 0 && isFlueting = 0
	{
		sprite_index = spr_player_run;
	} else  if  isCarry = 1 
    {
        sprite_index = spr_player_run_carry;   
    } else  if  isFlueting = 1
    {
        sprite_index = spr_player_fluet_run;   
    }
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

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingabil = 0 && isUsingitem = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	hspd = 0;
	spd = 0;
	
	if isCarry = 0 && isFlueting = 0
	{
		sprite_index = spr_player_idle;
	} else if isCarry = 1
    {
        sprite_index = spr_player_idle_carry;
    } else if isFlueting = 1
    {
        sprite_index = spr_player_fluet_idle;   
    }
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
} else 
        {
            isGrounded = 0; 
            oleg = 1;
        }
        
        
if isGrounded = 0 && isSkating = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isAttackingdown = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0 && isDashing = 0
{
	if isCarry = 0 && isFlueting = 0 && !instance_exists(obj_abil_boots_hitbox) && sbootsbuffer = 0
	{
		sprite_index = spr_player_jump;
	} else if isCarry = 1 
    {
        sprite_index = spr_player_jump_carry;
    } else if isFlueting = 1
    {
        sprite_index = spr_player_fluet_jump;   
    } else if instance_exists(obj_abil_boots_hitbox)
    {
        sprite_index = spr_player_springboots;   
    } 
    else if sbootsbuffer = 1
    {
        sprite_index = spr_player_springboots;   
    }
	image_speed = 0;
	
		if vspd > 0 
		{
			image_index = 1; 
		}
		if vspd <= 0 
		{
            if sbootsbuffer = 1 image_index = 0; else image_index = 2;		
		}
		if vspd >= 0 
        {
            sbootsbuffer = 0;   
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
    sbootsbuffer = 0;  
	jump_counts = 1;	
	coyote_timer = 1;
}


if jump_counts = 1 && isSkating = 0 && isAirThrowingBomb = 0 && key_jump && isThrowingBomb = 0 && isUsingabil = 0 && isUsingabil = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
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

if key_attack && isSkating = 0 && isAirThrowingBomb = 0 && isFlueting = 0 && isCarry = 0 && isUsingabil = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    sbootsbuffer = 0;  
	image_index = 0;
	isAttacking = 1;
    isAirattacking = 0;
	sprite_index = choose(spr_player_attack1,spr_player_attack2);
	image_speed = 0.5;
}
if isAttacking = 1 && isGrounded = 1 
{
	hspd = 0;
	spd = 0;
}	
if isAttacking = 1 && image_index = 5
{
  
    if attacking_buffer = 1
    {
        if isGrounded = 1 && !key_jump
        {
            if key_left
            {
                image_xscale = -1;   
            }
            if key_right 
            {
                image_xscale = 1;   
            }
            image_index = 0;
        	isAttacking = 1;
        	sprite_index = choose(spr_player_attack1,spr_player_attack2);
        	image_speed = 0.5;
            attacking_buffer = 0;
        }
        if isGrounded = 0
        {
            if key_left
            {
                image_xscale = -1;   
            }
            if key_right 
            {
                image_xscale = 1;   
            }
            image_index = 0;
        	isAirattacking = 1;
        	sprite_index = choose(spr_player_attack1,spr_player_attack2);
        	image_speed = 0.5;
            attacking_buffer = 0;
        }   
    }   else isAttacking = 0;	
	
}
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x+image_xscale*30,y,0,obj_hitbox);
}
if isAttacking = 1 && !place_meeting(x,y+1,obj_block)
{
	isAttacking = 0;	
}

if isAttacking = 1 && image_index > 2 && key_attack
{
    attacking_buffer = 1;
}

if isAttacking = 1 && key_jump
{
    isAttacking = 0;
    isAirattacking = 1;
    vspd = -6;
}

#endregion
#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isSkating = 0 && isAttacking = 0 && isFlueting = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    sbootsbuffer = 0;  
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_attack1;
	image_speed = 0.5;
    isAttacking = 0;
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
	instance_create_depth(x,y,0,obj_hitbox);
}
if isAirattacking = 1 && image_index = 5
{
    
    
    if airattacking_buffer = 1
    {
        if isGrounded = 0
        {
            if key_left
            {
                image_xscale = -1;   
            }
            if key_right 
            {
                image_xscale = 1;   
            }
            image_index = 0;
        	isAirattacking = 1;
        	sprite_index = spr_player_attack1;
        	image_speed = 0.5;
            airattacking_buffer = 0;
        } 
        if isGrounded = 1
        {
            isAirattacking = 0;
            image_index = 0;
        	isAttacking = 1;
        	sprite_index = choose(spr_player_attack1,spr_player_attack2);
        	image_speed = 0.5;   
            airattacking_buffer = 0;
        }
    } else isAirattacking = 0;	
	
}
if isAirattacking = 1 && image_index > 2 && key_attack
{
    airattacking_buffer = 1;
}
if isAirattacking = 1
{
    if key_jump_release && vspd < -4 
		{
			vspd = -3;
		}
}
#endregion
#region Dashing
if key_dashing && (isSkating = 0 || isSkating = 1 && !place_meeting(x,y+1,obj_block_skate)) && dashing_timer_count = 0 && DashEnabled = 1 && isCarry = 0 && isFlueting = 0 && isUsingabil = 0 && isUsingitem = 0  && isDashing = 0 && dash_counts > 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
    sbootsbuffer = 0;  
    fnc_snd_play_over(snd_dash_human);
	dash_counts --;
    if dash_pad > 0
    {
        dash_pad--;   
    }
	image_index = 0;
	isDashing = 1;
	vspd = 0;
    isAttacking = 0;
    isSkating = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
    isAirUsingabil = 0;
	dashing_timer = 1;
    dashing_timer_count = 1;
    if key_right = 1
    {
        image_xscale = 1;  
    }
    if key_left = 1
    {
        image_xscale = -1;
        dir = -1;   
    }
}
if isDashing = 1
{
	vspd = 0;
	if dashing_timer > 5 
	{
		fspd = 4*dir;	
	} else fspd = 0;
}

if isDashing = 1 
{
	if dashing_timer > 0 && dashing_timer < 3
	{
		sprite_index = spr_player_predash;	
	}
	if dashing_timer > 10 
	{
		sprite_index = spr_player_dash;
		image_speed = 2;
	}
	if dashing_timer = 0
	{
		isDashing = 0;
        if dash_pad !=0 
        {
            dashing_timer_count_timer = 0;
            dashing_timer_count = 0;       
        }
	}
    
    #region помощь при углах
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

if isDashing = 1 && isGrounded = 0 && dash_pad = 0
{
    dash_counts = 0;   
}


if dashing_timer_count = 1
{
    dashing_timer_count_timer ++;
    if dashing_timer_count_timer = 40 
    {
        dashing_timer_count_timer = 0;
        dashing_timer_count = 0;
    }
}

// Таймеры и выход 

if dashing_timer > 0 
{
	dashing_timer ++;
}	

/* PREVIUOS
if key_dashing && dash_counts = 1 && DashEnabled = 1 && isGrounded = 0
{
    dash_buffer_human = 1;   
}
*/

if key_dashing && isGrounded = 0
{
    dash_buffer_human = 1;   
}




if dashing_timer = 30
{
	dashing_timer = 0;	
}

//if dash_buffer_human = 1 && dashing_timer = 0 PREVIOUS

if dash_buffer_human = 1 && dashing_timer = 0 && dash_pad > 0
{
    dash_buffer_human = 0;
    fnc_snd_play_over(snd_dash_human);
	dash_counts --;
    if dash_pad > 0
    {
        dash_pad--;   
    }
	image_index = 0;
	isDashing = 1;
	vspd = 0;
    isAttacking = 0;
	isAirattacking = 0;
	isAirThrowingBomb = 0;
	isAirUsingitem = 0;
    isAirUsingabil = 0;
	dashing_timer = 1;
    dashing_timer_count = 1;
    if key_right = 1
    {
        image_xscale = 1;  
    }
    if key_left = 1
    {
        image_xscale = -1;
        dir = -1;   
    }   
}





#endregion
#region Attacking down

if isGrounded = 0 && isSkating = 0 && key_down && isCarry = 0 && isFlueting = 0 &&  isAttackingdown = 0 && isWallclimbing = 0 && isDashing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
    if key_attack {
        sbootsbuffer = 0;  
        sbootsbuffer = 0;  
        fnc_snd_play_onetime(snd_player_preattackdown);  
    	isAirattacking = 0;
    	isAttacking = 0;
        isAirUsingitem = 0;
        isAirUsingabil = 0;
    	isAirThrowingBomb = 0;
    	isThrowingBomb = 0
        isUsingitem = 0;
        isUsingabil = 0;
    	fspd = 0;
    	isAttackingdown = 1;	
    	vspd = 0;
    	attackingdown_timer = 1;
        sprite_index = spr_preattackingdown;
    }
}

if isAttackingdown = 1 
{
	fspd = 0;	
}
if attackingdown_timer > 0 
{
	attackingdown_timer +=1;	
}
if attackingdown_timer = 12
{
	instance_create_depth(x,y,1,obj_hitbox_down);
	instance_create_depth(x,y,1,obj_hitbox_destr_down);
}
if attackingdown_timer > 11 
{
	sprite_index = spr_player_attackingdown;
	vspd = 8;	
}
if isGrounded = 1 && isAttackingdown = 1
{
	attackingdown_timer = 0;
	isAttackingdown = 0;
}

#endregion
#region Wall climb

if place_meeting(x-1,y,obj_block_climb) && isAirattacking = 0 && isCarry = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isUsingabil = 0 && isUsingitem = 0 && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
    sbootsbuffer = 0;  
	sprite_index = spr_player_wallclimbing;
	isWallclimbing = 1;
	vspd = 0;
	hspd = 0;
	spd = 0;
	wallclimb_timer += 1;
}
if place_meeting(x+1,y,obj_block_climb)  && isAirattacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isAttacking = 0 && isUsingabil = 0 && isUsingitem = 0  && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	sprite_index = spr_player_wallclimbing;
	isWallclimbing = 1;
	vspd = 0;
	hspd = 0;
	spd = 0;
	
}

if isWallclimbing = 1 
{
	if key_jump 
	{
		sprite_index = spr_player_outjump;
		if place_meeting(x+1,y,obj_block_climb)
		{
			wallclimb_timer = 1;
			isWallclimbing = 0;
			isOutjump = 1;	
			spd = -3;
			vspd = -3;
			
		}
		if place_meeting(x-1,y,obj_block_climb)
		{
			wallclimb_timer = 1;
			isWallclimbing = 0;
			isOutjump = 1;
			spd = 3;
			vspd = -3;
		}
	}
}

if wallclimb_timer != 0 
{
	wallclimb_timer += 1;	
}
if wallclimb_timer = 10 
{
	spd = 2;
	wallclimb_timer = 0;
	isOutjump = 0;
}


#endregion
#region Climbing
if place_meeting(x,y,obj_block_ladder) && isAttacking = 0 && isUsingabil = 0 && isUsingitem = 0 && isCarry = 0 && isAirattacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isOutjump = 0 && climbing_timer = 0 && isHooking = 0 && isTakingdmg = 0
{
    sbootsbuffer = 0;  
	image_speed = 0;
	sprite_index = spr_player_climb;
	isClimbing = 1;
    dash_counts = 1;
    
}
if isClimbing = 1 
{
	fspd = 0;
	spd = 0;
	vspd = 0;
	if key_up 
	{
		image_speed = 1;
		vspd = -1;	
	}
	if key_down 
	{
		image_speed = 1;
		vspd = 1;
	}	
}

if isClimbing = 1 && !place_meeting(x,y,obj_block_ladder)
{
	isClimbing = 0;
	climbing_timer = 1;
}

if isClimbing = 1 && key_jump_pressed
{
	climbing_timer = 1;
	vspd = -4;
	isClimbing = 0;
}

if climbing_timer > 0 
{
	climbing_timer+=1;	
}
if climbing_timer = 25
{
	climbing_timer = 0;	
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

#region NEW
if global.choosed_item = 2 // Топор
	{
		#region axe
		
		
		#region on ground
        
			if key_item && isFlueting = 0 && isSkating = 0 && isAirUsingitem = 0 && isUsingabil = 0 && isUsingitem = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				switch(global.choosed_item_tier){
					case 1:
						if  global.mana > 0 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 2:
						if  global.mana > 1 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 3:
						if  global.mana > 2 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
				}               
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana -= 1;break;						
					case 2: global.mana -= 2;break;			
					case 3: global.mana -= 3;break;			
				}
				
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
		  
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0) || (key_item && key_jump && isGrounded = 1)) && isFlueting = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 2:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 3:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
				}
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana-=1;break;	
					case 2: global.mana-=2;break;	
					case 3: global.mana-=3;break;	
				}
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
if global.choosed_item = 3 // Бомба
	{
		#region on ground
        
			if key_item && isFlueting = 0 && isSkating = 0 && isAirUsingitem = 0 && isUsingabil = 0 && isUsingitem = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				switch(global.choosed_item_tier){
					case 1:
						if  global.mana > 0 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 2:
						if  global.mana > 1 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 3:
						if  global.mana > 2 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
				}               
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana -= 1;break;						
					case 2: global.mana -= 2;break;			
					case 3: global.mana -= 3;break;			
				}
				
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
		  
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0) || (key_item && key_jump && isGrounded = 1)) && isFlueting = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 2:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 3:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
				}
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana-=1;break;	
					case 2: global.mana-=2;break;	
					case 3: global.mana-=3;break;	
				}
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
	}
if global.choosed_item = 4 // Eball
	{
		#region eball
	
		#region on ground
        
			if key_item && isFlueting = 0 && isSkating = 0 && isAirUsingitem = 0 && isUsingabil = 0 && isUsingitem = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				switch(global.choosed_item_tier){
					case 1:
						if  global.mana > 0 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 2:
						if  global.mana > 1 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 3:
						if  global.mana > 2 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
				}               
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana -= 1;break;						
					case 2: global.mana -= 2;break;			
					case 3: global.mana -= 3;break;			
				}
				
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
		  
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0) || (key_item && key_jump && isGrounded = 1)) && isFlueting = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 2:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 3:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
				}
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana-=1;break;	
					case 2: global.mana-=2;break;	
					case 3: global.mana-=3;break;	
				}
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
if global.choosed_item = 5 // Попугай
{
	if !instance_exists(obj_item_parrot) {
		instance_create_depth(x,y-48,depth,obj_item_parrot);	
	}
    if key_item && instance_exists(obj_item_parrot) {
        switch(global.choosed_item_tier)
        {
            case 1:
			if global.mana > 0 {
				global.mana -=1;
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4;    
			}
                break;
            case 2:
			if global.mana > 1 {
				global.mana -=2;
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4; 
			}
                break;
            case 3:
			if global.mana > 2 {
				global.mana -=3;
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4; 
			}
                break;
        }
    }
}
#endregion



#region NOT TESTED

/*
if global.choosed_item = 2 // Топор
	{
		#region axe
		
		
		#region on ground
        
			if key_item && isFlueting = 0 && isSkating = 0 && isAirUsingitem = 0 && isUsingabil = 0 && isUsingitem = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				switch(global.choosed_item_tier){
					case 1:
						if  global.mana > 0 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 2:
						if  global.mana > 1 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
					case 3:
						if  global.mana > 2 {
							sbootsbuffer = 0;  
							image_index = 0;
							isUsingitem = 1;
							sprite_index = spr_player_item_use;
							image_speed = 0.5;	
						}
						break;
				}               
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana -= 1;break;						
					case 2: global.mana -= 2;break;			
					case 3: global.mana -= 3;break;			
				}
				
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
		  
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0) || (key_item && key_jump && isGrounded = 1)) && isFlueting = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 2:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 3:
					if global.mana > 1 {
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
				}
				
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
				switch(global.choosed_item_tier){
					case 1: global.mana-=1;break;	
					case 2: global.mana-=2;break;	
					case 3: global.mana-=3;break;	
				}
				var itemAxe = instance_create_depth(x,y-32,0,item_tier);
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
if global.choosed_item = 3 // Бомба
	{
		#region bomb
	
		#region on ground
			if key_item  && isFlueting = 0 && isUsingabil = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						global.mana -=1;
		                sbootsbuffer = 0;  
						image_index = 0;
						isUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
					break;
					case 2:
					if global.mana > 1 {
						global.mana -=2;
		                sbootsbuffer = 0;  
						image_index = 0;
						isUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
					break;
					case 3:
					if global.mana > 2 {
						global.mana -=3;
		                sbootsbuffer = 0;  
						image_index = 0;
						isUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
					break;
				}
				
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
				var itemBomb = instance_create_depth(x,y-32,0,item_tier);
				if image_xscale = 1 
				{
					itemBomb.hspd = -6	
				} else itemBomb.hspd = 6;
			}		
		#endregion
		#region in air
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isFlueting = 0 && isAirUsingabil = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				switch(global.choosed_item_tier){
					case 1:
					if global.mana > 0 {
						global.mana -=1;
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 2:
					if global.mana > 1 {
						global.mana -=2;
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
					case 3:
					if global.mana > 2 {
						global.mana -=3;
						image_index = 0;
						isAirUsingitem = 1;
						sprite_index = spr_player_item_use;
						image_speed = 0.5;
					}
						break;
				}
				
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
                spd = 0;
			}
			if isAirUsingitem = 1 && image_index = 1
			{
				var itemBomb = instance_create_depth(x,y-32,0,item_tier);
				if image_xscale = 1 
				{
					itemBomb.hspd = -6	
				} else itemBomb.hspd = 6;
			}
			if isAirUsingitem = 1 && image_index = 5
			{
				isAirUsingitem = 0;	
			}
	
		#endregion	
		
		#endregion
	}
if global.choosed_item = 4 // Eball
	{
		#region eball
	
		#region on ground
			if key_item && isFlueting = 0 && global.mana > 0 && isUsingabil = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				global.mana-=1
				
				
                sbootsbuffer = 0;  
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
				var itemBomb = instance_create_depth(x,y-16,0,item_tier);
				if image_xscale = 1 
				{
					itemBomb.hspd = 1	
				} else itemBomb.hspd = -1;
			}		
		#endregion
		#region in air
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isAirUsingabil = 0 ) || (key_attack && key_jump && isGrounded = 1)) && global.mana > 0 && isFlueting = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				global.mana-=1;
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
                spd = 0;
			}
			if isAirUsingitem = 1 && image_index = 1
			{
				var itemBomb = instance_create_depth(x,y-16,0,item_tier);
				if image_xscale = 1 
				{
					itemBomb.hspd = 1	
				} else itemBomb.hspd = -1;
			}
			if isAirUsingitem = 1 && image_index = 5
			{
				isAirUsingitem = 0;	
			}
	
		#endregion	
		
		#endregion
	}
if global.choosed_item = 5 // Попугай
{
	if !instance_exists(obj_item_parrot) {
		instance_create_depth(x,y-48,depth+1,obj_item_parrot);	
	}
    if key_item && instance_exists(obj_item_parrot) && global.mana> 0 {
		global.mana-=1;
        switch(global.choosed_item_tier)
        {
            case 1:
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4;      
                break;
            case 2:
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4; 
                break;
            case 3:
                var parrot_proj = instance_create_depth(obj_item_parrot.x,obj_item_parrot.y,-10,item_tier);
                parrot_proj.hspd = image_xscale*4; 
                break;
        }
    }
}
*/
#endregion



#endregion
#region Taking dmg

if (place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_enemy_parent_object) || place_meeting(x,y,obj_spikes)) && damage_cd = 0 && isTakingdmg = 0
{

    fnc_snd_play_onetime(snd_player_take_dmg);  
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
    sbootsbuffer = 0;  
	isTakingdmg = 1;
	damage_cd = 1;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
    isAirThrowingBomb = 0;
	isGrounded = 0;
    isSkating = 0;
    isSkatingAttack = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	isAttackingdown = 0;
	attackingdown_timer = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
    isUsingabil = 0;
	isAirUsingitem = 0;
    isAirUsingabil = 0;
	isHooking = 0;
	isGravitate = 0;
	isPickup = 0
	pickup_timer = 0;
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
	sprite_index = spr_player_hurt;
	if image_xscale  = 1
	{
		fspd = -1.5;	
	}
	if image_xscale = -1 
	{
		fspd = 1.5;	
	}
}

#region TEST
if isDead !=1
{
if damage_cd > 30 
    {
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

}
#endregion

#endregion
#region PickupBomb
{
	if isPickup = 1 
	{
        sbootsbuffer = 0;  
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
#region Special Abil
if SpecAbil = 1
{
   
#region Boots
if specabilnumber = 1
{
    if key_jump && isGrounded = 0 && !place_meeting(x,y,obj_block_ladder) && isAttackingdown = 0 && isDashing = 0 && coyote_timer = 0 && !instance_exists(obj_hitbox_down) && isCarry = 0
    {
        var padblue = instance_place(x,y,obj_pad_blue);
        if padblue != noone
        {
            if padblue.isOn = 0
            {
                sbootsbuffer = 0;  
                if !instance_exists(obj_abil_boots_hitbox) instance_create_depth(x,y,depth-1,obj_abil_boots_hitbox);                   
            }
        }   else 
            {
                sbootsbuffer = 0;  
                if !instance_exists(obj_abil_boots_hitbox) instance_create_depth(x,y,depth-1,obj_abil_boots_hitbox);   
            }
    }
}
#endregion

#region Flute
if specabilnumber = 2
{
    if key_abil_pressed && isAttacking = 0 && isAttackingdown = 0 && isDashing = 0 && isTakingdmg = 0 
    {
        if !instance_exists(obj_abil_flute_aoe)
        {
            instance_create_depth(x,y,depth+1,obj_abil_flute_aoe);
        }
        isFlueting = 1;
        #region Таймер
        fluettimer ++;
        if (fluettimer mod 20 = 0) && fluettimer < 61
        {
            instance_create_depth(x,y-24,depth-1,obj_abil_fluet_particles);
        }
        if (fluettimer mod 10 = 0) && fluettimer > 61
        {
            instance_create_depth(x,y-24,depth-1,obj_abil_fluet_particles);
        }
        #endregion
        
        if isTakingdmg = 1
        {
            isFlueting = 0;  
        }
    } else isFlueting = 0;
    if isFlueting = 0
    {
        fluettimer = 0;   
    }
}
#endregion

#region Магич Лук
/*
sprite_index = spr_player_abiluse;
var abilMagicBow = instance_create_depth(x,y-24,depth-1,obj_abil_arbalet);
abilMagicBow.image_xscale = sign(image_xscale);
*/
if specabilnumber = 4
{	
	#region boomerang
    
    #region on ground
        
			if key_abil && isSkating = 0 && isAirUsingitem = 0 && isUsingitem = 0 && isUsingabil = 0 && isAirUsingabil = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
                fnc_snd_play_onetime(snd_use_ring1_human);
				image_index = 0;
				isUsingabil = 1;
				sprite_index = spr_player_abiluse;
				image_speed = 1;
				
			}
			if isUsingabil = 1 && isGrounded = 1
			{
				hspd = 0;
				spd = 0;
			}	
			if isUsingabil = 1 && image_index = 5
			{
				isUsingabil = 0;	
			}
			if isUsingabil = 1 && image_index = 1 && !instance_exists(obj_item_boomerang)
			{
				var abilMagicBow = instance_create_depth(x,y-24,depth-1,obj_abil_arbalet);
                abilMagicBow.image_xscale = sign(image_xscale);
			           
			}		
			if isUsingabil = 1 && !place_meeting(x,y+1,obj_block)
			{
				isUsingabil = 0;	 
			}
		#endregion
	#region in air
		  
			if ((key_abil && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0 ) || (key_abil && key_jump && isGrounded = 1)) && isUsingabil = 0 && isAirUsingabil = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				fnc_snd_play_onetime(snd_use_ring1_human);
				image_index = 0;
				isAirUsingabil = 1;
				sprite_index = spr_player_abiluse;
				image_speed = 1;
			}
			if isAirUsingabil = 1 
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

			if isAirUsingabil = 1 && jump_timer < 1
			{
				spd = 0;	
			}
			if isAirUsingabil = 1 && image_index = 1 && !instance_exists(obj_item_boomerang)
			{
				var abilMagicBow = instance_create_depth(x,y-24,depth-1,obj_abil_arbalet);
                abilMagicBow.image_xscale = sign(image_xscale);
			}
			if isAirUsingabil = 1 && image_index = 5
			{
				isAirUsingabil = 0;	
			}
	
		#endregion
    
    #endregion
}

#endregion

#region Slide

if key_jump && isGrounded = 0 && !instance_exists(obj_skates_mask) && isSkating = 0 && specabilnumber = 5
{
    instance_create_depth(x,y,depth,obj_skates_mask);   
}
if isSkating = 1
{
    
    isAttacking = 0;
    isAirattacking = 0;
    
    switch(sprite_index)
    {
        case spr_player_slide:  image_speed = 0.5;
		if !audio_is_playing(snd_skate_humanlong) audio_play_sound(snd_skate_humanlong,0,0);		
		break; //abs(sspd)*0.5;break;
        case spr_player_slide_jump: 
            image_speed = 0;    
            if vspd <= 0 image_index = 0;
            if vspd > 0 image_index = 1;
            break;
        case spr_player_slide_attack: image_speed = 0.5;break;        
    }
    
    
    spd = 0;
    if place_meeting(x,y+1,obj_block_slope_r)
    {


        
        image_xscale = 1;
        if sspd < 3 sspd += 0.1;
    }
    if place_meeting(x,y+1,obj_block_slope_l)
    {

        if sspd > -3 sspd -= 0.1;
        image_xscale = -1;
    }

    if place_meeting(x,y+1,obj_block_slope_r_f)
    {

        image_xscale = 1;
        sspd = 3;
    }
    if place_meeting(x,y+1,obj_block_slope_l_f)
    {

        sspd = -3;
        image_xscale = -1;
    }
    

    if (place_meeting(x,y+1,obj_block_skate) && key_jump) {vspd = -5;isSkatingonrail = 0;}  
    
    if (!place_meeting(x,y+2,obj_block_slope) && !instance_exists(obj_skates_mask)) {instance_create_depth(x,y,depth,obj_skates_mask);isSkatingonrail = 0; }

    if place_meeting(x,y+1,obj_block) 
    {
        instance_destroy(obj_skates_mask);
        isSkating = 0;
        isSkatingonrail = 0;
    }

    if isSkatingAttack
   {
        sprite_index = spr_player_slide_attack;   
    } else if !place_meeting(x,y+1,obj_block_skate) sprite_index = spr_player_slide_jump;   
    else sprite_index = spr_player_slide;
   
    if !isSkatingonrail vspd+=0.2;

    #region Атака
        if (key_attack || key_jump && key_attack) && !isSkatingAttack
        {
            isSkatingAttack = 1;
            image_index = 0;
            sprite_index = spr_player_slide_attack;
        }
        
        if isSkatingAttack = 1 && image_index = 1
        {
            instance_create_depth(x,y,0,obj_hitbox_skating);
        }
        
        if isSkatingAttack = 1 && image_index >= 5
        {
            isSkatingAttack = 0;   
        }
        
        if isSkatingAttack = 1 && !place_meeting(x,y+1,obj_block_slope)
        {
            if key_left image_xscale = -1
            if key_right image_xscale = 1;
        }
    #endregion
    
}
if isSkating = 0
{
    sspd = 0; 
    isSkatingAttack = 0;
    isSkatingonrail = 0;
}

//SND
//if (isSkating!=1 || isDead!=0) audio_stop_sound(snd_skate_humanlong);
#endregion

#region Boomerang
if specabilnumber = 3
{	
	#region boomerang
    
    #region on ground
        
			if key_abil && isSkating = 0 && isAirUsingitem = 0 && isUsingitem = 0 && isUsingabil = 0 && isAirUsingabil = 0 && isCarry = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
			{
				image_index = 0;
				isUsingabil = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
				
			}
			if isUsingabil = 1 && isGrounded = 1
			{
				hspd = 0;
				spd = 0;
			}	
			if isUsingabil = 1 && image_index = 5
			{
				isUsingabil = 0;	
			}
			if isUsingabil = 1 && image_index = 1 && !instance_exists(obj_item_boomerang)
			{
				var itemBoom = instance_create_depth(x,y-16,depth,obj_item_boomerang);         
                itemBoom.acc = 5*sign(image_xscale);
			           
			}		
			if isUsingabil = 1 && !place_meeting(x,y+1,obj_block)
			{
				isUsingabil = 0;	 
			}
		#endregion
	#region in air
		  
			if ((key_abil && isGrounded = 0 && isAirUsingitem = 0 && isAirUsingabil = 0 ) || (key_abil && key_jump && isGrounded = 1)) && isUsingabil = 0 && isAirUsingabil = 0 && isSkating = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 && isCarry = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 
			{
				
				image_index = 0;
				isAirUsingabil = 1;
				sprite_index = spr_player_item_use;
				image_speed = 0.5;
			}
			if isAirUsingabil = 1 
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

			if isAirUsingabil = 1 && jump_timer < 1
			{
				spd = 0;	
			}
			if isAirUsingabil = 1 && image_index = 1 && !instance_exists(obj_item_boomerang)
			{
				var itemBoom = instance_create_depth(x,y-16,depth,obj_item_boomerang);         
                itemBoom.acc = 5*sign(image_xscale); 
			}
			if isAirUsingabil = 1 && image_index = 5
			{
				isAirUsingabil = 0;	
			}
	
		#endregion
    
    #endregion
}
#endregion

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
if key_attack && isThrowingBomb = 0 && isCarry = 1 && isUsingabil = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_index = 0;
	isThrowingBomb = 1;
    fnc_snd_play_onetime(snd_player_throw_bomb);
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

if ((key_attack && isGrounded = 0 && isAirThrowingBomb = 0 && isCarry = 1) || (key_attack && key_jump && isGrounded = 1 && isCarry = 1)) && isAirThrowingBomb = 0 && isAirattacking = 0 && isCarry = 1 && isAirUsingabil = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
    fnc_snd_play_onetime(snd_player_throw_bomb);
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

#endregion
#region Dead
if global.hp <= 0
	{
		isDead = 1;	
		vspd = -2;
	}
#endregion
#region Разговор
	if isFlueting = 0 && 
	isUsingabil = 0 && !instance_exists(obj_item_boomerang) && 
	!instance_exists(obj_item_boomerang_dot) &&  
	key_up_press && 
	isGrounded = 1 && isAttacking = 0 && 
	isDashing = 0 && isAttackingdown = 0 && 
	isAirattacking = 0 && isUsingitem = 0 {
		canTalk = 1	
	} else canTalk = 0;
	#endregion


}
#endregion
    #region Dead

if isDead = 1
{	
    fnc_msc_stop_play();
    sbootsbuffer = 0;  
	isAttacking = 0;
	isAirattacking = 0;
    isSkating = 0;
    isSkatingAttack = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	isAttackingdown = 0;
	isWallclimbing = 0;
	isOutjump = 0;
	isClimbing = 0;
	isUsingitem = 0;
    isUsingabil = 0;
	isAirUsingitem = 0;
    isAirUsingabil = 0;
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
    attacking_buffer = 0;
    airattackbuffer = 0;
    pickup_timer = 0;
	isCarry = 0;
	
	
    
	y+=vspd;
	vspd = lerp(vspd,0,0.05);
	death_timer++;
	switch(death_timer)
	{
		case 1: instance_create_depth(x,y-24,-1,obj_sfx_player_dead_emitter);
				audio_play_sound(snd_player_death,0,false);
                sprite_index = spr_player_hurt;
                image_alpha = 1;
                image_blend = c_white;
				break;
		case 55:sprite_index = spr_player_death;break;
		case 80:image_alpha = 0;break;
		case 180:   instance_create_depth(x,y,0,obj_room_transition_black_screen_death);
                    //global.gold = global.money_saved;
                    global.darkessence = global.darkessence_saved;
                    break;
	}
}
#endregion
    #region Cutscene
    if isDead = 2
    {
        sbootsbuffer = 0;  
        fnc_player_cutscene_hum();
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
    if isDead = 2.11
    {
           
    }
    if isDead = 2.2 //Приземление
    {
        sbootsbuffer = 0;  
        sprite_index = spr_player_fly_aftercannon;
        image_speed = 0.5;
        vspeed = 0;
        hspeed = 0;
        y+=1;
        if place_meeting(x,y+1,obj_block) isDead = 0;  
    }
    
    #endregion
    #region Stop everythin
    {
        if isDead = 3
        {
            sbootsbuffer = 0;  
            image_alpha = 0;
        }   else 
            {
                if damage_cd = 0 && isDead != 1
                {
                    image_alpha = 1;
                }
            }
        
    }
    
    #endregion
    #region Transform
    if isDead = 4
    {
        sbootsbuffer = 0;  
        sbootsbuffer = 0;  
        sprite_index = spr_player_transform;
        y+=vspd;
	    vspd = lerp(vspd,0,0.05);   
        transform_timer ++;
        switch(transform_timer)
        {
            case    50: image_index++ ;break;
            case    55: image_index++ ;break;
            case    60: image_index++ ;break;
            case    65: image_index++ ;break;
            case    70: image_index++ ;break;
            case    75: image_index++ ;break;
            case    80: image_index++ ;break;
            case    120: image_index++ ;break;           
        }
       
        
       
    }
    #endregion
    #region SnowTP
    if isDead = 30
    {
        sbootsbuffer = 0;  
    	isAttacking = 0;
    	isAirattacking = 0;
        isSkating = 0;
        isSkatingAttack = 0;
    	isAirattacking_timer = 0;
    	isGrounded = 0;
    	isSkidding = 0;
    	isSkidding_timer = 0;
    	isDashing = 0;
    	isAttackingdown = 0;
    	isWallclimbing = 0;
    	isOutjump = 0;
    	isClimbing = 0;
    	isUsingitem = 0;
        isUsingabil = 0;
    	isAirUsingitem = 0;
        isAirUsingabil = 0;
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
        attacking_buffer = 0;
        airattackbuffer = 0;
        pickup_timer = 0;
    	isCarry = 0;   
        vspd = 0;
        sprite_index = spr_player_propfly;
    }
    #endregion
	
}


