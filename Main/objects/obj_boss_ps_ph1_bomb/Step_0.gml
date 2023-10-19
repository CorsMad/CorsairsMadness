/// @description Insert description here
// You can write your code in this editor

if fly = 1
{
#region коллиз
        
		
    	if place_meeting(x+hspd, y, obj_block)
    	{
        	while (!place_meeting(x+sign(hspd), y, obj_block )) 
        	{
        		x+= sign(hspd);
        	}
            hspd = 0;   
    	}
    	x += hspd;

    	if place_meeting(x, y+vspd, obj_block) 
    	{
    	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
    		{
    	        y+= sign(vspd);
    	    }
    	    vspd = 0;
    	}
    	y += vspd;

    	if !place_meeting(x,y+vspd, obj_block)
    	{
    		vspd +=0.2;	
    	}    
		
    #endregion  
if place_meeting(x+1,y,obj_block) || place_meeting(x,y+1,obj_block) ||
place_meeting(x-1,y,obj_block) || place_meeting(x,y-1,obj_block)
{
    fly = 0;
    hspd = 0;
    vspd = 0;
}    
if place_meeting(x,y,obj_hitbox_mask)
{
    if instance_exists(obj_Player)
    {
        if obj_Player.x < x hspd = abs(hspd)*1.5   
        if obj_Player.x >= x hspd = -abs(hspd)*1.5   
    }
}
}

if fly = 0
{
    t++;
    if t = 100
    {
        fnc_snd_play_onetime(snd_ps_follower_bomb);
        instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x,y,depth,obj_boss_ps_ph1_bomb_aoe)
        instance_destroy();
    }
}





