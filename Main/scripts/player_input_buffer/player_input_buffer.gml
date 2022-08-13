// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_input_buffer_attack(argument0)
{

    if key_attack && isGrounded = 1 && image_index > argument0
    {
        attackbuffer = 1;
        airattackbuffer = 0;
        dashingbuffer = 0;
        hookingbuffer = 0;
    }
}

function player_input_buffer_airattack(argument1)
{
    if key_attack && isGrounded = 0 && image_index > argument1
    {
        attackbuffer = 0;
        airattackbuffer = 1;
        dashingbuffer = 0;
        hookingbuffer = 0;
    }
}

function player_input_buffer_dashing(argument2) 
{
    if key_dashing && dashing_timer_count = 0 && image_index > argument2
    {
        attackbuffer = 0;
        airattackbuffer = 0;
        dashingbuffer = 1;
        hookingbuffer = 0;   
    }
    if dashingbuffer = 1 && dashing_timer_count = 1 
    {
        dashingbuffer = 0;   
    }
}

function player_input_buffer_item_hook(argument3)  
{
    if key_item && HookEnabled = 1 && hooking_timer_count = 0 && !instance_exists(obj_item_hook_masked) && image_index > argument3
    {
        attackbuffer = 0;
        airattackbuffer = 0;
        dashingbuffer = 0;
        hookingbuffer = 1;    
    }
    if hookingbuffer = 1 && hooking_timer_count = 1
    {
        hookingbuffer = 0;   
    }
}

function player_input_buffer_jump(argument4)
{
    if key_jump && isGrounded = 1 && image_index > argument4
    {
        vspd = -6;
    }
}

function player_input_buffer_execute()
{
    #region attack buffer
    if  attackbuffer = 1
    {
        attackbuffer = 0;
        airattackbuffer = 0;
        dashingbuffer = 0;
        hookingbuffer = 0; 
        image_index = 0;
    	isAttacking = 1;
        
        
    	if comboMeter < 3
        {
    	    sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
        } else
        if (dir = 1 && key_right) || (dir = -1 && key_left)
        {
            sprite_index = spr_player_masked_attack_finisher_forward;
        } else  
        if key_up
        {
            sprite_index = spr_player_masked_attack_finisher_up;   
        } else 
        if !key_right && !key_left
        {
            sprite_index = spr_player_masked_attack_finisher1;  
        }
        
        
        
    	image_speed = 1;
        if key_left = 1
        {
            image_xscale = -1;   
            dir = -1;
        }
        if key_right = 1
        {
            image_xscale = 1;   
            dir = 1;
        }
    
        if key_right && dir = 1 
        {
            attackspd = 1;
        }
    
        if key_left && dir = -1
        {
            attackspd = -1;   
        }   
    }
    #endregion
    
    #region airattack buffer
    
    {
        if airattackbuffer = 1
        {
            attackbuffer = 0;
            airattackbuffer = 0;
            dashingbuffer = 0;
            hookingbuffer = 0;  
            image_index = 0;
        	isAirattacking = 1;
        	if comboMeter < 3
            {
        	    sprite_index = choose(spr_player_masked_attack1,spr_player_masked_attack2);
            } else 
            if key_down
            {
                sprite_index = spr_player_masked_attack_finisher_down;
            } else sprite_index = spr_player_masked_attack_finisher1;
             
        	image_speed = 1;
            isAfterhook = 0;
            if key_left = 1
            {
                image_xscale = -1;   
                dir = -1;
            }
            if key_right = 1
            {
                image_xscale = 1;   
                dir = 1;
            }
        }
    }
    #endregion 
    
    #region dash buffer

    if dashingbuffer = 1 && dashing_timer_count = 0
    {
        audio_play_sound(snd_player_dash_masked,0,0);
        attackbuffer = 0;
        airattackbuffer = 0;
        dashingbuffer = 0;
        hookingbuffer = 0;
        sprite_index = spr_player_masked_dash;
        image_index = 0;
    	isDashing = 1;
    	vspd = 0;
    	isAirattacking = 0;
    	isAirThrowingBomb = 0;
    	isAirUsingitem = 0;
        instance_create_depth(x,y,0,obj_hitbox_mask_dash);
        if key_right = 1
        {
            image_xscale = 1;  
            dir = 1;
        }
        if key_left = 1
        {
            image_xscale = -1;
            dir = -1;   
        }
    }   
    #endregion
    
    #region hooking
    if hookingbuffer = 1 && HookEnabled = 1 && hooking_timer_count = 0 && !instance_exists(obj_item_hook_masked)
    {
        attackbuffer = 0;
        airattackbuffer = 0;
        dashingbuffer = 0;
        hookingbuffer = 0;
        hooking_timer_count = 1;
        if key_right = 1
        {
            image_xscale = 1;  
            dir = 1;
        }
        if key_left = 1
        {
            image_xscale = -1;
            dir = -1;   
        }
        instance_create_depth(x+dir*4,y-16,depth,obj_item_hook_masked);
    }
    #endregion
    
}

