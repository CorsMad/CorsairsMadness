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
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < 128 
        {
            state = 1;   
        }
    }    
	sprite_index = spr_molded_desert_berserker_idle;
    image_speed = 1;
}

if state = 1 // передвижение
{
    #region anim
    if hspd !=0 image_xscale = -sign(hspd);
    
    if place_meeting(x,y+1,obj_block)
    {
        if collision_line(x,y-16,x+fspd*18,y-16,obj_block,false,false) 
        {
            sprite_index = spr_molded_desert_berserker_jump
            image_speed = 0;
            image_index = 0;
        } else
        {
            sprite_index = spr_molded_desert_berserker_run;  
            image_speed = 1;
        }
        
    } else 
    {
        sprite_index = spr_molded_desert_berserker_jump;
        image_speed = 0;
        if vspd < 0 image_index = 1 else image_index = 2;
    }
    #endregion
    
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
			
			if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) {state = 2;hspd=0;fspd = 0;vspd = 0;
                sprite_index= spr_molded_desert_berserker_attack;image_speed = 0;image_index = 0;}
		}		
	}
}

if state = 2 // выстрел
{
    #region anim
    switch(t)
    {
        case 5:image_index = 1;break;   
        case 10:image_index = 2;break;
        case 45:image_index = 3;break;
        case 105:image_index = 5;break;
    }
    if t > 50 && t < 100
    {
        if t mod 2 = 0
        {
            var a_h = instance_create_depth(x,y,depth,obj_molded_lava_berserker_aoe);
            a_h.image_xscale = image_xscale;
            if image_index = 4 image_index = 3 else image_index = 4;   
        }
    }   
    #endregion
    t++;
	if t >= 125 
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
		if (abs(obj_Player.y-y) < 64) && place_meeting(x,y+1,obj_block) && state!=3 && (abs(obj_Player.x-x)>64) && state!=2
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
    image_speed = 0;
    sprite_index = spr_molded_desert_berserker_jump;
    image_index = 0;
    
    
    
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
    #region anim
    if !place_meeting(x,y+1,obj_block)
    {
        if vspd < 0 image_index = 1 else image_index = 2;   
    } else image_index = 0;
    #endregion
    
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
    sprite_index = spr_molded_desert_berserker_getdash
    image_speed = 0;
    #region anim
    if obj_Player.fspd > 0 image_xscale = 1 else image_xscale = -1;
    #endregion
    
    
	x = obj_Player.x;	
	y = obj_Player.y;	
	if !instance_exists(obj_hitbox_mask_superdash)
	{ 
        vspd = -4;
        if !place_meeting(x,y-1,obj_block) y-=1
        if image_xscale = 1 
        {
            hspd = -1 
            var d = instance_create_depth(x+7,y-16,depth-1,obj_sfx4);
            d.image_angle = 90;
        }else {
            hspd = 1; 
            var d = instance_create_depth(x-7,y-16,depth-1,obj_sfx4);
            d.image_angle = 270;
        }
        state = 10;
	}
}

#endregion


if state = 10 // подстан
{
    sprite_index = spr_molded_desert_berserker_take_dmg
    image_speed = 0;
    if hit_cd!=0 image_index = 1; else image_index =0;
    
   
    
    if place_meeting(x+hspd,y,obj_block) {hspd = -sign(hspd)*1;vspd = -2;}
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

if t_red !=0 {t_red++;image_blend = c_red};
if t_red = 5 {t_red = 0;image_blend = c_white};    


#region Добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*2;
	vspd = -2;
    t_red = 1;
    enemy_hp-=1;
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
    t_red = 1;
    enemy_hp-=1;
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
    t_red = 1;
    enemy_hp-=1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = 0;
    t_red = 1;
	if !place_meeting(x,y+1,obj_block) vspd = 6; else vspd = 6;
	bounce = 1;
    enemy_hp-=1;
}


#endregion

//Атака

if place_meeting(x,y,obj_hitbox_mask) && hit_cd=0
{
	hit_cd = 1;
	flip = 1;
    t_red = 1;
    enemy_hp-=1;
	if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }  
	if state=10 {hspd=0;fspd=0;t = 0;vspd= 0;}
}

//Dash

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
{
    enemy_hp-=1;
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    t_red = 1;
    obj_Player.dashing_timer_count = 1;
	if state = 10 {vspd = -1;hspd = sign(obj_Player.dir)*4;t = 0}; else
	if !place_meeting(x,y+1,obj_block) fspd = sign(obj_Player.dir)*4
	
}

if enemy_hp <= 0
{
    var death = instance_create_depth(x,y,depth,obj_molded_lava_berserker_death);
    death.image_xscale = image_xscale;
    instance_destroy();
}

if y > room_height+32 enemy_hp = 0
#endregion
