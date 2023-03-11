/// @description Insert description here
// You can write your code in this editor
#region коллиз
        
		if clouded = 0
		{
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
    		vspd +=0.2;	
    	}    
		}
    #endregion
/*
0 - патруль
1 - бег к игроку
2 - 3 атаки
3 - получение урона от атаки
4 - получение урона от дэша
5 - получение урона от облака
6 - получение урона от добиваний

*/
if state = 0 // юег к игроку
{
	
}

if state = 1 // бег к игроку
{
	if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{
			if obj_Player.x < x && abs(obj_Player.x - x) > 32
			{
				hspd = -3;
			}
		
			if obj_Player.x > x  && abs(obj_Player.x - x) > 32
			{
				hspd = 3;
			}	
			if collision_line(x,y-16,x+hspd*24,y-16,obj_block,false,false) vspd = -5;
			
			if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) {state = 2;hspd = 0;vspd = 0;}
		}		
	}
}

if state = 2 //3 атаки
{
	t++;
	if t = 150
	{
		state = 1;
		t = 0;
	}
}

#region получение урона#

if hit_cd!= 0 hit_cd++;
if hit_cd = 10 hit_cd = 0;

#region от добиваний

#region от обычного

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0 && vulnerable = 1
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	vspd = -2;
	y-=1;
    hspd = sign(obj_Player.dir)*2;
	state = 6;
	t_recover = 1;
}

#endregion

#region вперед
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0 && vulnerable = 1
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	hit_cd = 1;
	vspd = -3;
	y-=1;
    hspd = sign(obj_Player.dir)*5;
	state = 6;
	t_recover = 1;
}
#endregion

#region вверх
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0 && vulnerable = 1
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	vspd = -6;
	y-=1;
    hspd = 0;
	state = 6;
	t_recover = 1;
}
#endregion

#region вниз
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 && vulnerable = 1
{
	if !place_meeting(x,y+1,obj_block) vspd = 4; else
	{
		vspd = -3;
		y-=1;
	}
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
    hspd = 0;
	state = 6;
	t_recover = 1;
}
#endregion

if state = 6
{
	clouded = 0;
	cloud_timer = 0;
	if !place_meeting(x,y+1,obj_block)
	{
		if hspd!= 0 
		{
			if hspd > 0 && place_meeting(x+1,y,obj_block) hspd = -hspd;
			if hspd < 0 && place_meeting(x-1,y,obj_block) hspd = -hspd;
		}		
	} else hspd =0;
	if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && vulnerable = 1 && !place_meeting(x,y+1,obj_block)
	{
		clouded = 0;
		cloud_timer = 0;
		vspd = -1.8;
		hit_cd = 1;
		if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
	}
	if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 && vulnerable = 1
{
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_green_blood_forward()
    vspd = -3;
	y-=1;
    hspd = sign(obj_Player.dir)*3;
	state = 3;
	t_recover = 1;
}
	
	
	if place_meeting(x,y+1,obj_block) state = 3.5;
}

#endregion

#region от дэша
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 && vulnerable = 1
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_green_blood_forward()
    vspd = -3;
	y-=1;
    hspd = sign(obj_Player.dir)*3;
	state = 3;
	t_recover = 1;
}
#endregion

if state = 3 // после урона в воздухе
{
	if place_meeting(x,y+1,obj_block)
	{
		if t_recover!= 0 t_recover++;
		
		hspd = 0;
	}
	
	if t_recover = 50 
	{
		t_recover = 0;
		state = 1;
	}
}

if state = 3.5
{
	t_hit++;
	if t_hit = 50
	{
		t_hit = 0;
		state = 1;
	}
}

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && vulnerable = 1 && state != 6
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
	if !place_meeting(x,y+1,obj_block) && hspd!=0
	{
		t_recover= 1;
		hspd = -hspd;	
		state = 3;
	}
	if place_meeting(x,y+1,obj_block) {state =3.5; t_hit = 0;}
}

#endregion

#region от облака

if place_meeting(x,y,obj_teleport_cloud)
{
	state = 5;	
}

if state = 5
{
	hspd = 0;
	vspd = 0;
	clouded = 1;
	cloud_timer ++;
	if cloud_timer = 100 {cloud_timer = 0;clouded = 0;state = 3}
}



#endregion
