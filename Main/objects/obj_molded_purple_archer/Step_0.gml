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
1 - Ожидание 1
2 - прыжок + выстрел
3 - ожидание 2
4 - выстрел
5 - получение урона от атак
6 - получение урона от дэша
7 - стан от клонурона

*/

if t_attack!= 0 t_attack++;
if t_attack >= 80 {t_attack=0;instance_create_depth(x,y,depth-1,obj_molded_purple_archer_projectile)} //выстрел

if state = 0
{
	
}

if state = 1 // ожидание1
{
	t++;
	if t = 50
	{		
		t_attack = 1;
		t = 0;
		vspd = choose(-3,-4,-5);
		y-=1;
		if collision_line(x,y-16,x+128,y-16,obj_block,false,false) hspd = choose(-2,-3,-1); else
		if collision_line(x,y-16,x-128,y-16,obj_block,false,false) hspd = choose(1,2,3); else
		hspd = choose(-1,-2,-3,1,2,3);
		state = 2;
	}	
}

if state = 2 // прыжок и выстрел
{
	if!place_meeting(x,y+1,obj_block)
	{
		if place_meeting(x+hspd,y,obj_block) hspd = -hspd/2;	
	}
	if place_meeting(x,y+1,obj_block)
	{
		hspd = 0;	
	}
	if place_meeting(x,y+1,obj_block) && t_attack = 0
	{
	state = 3;	
	}
}

if state = 3 // ожидание 2
{
	t++;
	if t >= 50
	{
		t = 0;
		state = 4;
		t_attack = 1;
	}
	
}

if state = 4 // выстрел на месте
{
	if t_attack = 0
	{
		state = 1;	
	}
}

#region получние урона

if hit_cd!=0 hit_cd ++;
if hit_cd = 10 hit_cd = 0;

if flip!=0 flip++;
if flip = 10 flip = 0;

#region от Дэша

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd=0
{
	if instance_exists(obj_masked_clone) hit_stored++;
	hit_cd = 1;
	state = 6
	t = 0;
	t_attack = 0;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	bounce = 1;
	hspd = sign(obj_Player.dir)*4;
	if place_meeting(x,y+1,obj_block) 
	{		
		vspd = -2;
		y-=1;
	}
}

if state = 6
{
	if place_meeting(x+hspd,y,obj_block)
	{
		hspd = -sign(hspd);	
	}
	if place_meeting(x,y+1,obj_block) 
	{
		if bounce = 1
		{
			bounce = 0;
			vspd = -2;
			hspd = 0;
		}  else {hspd = 0;state = 6.5;t=0;}
	}
}

if state = 6.5
{
	t++;	
	if t= 50
	{
		t = 0;
		state = 1;
	}
}

#endregion

#region от добиваний

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
	hspd = sign(obj_Player.dir)*2;
	vspd = -2;
	if place_meeting(x,y+1,obj_block) y-=1;
	//bounce = 1;
	state = 6;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	if place_meeting(x,y+1,obj_block) y-=1;
	//bounce = 1;
	state = 6;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
	//hspd = sign(obj_Player.dir)=2;
	vspd = -4;
	if place_meeting(x,y+1,obj_block) y-=1;
	bounce = 1;
	state = 6;
}
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored+=4;
	hit_cd = 1;
	//hspd = sign(obj_Player.dir)=2;
	if !place_meeting(x,y+1,obj_block)
	{
		vspd = 6;bounce =1;
	} else vspd = -2;
	
	bounce = 1;
	state = 6;
}

#endregion

#region обычная атака
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
	if instance_exists(obj_masked_clone) hit_stored++;
	hit_cd = 1;
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.2;
    }  
	if state = 6 {vspd = 0;hspd = 0;flip = 1;}
}
#endregion

#region клонаатк

if obj_Player.isDead = 132
{
	if hit_stored >=14
	{
		hit_stored = 0;
		state = 7;
		hspd = 0;
		vspd = 0;
		hit_stored = 0;
		t = 0;
		t_attack = 0;
	} else hit_stored = 0
}

if state = 7
{
	t++;
	if t >= 200 && place_meeting(x,y+1,obj_block)
	{
		t = 0;	
		state = 2;
	}
}


#endregion




#endregion