/// @description Insert description here
// You can write your code in this editor

#region Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_down_pressed = keyboard_check_pressed(ord("S"));
key_up = keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(ord("K"));
key_jump_release = keyboard_check_released(ord("K"));
key_jump_pressed = keyboard_check_pressed(ord("K"));
key_attack = keyboard_check_pressed(ord("J"));
key_dashing = keyboard_check_pressed(ord("L"));
key_item = keyboard_check_pressed(ord("U"));
key_item_choose = keyboard_check_pressed(ord("O"));
#endregion
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

	fnc_Collision(obj_block);
	
#endregion	
#region Movement

// Move left-right

hspd = spd;


// движение влево


if key_left && isUsingitem = 0 && isAirUsingitem = 0 && isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	image_xscale = -1;
	sprite_index = spr_player_run;
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

// движение вправо

if key_right && isUsingitem = 0 && isAttacking = 0 && isAirUsingitem = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{ 
	image_xscale = 1;
	sprite_index = spr_player_run;
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

//  остановка

if ((!key_left && !key_right) || (key_left && key_right) ) && isUsingitem = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	hspd = 0;
	spd = 0;
	sprite_index = spr_player_idle;
	image_speed = 1.25;
	
}


// прыжок 

if place_meeting(x,y+1,obj_block) 
{
	isGrounded = 1;	
} else isGrounded = 0; 

if isGrounded = 0 && isAirattacking = 0 && isAirUsingitem = 0 &&  isAttackingdown = 0 && isWallclimbing = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 
{
	sprite_index = spr_player_jump;
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
				vspd +=0.25;
			}
}
if isGrounded  = 1
{
	jump_counts = 1;	
	coyote_timer = 1;
}

if jump_counts = 1 && key_jump && isUsingitem = 0 && isAttacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && coyote_timer!=0
{
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
#region Attack on ground

if key_attack && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	image_index = 0;
	isAttacking = 1;
	sprite_index = choose(spr_player_attack1,spr_player_attack2);
	image_speed = 0.5;
}
if isAttacking = 1 && isGrounded = 1
{
	hspd = 0;
}	
if isAttacking = 1 && image_index = 5
{
	isAttacking = 0;	
}
if isAttacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox);
}
#endregion
#region Attack in air

if ((key_attack && isGrounded = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	image_index = 0;
	isAirattacking = 1;
	sprite_index = spr_player_attack1;
	image_speed = 0.5;
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
	hspd = 0;	
}
if isAirattacking = 1 && image_index = 1
{
	instance_create_depth(x,y,0,obj_hitbox);
}
if isAirattacking = 1 && image_index = 5
{
	isAirattacking = 0;	
}

#endregion
#region Dashing
if key_dashing && isUsingitem = 0 && isGrounded = 0 && isAttacking = 0 && isDashing = 0 && dash_counts > 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	dash_counts --;
	image_index = 0;
	isDashing = 1;
	vspd = 0;
	isAirattacking = 0;
	isAirUsingitem = 0;
	dashing_timer = 1;
}
if isDashing = 1
{
	vspd = 0;
	if dashing_timer > 10 
	{
		hspd = 4*dir;	
	} else hspd = 0;
	if dashing_timer = 1 
	{
			
	}
}

if isDashing = 1 
{
	if dashing_timer > 0 && dashing_timer < 10
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
	}
}

// Таймеры и выход 

if dashing_timer > 0 
{
	dashing_timer ++;
}	
if dashing_timer = 30 
{
	dashing_timer = 0;	
}

#endregion
#region Attacking down

if isGrounded = 0 && key_down_pressed && isAttackingdown = 0 && isWallclimbing = 0 && isDashing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
{
	isAirattacking = 0;
	isAttacking = 0;
	hspd = 0;
	isAttackingdown = 1;	
	vspd = -1;
	attackingdown_timer = 1;
}

if isAttackingdown = 1 
{
	hspd = 0;	
}
if attackingdown_timer > 0 
{
	attackingdown_timer +=1;	
}
if attackingdown_timer = 15
{
	instance_create_depth(x,y,1,obj_hitbox_down);
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

if place_meeting(x-1,y,obj_block_climb) && isAirattacking = 0 && isAirUsingitem = 0 &&  isAttacking = 0 && isUsingitem = 0 && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0 && isHooking = 0
{
	sprite_index = spr_player_wallclimbing;
	isWallclimbing = 1;
	vspd = 0;
	hspd = 0;
	spd = 0;
	wallclimb_timer += 1;
}
if place_meeting(x+1,y,obj_block_climb)  && isAirattacking = 0 && isAttacking = 0 && isUsingitem = 0  && isDashing = 0 && isOutjump = 0 && wallclimb_timer = 0 && isClimbing = 0
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
if place_meeting(x,y,obj_block_ladder) && isAttacking = 0 && isUsingitem = 0 && isAirattacking = 0 && isAirUsingitem = 0 &&  isDashing = 0 && isAttackingdown = 0 && isOutjump = 0 && climbing_timer = 0 && isHooking = 0
{
	image_speed = 0;
	sprite_index = spr_player_climb;
	isClimbing = 1;
}
if isClimbing = 1 
{
	hspd = 0;
	spd = 0;
	vspd = 0;
	if key_up 
	{
		image_speed = 0.5;
		vspd = -1;	
	}
	if key_down 
	{
		image_speed = 0.5;
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

if key_item_choose 
{
	global.choosed_item +=1;	
}
if global.choosed_item = 4
{
	global.choosed_item = 1;	
}

#endregion
	if global.choosed_item = 1
	{	
		#region boomerang
	
		#region on ground
	
	
			if key_item && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && !instance_exists(obj_item_boomerang_dot)
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = choose(spr_player_attack1,spr_player_attack2);
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
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0 && !instance_exists(obj_item_boomerang_dot)
			{
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_attack1;
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
			if key_item && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = choose(spr_player_attack1,spr_player_attack2);
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
				var itemAxe = instance_create_depth(x,y-32,0,obj_item_axe);
				if image_xscale = 1 
				{
					itemAxe.hspd = 2	
				} else itemAxe.hspd = -2;
			}		
		#endregion
		#region in air
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
			{
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_attack1;
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
			if key_item && isUsingitem = 0 && isAttacking = 0 && isGrounded = 1 && isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
			{
				image_index = 0;
				isUsingitem = 1;
				sprite_index = choose(spr_player_attack1,spr_player_attack2);
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
	
			if ((key_item && isGrounded = 0 && isAirUsingitem = 0 && isAirattacking = 0) || (key_attack && key_jump && isGrounded = 1)) && isAirUsingitem = 0 &&  isAirattacking = 0 && isDashing = 0 && isAttackingdown = 0 && isWallclimbing = 0 && isOutjump = 0 && isClimbing = 0 && isHooking = 0
			{
				image_index = 0;
				isAirUsingitem = 1;
				sprite_index = spr_player_attack1;
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
#region Pads

#region Pad Blue

#endregion

#endregion









