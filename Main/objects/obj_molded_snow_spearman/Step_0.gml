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
    		vspd +=0.2;	
    	}    

    #endregion
/*
0 - патруль
1 - преследование
2 - удар вперед
3 - отпрыг
4 - подлет от крыльев
5 - получение урона
*/

if state = 0
{
    
}

if state = 1 //преследование
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
			if collision_line(x,y-16,x+fspd*24,y-16,obj_block,false,false) vspd = -5;
			
			if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) {state = 2;fspd = 0;hspd = 0;vspd = 0;}
		}		
	}   
}

if state = 2 //удар вперед
{
    t++;
    if t = 50 {}//удар
    if t = 100 {t=0;state = 3;hspd = sign(image_xscale)*3;y-=1;vspd = -4};
}

if state = 3 // отпрыг
{
    if place_meeting(x+hspd,y,obj_block) {hspd = -sign(hspd)*1;}
    if place_meeting(x,y+1,obj_block) {hspd=0;fspd=0;t++;}
    if t = 50 {t=0;state=1;hspd =0;fspd=0;vspd=0;}
}

#region подлет

if place_meeting(x,y,obj_doublejump)
{
    state = 5;
    vspd = -6;
    if!place_meeting(x,y-1,obj_block) y-=1;
    fspd = 0;
    hspd = 0;
    t = 0;
    bounce = 1;
}

#endregion

#region получение урона

if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if flip!=0 flip++;
if flip=10 flip=0;

if state = 5
{
    if place_meeting(x+hspd,y,obj_block) hspd = -sign(hspd)*1;
    if place_meeting(x,y+1,obj_block)
    {
        hspd = 0;fspd = 0;
        if bounce = 1 {vspd=-2;bounce=0;} else t++;
        if t = 50 {t=0;hspd=0;vspd=0;fspd=0;state=1;}
    }
}


#region добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	hit_cd = 1;
    state = 5;
	t = 0;
	hspd = sign(obj_Player.dir)*2;
    if!place_meeting(x,y-1,obj_block) y-=1;
    vspd = -3;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	hit_cd = 1;
	state = 5;
    t = 0;
	vspd = -5;
    bounce = 1;
    if!place_meeting(x,y-1,obj_block) y-=1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	hit_cd = 1;
	state = 5;
    t = 0;
	hspd = sign(obj_Player.dir)*4;
    if!place_meeting(x,y-1,obj_block) y-=1;
    vspd = -3;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	hit_cd = 1;
    state = 5;
    t = 0;
    if place_meeting(x,y+1,obj_block) vspd = -3 else {vspd = 3;bounce = 1;}    
}

#endregion



if place_meeting(x,y,obj_hitbox_mask) && hit_cd=0
{
    hit_cd=1;
    if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.2;
    }  
    if state = 5 {flip = 1;vspd=0}
}

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd=0
{
    if!place_meeting(x,y-1,obj_block) y-=1;
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    hit_cd=1;
    if state = 5 {hspd = sign(obj_Player.dir)*4;vspd=-2}
}

#endregion