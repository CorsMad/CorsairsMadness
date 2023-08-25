/// @description Insert description here
// You can write your code in this editor



if place_meeting(x, y+vspd, obj_boat_boss_desert_proj_limiter)
	{
		vspd = -vspd;	
	}
	if place_meeting(x+hspd, y, obj_boat_boss_desert_proj_limiter)
		{
		while (!place_meeting(x+sign(hspd), y, obj_boat_boss_desert_proj_limiter )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_boat_boss_desert_proj_limiter) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_boat_boss_desert_proj_limiter )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;
    
    
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        global.hp-=1;
        enemy_hp = 0;
    } 