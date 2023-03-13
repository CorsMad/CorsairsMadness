/// @description Insert description here
// You can write your code in this editor
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

    	if !place_meeting(x,y+vspd, obj_block) && flip = 0
    	{
    		vspd +=0.1;	
    	}    
		
    #endregion
/*
0 - патруль
1 - поход к игроку
2 - удар щитом
3 - удар вокруг
4 - получение урона от автоатак
5 - стан
6 - получение урона от суперов
*/

if state = 0 // патруль 
{
		
}

if state = 1 // подход к игроку
{
	if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{	
			if obj_Player.x < x && abs(obj_Player.x - x) > 32
			{
				hspd = -1;
			}
		
			if obj_Player.x > x  && abs(obj_Player.x - x) > 32
			{
				hspd = 1;
			}	
			if collision_line(x,y-16,x+hspd*32,y-16,obj_block,false,false) vspd = -4;
			
			if ((abs(obj_Player.x - x) < 48) && (abs(obj_Player.y - y) < 8)) {state = choose(2,3);hspd = 0;vspd = 0;}
		}		
	}
}

if state = 2 // атака щитом по земле
{
	t++;
	if t = 100
	{
		t = 0;
		state = 1;	
	}
}

if state = 3 // круговая атака
{
	t++;
	if t = 100
	{
		t = 0;
		state = 1;	
	}
}

#region получение урона

if hit_cd!= 0 hit_cd++;
if hit_cd = 10 hit_cd = 0;

#region урон от добиваний

if (place_meeting(x,y,obj_hitbox_mask_finisher) || place_meeting(x,y,obj_hitbox_mask_finisher_down) || place_meeting(x,y,obj_hitbox_mask_finisher_forward) || place_meeting(x,y,obj_hitbox_mask_finisher_up) )&& hit_cd = 0
{
	hit_cd = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored+=4;
	}
	
}

#endregion

#region от атаки

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
	hit_cd = 1;
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }  
	if instance_exists(obj_masked_clone)
	{
		hit_stored++;
	}
}

#endregion

#region от дэша
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 
{
	hit_cd = 1;
	if instance_exists(obj_masked_clone)
	{
		hit_stored++;
	}
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_green_blood_forward()
}
#endregion

#endregion

#region урон от клона

if hit_stored > 0
{
	if obj_Player.isDead = 132
	{
		if hit_stored >= 14
		{
			hit_stored = 0;
			hit_cd = 1;
			state = 5;
			t = 0;
		} else {hit_stored = 0;t=0;hit_cd =1;}
	}
}

#endregion

#region СТАН
if state = 5
{
	t++;
	hspd = 0;
	if t = 200 
	{
		t = 0;
		state = 1;
	}
}
#endregion