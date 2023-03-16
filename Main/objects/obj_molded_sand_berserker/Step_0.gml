/// @description Insert description here
// You can write your code in this editor
#region коллиз
        
if state !=5
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
1 - передвижение
2 - УДАР
3 - ожидание
4 - прыжок от dash
5 - несение от Dash
8 - урон от атак
9 - урон от дэша
10 - подстан
*/



if place_meeting(x,y+1,obj_block) isGrounded = 1 else isGrounded = 0;

if state = 0 //патруль
{
	
}

if state = 1 // передвижение
{
    hspd = fspd;
	if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{
			if obj_Player.x < x && abs(obj_Player.x - x) > 32
			{
				fspd = -2;
			}
		
			if obj_Player.x > x  && abs(obj_Player.x - x) > 32
			{
				fspd = 2;
			}	
			if collision_line(x,y-16,x+fspd*12,y-16,obj_block,false,false) vspd = -5;
			
			if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) {state = 2;hspd=0;fspd = 0;vspd = 0;}
		}		
	}
}

if state = 2 // выстрел
{
	if t < 120 t++;
	if t = 50 
	{

	}
	if t >= 100 
	{
		t = 0;
		state = 1;
	}
}

#region подпрыг от дэша

if instance_exists(obj_Player)
{
	if obj_Player.superdash_timer >= 30
	{
		if (abs(obj_Player.y-y) < 64) && place_meeting(x,y+1,obj_block) && state!=3 && (abs(obj_Player.x-x)>64)
		{
			t = 0;
			fspd = 0;
			hspd = 0;
			vspd = 0;
			state = 3;	
		}
	}
}


if state = 3 // прыжок
{
	if obj_Player.isDead = 12 && place_meeting(x,y+1,obj_block)
	{
		vspd = -8;
		y-=1;
		state = 3.5;
	}
	if obj_Player.superdash_timer = 0 && obj_Player.isDead!=12 
	{
		state = 1;	
	}
}

if state = 3.5 
{
	if place_meeting(x,y+1,obj_block)
	{
		if obj_Player.isDead!=12 state = 1; else state = 3;	
	}
}
#endregion

#region несение от superdash

if state!=5 && place_meeting(x,y,obj_hitbox_mask_superdash)
{
	state = 5;
	fspd = 0;
	hspd = 0;
	vspd = 0;
	t = 0;
}

if state = 5 
{
	x = obj_Player.x;	
	y = obj_Player.y;	
	if !instance_exists(obj_hitbox_mask_superdash)
	{
		state = 10;
		if obj_Player.dir = 1 hspd = -2 else hspd = 2;
		vspd = -4;		
	}
}

#endregion


if state = 10 // подстан
{
    if place_meeting(x+hspd,y,obj_block) {hspd = -sign(hspd)*1;vspd = -1;}
	if bounce = 1
	{
		bounce=0;	
		vspd = -4;
	}
	if place_meeting(x,y+1,obj_block)
	{
		
		hspd = 0;
		fspd = 0;
		t++;
		if t = 100 {t=0;state=1;}
	}
}

#region получение урона
if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if flip!=0 flip++;
if flip=10 flip=0;


#region Добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*2;
	vspd = -2;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = 0;
	vspd = -4;
	bounce = 1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	bounce = 1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = 0;
	if !place_meeting(x,y+1,obj_block) vspd = 6; else vspd = -2;
	bounce = 1;
}


#endregion


//Dash

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
{
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	if state = 10 {vspd = -1;hspd = sign(obj_Player.dir)*4;t = 0}; else
	if !place_meeting(x,y+1,obj_block) fspd = sign(obj_Player.dir)*4
	
}



//Атака

if place_meeting(x,y,obj_hitbox_mask) && hit_cd=0
{
	hit_cd = 1;
	flip = 1;
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.2;
    }  
	if state=10 {hspd=0;fspd=0;t = 0;vspd= 0;}
}


#endregion
