/// @description Insert description here
// You can write your code in this editor

if on = 1
{
    #region коллиз
        
		
    	if place_meeting(x+hspd, y, obj_block_flw)
    	{
        	while (!place_meeting(x+sign(hspd), y, obj_block_flw )) 
        	{
        		x+= sign(hspd);
        	}
            hspd = 0;   
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
		
    #endregion   
}

/*
0 - появление
1 - касание земли + начало разговора
2 - отпрыг
*/

switch(on)
{
    case 0:
    #region выкл
        image_speed = 0;
        if vspd < 0 image_index = 0; else image_index = 1;
        y+=vspd;
        vspd+=0.2;
        if vspd>0 && y>=start_y
        {
            y = start_y;
            on = 1;
            landed = 1;
        }
    #endregion   
        break;
    case 1:
    #region вкл
        switch(state)
        {
            case 0: // остановка
            #region anim
                if landed = 1 {landed_t++;};
                if landed_t = 20 {landed_t=0;landed=0;};
                if landed = 1{
                sprite_index = spr_boss_sp_jump;
                image_speed = 0;
                image_index = 2;
                } else
                {
                    sprite_index = spr_boss_sp_idle;
                    image_speed = 1;
                }
            #endregion
                        
            t++;
            if t = 50
            {
                hspd = 0;                
                t = 0;
                state = 1;
                if abs(obj_Player.x-x) < 48 {state = choose(2,3,4);hspd = 0;}
                
            }   
                break;
            case 1: // передвижение
                
                #region anim
                    if landed = 1 {landed_t++;};
                    if landed_t = 20 {landed_t=0;landed=0;};
                    if landed = 1 && place_meeting(x,y+1,obj_block_flw){
                        sprite_index = spr_boss_sp_jump;
                        image_speed = 0;
                        image_index = 2;
                    } 
                                        
                    if place_meeting(x,y+1,obj_block_flw) && landed = 0
                    {
                        if hspd = 0 {sprite_index = spr_boss_sp_idle;image_speed = 1;} else
                        {
                            sprite_index = spr_boss_sp_walk;
                            image_speed = 1;
                        }                       
                    }
                    
                    if place_meeting(x,y+1,obj_block_flw)
                    {
                        if obj_Player.x > x image_xscale = 1 else image_xscale = -1   
                    }
                    
                    if !place_meeting(x,y+1,obj_block_flw)
                    {
                        if vspd < 0 {sprite_index = spr_boss_sp_jump;image_speed =0 ;image_index = 0;}  
                        if vspd > 0 {sprite_index = spr_boss_sp_jump;image_speed =0 ;image_index = 1;}  
                    }
                    
                #endregion
                
                
                
                if place_meeting(x,y+1,obj_block_flw)
                {
                    if (abs(obj_Player.x-x) < 64 && landed = 0) {state = choose(2,3,4);hspd = 0;}
                    
                    if collision_line(x,y-16,x+hspd*32,y-16,obj_block_flw,false,false) {vspd = -5;jump = 1;};      
                }
                if jump = 0 
                {
                    if instance_exists(obj_Player)   
                    {
                        if (landed = 1 && place_meeting(x,y+1,obj_flying_molded)) hspd = 0 else
                        {                        
                            if abs(obj_Player.x-x) >128
                            {
                                if obj_Player.x > x hspd = 3 else hspd = -3;     
                            } else if obj_Player.x > x hspd = 2.5 else hspd = -2.5;          
                        }
                    }   
                }
                if jump = 1 {
                    landed = 1;
                    landed_t = 0;
                    if place_meeting(x,y+1,obj_block_flw) 
                    {                        
                        jump = 0
                    }
                }
                break;
            case 2: // атака1
                t++
                if obj_Player.x > x image_xscale = 1 else image_xscale = -1   
                #region anim
                switch(t)
                {
                    case 1: sprite_index = spr_boss_sp_bomb;image_speed = 0;image_index = 0;break;
                    case 5: image_index = 1;break;
                    case 45:image_index = 2;break;
                    case 50:image_index = 3;break;
                    case 55:image_index = 4;break;
                    case 60: image_index = 4;break;
                    case 65: image_index = 5;break;
                    case 75: image_index = 6;break;
                }   
                #endregion
                hspd = 0;
                if t = 60
                {
                    instance_create_depth(x,y-64,depth-1,obj_follower_snow_bomb);                    
                }
                if t=  80 {
                    t = 0;
                    state = 0;   
                }
                break;
            case 3: // атака2
                t++
                if obj_Player.x > x image_xscale = 1 else image_xscale = -1   
                #region anim
                
                switch(t)
                {
                    case 1: sprite_index = spr_boss_sp_shield_throw;image_speed = 0;image_index = 0;break;
                    case 5: image_index = 1;break;
                    case 10:image_index = 2;break;
                    case 15:image_index = 3;break;
                    case 20:image_index = 4;break;
                    case 55: image_index = 5;break;
                    case 59: image_index = 6;break;
                }
                
                #endregion
                
                hspd = 0;
                if t = 60
                {
                    var i = instance_create_depth(x+32*image_xscale,y-40,depth-1,obj_follower_snow_shiled);
                    i.origin = id; 
                    state = 3.25;
                    t = 0;
                }
                break;
            case 3.5:
                #region anim
                
                switch(t)
                {
                    case 1:image_index = 4;break;  
                    case 3:image_index = 5;break;  
                    case 10:image_index = 4;break;  
                    case 15:image_index = 3;break;  
                    case 20:image_index = 2;break;  
                    case 25:image_index = 1;break;  
                    case 29:image_index = 0;break;  
                }
                
                #endregion
                t++;
                hspd = 0;
                if t = 30
                {
                    t = 0;
                    state = 0;
                }
                break;
            case 4: // атака3
                t++;
                #region anim
                switch(t)
                {
                    case 1: sprite_index = spr_boss_sp_shieldattack;image_speed = 0;image_index = 0;break;
                    case 5: image_index = 1;break;
                    case 10: image_index = 2;break;
                    case 15: image_index = 3;break;
                    case 20: image_index = 4;break;
                    case 45: image_index = 5;break;
                    case 50: image_index = 6;break;
                    
                }
                #endregion
                hspd = 0;
                if t = 50 
                {
                    instance_create_depth(x-24,y,depth-1,obj_sfx4)
                    instance_create_depth(x+24,y,depth-1,obj_sfx4)
                    var w1 = instance_create_depth(x-24,y,depth-1,obj_molded_purple_wave)   
                    var w2 = instance_create_depth(x+24,y,depth-1,obj_molded_purple_wave)   
                    w1.hspd = -2;
                    w2.hspd = 2;   
                }
                if t = 60
                {
                    t = 0;
                    state = 0;
                }
                break;
                
                
        }
    #endregion 
        break;
}






