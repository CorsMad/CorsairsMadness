// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_player_state0()
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
fspd = hspd + carryspd;
carryspd = 0;


if fspd > 2
{
	fspd = 2;	
}
if fspd < -2
{
	fspd = -2;	
}

#region движение влево

if key_left && isAirThrowingBomb = 0 && isThrowingBomb = 0 && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
	image_xscale = -1;
	if isCarry = 0
	{
		sprite_index = spr_player_run;
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

if key_right && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{ 
	image_xscale = 1;
	if isCarry = 0
	{
		sprite_index = spr_player_run;
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

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingitem = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirThrowingBomb = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	hspd = 0;
	spd = 0;
	
	if isCarry = 0
	{
		sprite_index = spr_player_idle;
	} else sprite_index = spr_player_idle_carry;
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
        
        
if isGrounded = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0 &&  isAirattacking = 0 && isAirUsingitem = 0 &&  isAttackingdown = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0 && isDashing = 0
{
	if isCarry = 0 
	{
		sprite_index = spr_player_jump;
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


if jump_counts = 1 && isAirThrowingBomb = 0 && key_jump && isThrowingBomb = 0 &&  isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0 && isTakingdmg = 0 && isPickup = 0
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

if key_attack && isAirThrowingBomb = 0 && isCarry = 0 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
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
	instance_create_depth(x,y,0,obj_hitbox);
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

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAttacking = 0 && isAirattacking = 0 && isAirThrowingBomb = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
{
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
if key_dashing && dashing_timer_count = 0 && DashEnabled = 1 && isCarry = 0 && isUsingitem = 0  && isDashing = 0 && dash_counts > 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
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
if dashing_timer > 20 && key_dashing && dash_counts = 1 && DashEnabled = 1 && isGrounded = 0
{
    dash_buffer_human = 1;   
}
if dashing_timer = 30
{
	dashing_timer = 0;	
}

if dash_buffer_human = 1 && dashing_timer = 0
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

if isGrounded = 0 && key_down && isCarry = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isDashing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isAirThrowingBomb = 0 && isThrowingBomb = 0
{
    fnc_snd_play_onetime(snd_player_preattackdown);  
	isAirattacking = 0;
	isAttacking = 0;
    isAirUsingitem = 0;
	isAirThrowingBomb = 0;
	isThrowingBomb = 0
    isUsingitem = 0;
	fspd = 0;
	isAttackingdown = 1;	
	vspd = -0.5;
	attackingdown_timer = 1;
    sprite_index = spr_preattackingdown;
}

if isAttackingdown = 1 
{
	fspd = 0;	
}
if attackingdown_timer > 0 
{
	attackingdown_timer +=1;	
}
if attackingdown_timer = 16
{
	instance_create_depth(x,y,1,obj_hitbox_down);
	instance_create_depth(x,y,1,obj_hitbox_destr_down);
}
if attackingdown_timer > 15 
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

if place_meeting(x-1,y,obj_block_climb) && isAirattacking = 0 && isCarry = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isUsingitem = 0 && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
{
	sprite_index = spr_player_wallclimbing;
	isWallclimbing = 1;
	vspd = 0;
	hspd = 0;
	spd = 0;
	wallclimb_timer += 1;
}
if place_meeting(x+1,y,obj_block_climb)  && isAirattacking = 0 && isAirUsingitem = 0 && isAttacking = 0 && isUsingitem = 0  && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0
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
if place_meeting(x,y,obj_block_ladder) && isAttacking = 0 && isUsingitem = 0 && isCarry = 0 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isOutjump = 0 && climbing_timer = 0 && isHooking = 0 && isTakingdmg = 0
{
	image_speed = 0;
	sprite_index = spr_player_climb;
	isClimbing = 1;
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

if (place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_enemy_parent_object) || place_meeting(x,y,obj_spikes)) && damage_cd = 0 && isTakingdmg = 0
{

    fnc_snd_play_onetime(snd_player_take_dmg);  
	global.hp -= 1;
	hspd = 0;
	vspd = -2;
	isTakingdmg = 1;
	damage_cd = 1;
	isAttacking = 0;
	isAirattacking = 0;
	isAirattacking_timer = 0;
	isGrounded = 0;
	isSkidding = 0;
	isSkidding_timer = 0;
	isDashing = 0;
	isAttackingdown = 0;
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
if key_attack && isThrowingBomb = 0 && isCarry = 1 && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
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

if ((key_attack && isGrounded = 0 && isAirThrowingBomb = 0 && isCarry = 1) || (key_attack && key_jump && isGrounded = 1 && isCarry = 1)) && isAirThrowingBomb = 0 && isAirattacking = 0 && isCarry = 1 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && isTakingdmg = 0 && isPickup = 0
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
	isAttackingdown = 0;
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
    attacking_buffer = 0;
    airattackbuffer = 0;
	
	
	if instance_exists(obj_music_controller_jungle)
    {
        instance_destroy(obj_music_controller_jungle);   
    } 
    audio_stop_sound(msc_Jungle1);
    audio_stop_sound(msc_Jungle1_boss);
	y+=vspd;
	vspd = lerp(vspd,0,0.05);
	death_timer++;
	switch(death_timer)
	{
		case 1: instance_create_depth(x,y-24,-1,obj_sfx_player_dead_emitter);
				audio_play_sound(snd_player_death,0,false);
                sprite_index = spr_player_hurt;
				break;
		case 55:sprite_index = spr_player_death;break;
		case 80:image_alpha = 0;break;
		case 180:instance_create_depth(x,y,0,obj_room_transition_black_screen_death); break;
	}
}
#endregion
}