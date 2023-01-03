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
        state = 4; 
        vspd = 0;
    }
    y+=vspd;
    vspd+=0.2;
}

#endregion

#region Следование за игроком
if state = 1
{
    if isGrounded = 1
    {
        if obj_Player.x > x 
        {  
            if (abs(obj_Player.x - x) < 200) || isGrounded = 0
            {
                hspd = 2.5;
            } else  hspd = 4;     
        }
    
        if obj_Player.x < x 
        {  
            if (abs(obj_Player.x - x) < 200) || isGrounded = 0
            {
                hspd = -2.5;
            } else  hspd = -4;     
        }
    }
    
    if instance_exists(obj_Player)
            {
                if (abs(obj_Player.x - x) < 100) && isGrounded = 1 &&  ((!place_meeting(x,y,obj_block_jump_big_flw) || !place_meeting(x,y,obj_block_jump_small_flw)))
                {
                    image_index = 0;
                    if obj_Player.x > x
                    {
                        image_xscale = 1;   
                    } else image_xscale = -1;
        	        state = choose(21,22,23);
                    t = 0;
                }
                
                /*
                var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        	    if ((dis < dist) && isGrounded = 1 && (!place_meeting(x,y,obj_block_jump_big_flw) || !place_meeting(x,y,obj_block_jump_small_flw)))
        		{
                    image_index = 0;
                    if obj_Player.x > x
                    {
                        image_xscale = 1;   
                    } else image_xscale = -1;
        	        state = choose(21,22,23);
                    t = 0;
                }
                */
            } 
            
    if isGrounded = 0
    {
        if place_meeting(x,y+1,obj_block_flw)
        {
            image_index = 0;
            state = 4;
            hspd = 0;
            t = 0;
        }
    }
}

#endregion

#region Атака хлопком
if state = 21
{
    hspd = 0;
    t++;
    
    switch(t)
    {
        case 10:    image_index = 1;break;
        case 20:    image_index = 2;break;
        case 25:    image_index = 3;break;
        case 30:    image_index = 4;
                    instance_create_depth(x,y,0,obj_follower_grounded_clap_dirt_creator);
                    if image_xscale = 1
                    {
                        instance_create_depth(x,y,depth-1,obj_follower_grounded_clap);  
                    } else  {
                                var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_clap);
                                slm.image_xscale = -1;
                            } 
                    break;
        case 50:    image_index = 5;break;
        case 55:    state = 3;
                    t = 0;
                    break;
    }
}
#endregion

#region Атака по земле
if state = 22
{
    t++;
    hspd = 0;  
    
    switch(t)
    {
        case 10:    image_index = 1;break;
        case 20:    image_index = 2;break;
        case 40:    image_index = 3;
                    if image_xscale = 1
                    {
                        instance_create_depth(x,y,depth-1,obj_follower_grounded_slam_projectile);  
                    } else  {
                                var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_slam_projectile);
                                slm.image_xscale = -1;
                            }
                    break;
        case 60:    image_index = 4;break;
        case 65:    state = 3;
                    t = 0;
                    break;
    }
}
#endregion

#region Атака лазером
if state = 23
{
    t++;
    hspd = 0; 

    switch(t)
    {
        case 5:     image_index = 1;break;
        case 10:    image_index = 2;break;
        case 15:    if image_xscale = 1
                    {
                        instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);  
                    } else  {
                                var slm = instance_create_depth(x,y,depth-1,obj_follower_grounded_laser_vfx);
                                slm.image_xscale = -1;
                            } 
                    break;
        case 70:    image_index = 3;break;  
        case 75:    state = 3;
                    t = 0;
                    break;
    }
}
#endregion

#region Ожидание после атаки
if state = 3 
{
    if obj_Player.x > x
    {
        image_xscale = 1;   
    } else image_xscale = -1;
    t++;
    if t = 30
    {
        if instance_exists(obj_Player)
        {
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
            if ((dis < dist) && isGrounded = 1)
            {
                image_index = 0;
                if obj_Player.x > x
                    {
                        image_xscale = 1;   
                    } else image_xscale = -1;
            	state = choose(21,22,23);
                t = 0;
            } else  {
                        image_index = 1;
                        state = 1;
                        t = 0;
                    }
            if ((dis > dist*2) && isGrounded = 1)
            {
                image_index = 1;
                state = 1;
                t = 0;   
            }
        } 
    }
}
#endregion

#region Ожидание после приземления
if state = 4
{
    sprite_index = spr_follower_grounded_landing;
    t++;
    image_speed = 0.5;
    if t = 1
    {
        fnc_snd_play_onetime(snd_follower_landing);   
    }
    if t = 20
    {
        if instance_exists(obj_Player)
            {
                var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
                if ((dis < dist) && isGrounded = 1)
                {
                    image_index = 0;
                    
                    if obj_Player.x > x
                    {
                        image_xscale = 1;   
                    } else image_xscale = -1;

                    state = choose(21,22,23);
                    t = 0;
                } else  {
                            image_index = 1;
                            state = 1;
                            t = 0;
                        }
            }   
    }
}
#endregion 

#region Анимация

if hspd!= 0
{
    image_xscale  = sign(hspd); 
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

if state = 21
{
    sprite_index = spr_follower_grounded_attack_clap 
    image_speed = 0;
}

if state = 22
{
    sprite_index = spr_follower_grounded_attack_slam;
    image_speed = 0;
}

if state = 23
{
    sprite_index = spr_follower_grounded_attack_laser;
    image_speed = 0;
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

#region исчезновение

if y > room_height+200
{
    instance_destroy();
    fnc_msc_stop_play_slow();
}

#endregion